<?php
//php prueba.php
echo file_get_contents("https://jsonplaceholder.typicode.com/todos/1").PHP_EOL;


$json= file_get_contents("https://jsonplaceholder.typicode.com/todos/1").PHP_EOL;
$data= json_decode($json, true);
echo $data['title'].PHP_EOL;

?>