<?php
//https://api.telegram.org/bot 6418894941:AAH7oM2qenE0QdTImTZiLGKUgdXfCGcxZWI/setWebhook?url=https://checkscamuytin.site/bot.php
$data = file_get_contents('php://input');
require_once "include/Bottele.php";
$bot = new Bot('6418894941:AAH7oM2qenE0QdTImTZiLGKUgdXfCGcxZWI');
$json = json_decode($data, true);
if (isset($json['message']['text'])) {
    $message = $json['message']['text'];
    $chatId = $json['message']['chat']['id'];
    $messageId = $json['message']['message_id'];
    $userId = $json['message']['from']['id'];
    $isAdmin = ($userId == 6695343281);
    $groupId = '-4233633540';
    require_once 'vendor/autoload.php';
    $dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
    $dotenv->load();
    $dbHost = $_ENV['DB_HOST'];
    $dbName = $_ENV['DB_NAME'];
    $dbUser = $_ENV['DB_USER'];
    $dbPassword = $_ENV['DB_PASSWORD'];
    try {
        $pdo = new PDO("mysql:host=$dbHost;dbname=$dbName;charset=utf8", $dbUser, $dbPassword);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        die("Lỗi kết nối cơ sở dữ liệu: " . $e->getMessage());
    }
    $messageWithoutSpaces = str_replace(' ', '', $message);
    if ($isAdmin && isset($json['message']['text'])) {
    $adminCommand = strtolower($json['message']['text']);
      if ($adminCommand == '/kiemtra') {
    $queryCards = "SELECT COUNT(*) as cardCount FROM `cards`";
    $stmtCards = $pdo->query($queryCards);
    $cardCount = $stmtCards->fetchColumn();
    $queryTickets = "SELECT COUNT(*) as ticketCount FROM `ticket` WHERE `status` = 'xuly'";
    $stmtTickets = $pdo->query($queryTickets);
    $ticketCount = $stmtTickets->fetchColumn();
    $queryScam = "SELECT COUNT(*) as ticketCount FROM `ticket` WHERE `status` = 'scam'";
    $stmtScam = $pdo->query($queryScam);
    $scamCount = $stmtScam->fetchColumn();
    $notificationText = 'BOT TLD CẬP NHẬT DỮ LIỆU HIỆN CÓ 🔥' . PHP_EOL .
                       '🎖 <strong><u>' . $scamCount . '</u></strong> stk, sđt scam' . PHP_EOL .
                       '🎖 <strong><u>' . $cardCount . '</u></strong> hồ sơ uy tín' . PHP_EOL .
                       '🎖 <strong><u>' . $ticketCount . '</u></strong> đơn tố cáo đang chờ phê duyệt.' . PHP_EOL .
                       '🔎 Gửi "<strong><u>Sđt, Stk, Link Facebook</u></strong>" của người giao dịch vào nhóm. Bot sẽ auto check & trả lời. Giúp bạn an toàn hơn khi mua bán online !!';

    $bot->sendMessage($groupId, $notificationText, null, 'HTML');
}

    if (strpos($adminCommand, '/thongbao') === 0) {
        $notificationText = trim(str_replace('/thongbao', '', $adminCommand));
        if (!empty($notificationText)) {
            $bot->sendMessage($groupId, $notificationText, null, 'HTML');
        } else {
            $bot->sendMessage($userId, 'Vui lòng nhập nội dung thông báo:/thongbao +  nội dung', null, 'HTML');
        }
    }
}
    if (filter_var($message, FILTER_VALIDATE_URL) && (strpos($message, 'facebook.com') !== false || strpos($message, 'www.facebook.com') !== false)) {
        $linkQuery = "SELECT * FROM cards WHERE linkfb = :linkToCheck";
        $linkStmt = $pdo->prepare($linkQuery);
        $linkStmt->bindParam(':linkToCheck', $message);
        $linkStmt->execute();
        $linkRows = $linkStmt->fetchAll(PDO::FETCH_ASSOC);
        if (!empty($linkRows)) {
            $responseText = "🕵 Fb Real : \"" . $linkRows[0]['username'] . "\"\n⭐️ GDV Tại checkscamuytin.site\n";
            foreach ($linkRows as $row) {
                $responseText .= "🎖 https://checkscamuytin.site/user” . $row['code'] . "\n";
            }
            $bot->sendMessage($chatId, $responseText, $messageId, null, 'HTML');
        } else {
            $queryPos = strpos($message, '?');
            if ($queryPos !== false) {
                $linkWithoutQuery = substr($message, 0, $queryPos);
                $linkStmt->bindParam(':linkToCheck', $linkWithoutQuery);
                $linkStmt->execute();
                $linkRows = $linkStmt->fetchAll(PDO::FETCH_ASSOC);
                if (!empty($linkRows)) {
                    $responseText = "🕵 Link Real : \"" . $linkRows[0]['username'] . "\"\n⭐️ GDV Tại checkscamuytin.site\n";
                    foreach ($linkRows as $row) {

                    }
                    $bot->sendMessage($chatId, $responseText, $messageId, null, 'HTML');
                } else {
                    $idMatches = [];
                    if (preg_match('/[&?]id=(\d+)/', $message, $idMatches)) {
                        $idToCheck = $idMatches[1];
                        $idQuery = "SELECT * FROM cards WHERE id_fb = :idToCheck";
                        $idStmt = $pdo->prepare($idQuery);
                        $idStmt->bindParam(':idToCheck', $idToCheck);
                        $idStmt->execute();
                        $idRows = $idStmt->fetchAll(PDO::FETCH_ASSOC);
                        if (!empty($idRows)) {
                            $responseText = "🕵 Fb Real : \"" . $idRows[0]['username'] . "\"\n⭐️ GDV Tại                        $responseText .= "🎖 https://checkscamuytin.site/user\n";
                            foreach ($idRows as $row) {
                                $responseText .= "🎖 https://checkscamuytin.site/user" . $row['code'] . "\n";
                            }
                            $bot->sendMessage($chatId, $responseText, $messageId, null, 'HTML');
                        } else {
                            $bot->sendMessage($chatId, "🕵️ Chưa xác định.\n🕵️ Không phải GDV checkscamuytin.site\n⚠️ Hãy trung gian khi giao dịch Online.", $messageId, null, 'HTML');
                        }
                    } else {
                        $bot->sendMessage($chatId, "🕵️ Chưa xác định.\n🕵️ Không phải GDV checkscamuytin.site\n⚠️ Hãy trung gian khi giao dịch Online.", $messageId, null, 'HTML');
                    }
                }
            } else {
                $bot->sendMessage($chatId, "🕵️ Chưa xác định.\n🕵️ Không phải GDV checkscamuytin.site\n⚠️ Hãy trung gian khi giao dịch Online.", $messageId, null, 'HTML');
            }
        }
    } 
    if (filter_var($message, FILTER_VALIDATE_URL) && (strpos($message, 'checkscamuytin.site') !== false)) {
    $profileUrlParts = explode('/trust-service/', $message);
    if (count($profileUrlParts) == 2) {
        $codeToCheck = $profileUrlParts[1];
        
        $linkQuery = "SELECT * FROM cards WHERE code = :codeToCheck";
        $linkStmt = $pdo->prepare($linkQuery);
        $linkStmt->bindParam(':codeToCheck', $codeToCheck);
        $linkStmt->execute();
        $linkRows = $linkStmt->fetchAll(PDO::FETCH_ASSOC);
        
        if (!empty($linkRows)) {
            $responseText = "🕵 Link Real : \"" . $linkRows[0]['username'] . "\"\n⭐️ GDV Tại checkscamuytin.site\n";
            foreach ($linkRows as $row) {
                $responseText .= "🔖 https://" . $row['code'] . "\n";
            }
            $bot->sendMessage($chatId, $responseText, $messageId, null, 'HTML');
        } else {
            $bot->sendMessage($chatId, "🕵 Đây Không Phải LINK GDV của checkscamuytin.site\n ⚠️ Hãy trung gian khi giao dịch để tránh bị scam !", $messageId, null, 'HTML');
        }
    } else {
        $bot->sendMessage($chatId, "🕵 Không Phải Link GDV của checkscamuytin.site", $messageId, null, 'HTML');
    }
} 
    elseif (ctype_digit($messageWithoutSpaces) && strpos($message, ' ') === false) {
        $query = "SELECT * FROM ticket WHERE sdt = :message OR stk = :message";
        $stmt = $pdo->prepare($query);
        $stmt->bindParam(':message', $message);
        $stmt->execute();
        $responseText = "🕵$message Chưa có tố cáo nào...✍";
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        if (!empty($rows)) {
            $responseText = "🕵 $message Đã có người tố cáo ‼\n";
            foreach ($rows as $row) {
                $responseText .= "⚡️https://checkscamuytin.site/scam/" . $row['code'] . "\n⚠️Hãy cảnh giác với stk, sđt này !!!";
            }
        }
        $bot->sendMessage($chatId, $responseText, $messageId, null, 'HTML');
    } 
}
?>
