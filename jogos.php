<?php
// Configuração de conexão com o MySQL
$host     = 'localhost';
$username = 'chinav2';
$password = 'chinav2chinav2';
$dbname   = 'chinav2';

$mysqli = new mysqli($host, $username, $password, $dbname);
if ($mysqli->connect_errno) {
    die("Falha ao conectar ao MySQL: " . $mysqli->connect_error);
}
// Define o charset para suportar todos os caracteres Unicode
$mysqli->set_charset("utf8mb4");

// Define a URL da API
$apiUrl = "https://igamewin.com/api/v1";

// Define os dados que serão enviados via POST
$postData = [
    "method"        => "game_list",
    "agent_code"    => "codexpay",
    "agent_token"   => "eadf3d25eea811eea810a6f7d941cc65",
    "provider_code" => "slot-dreamtech"
];

// Converte os dados para JSON
$jsonData = json_encode($postData);

// Inicializa o cURL e configura as opções
$ch = curl_init($apiUrl);
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
curl_setopt($ch, CURLOPT_POSTFIELDS, $jsonData);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_HTTPHEADER, [
    'Content-Type: application/json',
    'Content-Length: ' . strlen($jsonData)
]);

// Executa a requisição e obtém a resposta
$response = curl_exec($ch);
if ($response === false) {
    die("Erro no cURL: " . curl_error($ch));
}
curl_close($ch);

// Decodifica o JSON retornado
$apiResponse = json_decode($response, true);

// Verifica se a API retornou sucesso e contém jogos
if (isset($apiResponse['status']) && $apiResponse['status'] == 1 && isset($apiResponse['games'])) {
    $games = $apiResponse['games'];
    
    foreach ($games as $game) {
        // Escapa os valores para evitar SQL injection
        $game_code = $mysqli->real_escape_string($game['game_code']);
        $game_name = $mysqli->real_escape_string($game['game_name']);
        $banner    = $mysqli->real_escape_string($game['banner']);
        $status    = (int)$game['status'];
        
        // Valores fixos conforme solicitado
        $provider     = 'slot-dreamtech';
        $popular      = 1;
        $type         = 'slot';
        $game_type    = 3;
        $distribution = 'igamewin';
        
        // Monta a query INSERT com ON DUPLICATE KEY UPDATE
        $sql = "INSERT INTO games (game_code, game_name, banner, status, provider, popular, type, game_type, distribution)
                VALUES ('$game_code', '$game_name', '$banner', $status, '$provider', $popular, '$type', $game_type, '$distribution')
                ON DUPLICATE KEY UPDATE
                    game_name    = VALUES(game_name),
                    banner       = VALUES(banner),
                    status       = VALUES(status),
                    provider     = VALUES(provider),
                    popular      = VALUES(popular),
                    type         = VALUES(type),
                    game_type    = VALUES(game_type),
                    distribution = VALUES(distribution)";
        
        if (!$mysqli->query($sql)) {
            echo "Erro ao inserir/atualizar o jogo com game_code $game_code: " . $mysqli->error . "\n";
        } else {
            echo "Jogo com game_code $game_code inserido/atualizado com sucesso!<br>";
        }
    }
} else {
    echo "Erro: API retornou erro ou nenhum jogo foi encontrado.";
}

// Fecha a conexão com o MySQL
$mysqli->close();
?>
