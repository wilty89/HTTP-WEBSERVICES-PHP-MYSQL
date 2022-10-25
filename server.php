<?php

header( 'Content-Type: application/json' );

$dbhost='localhost';
$dbuser='root';
$dbpass='';
$dbname='prueba';

$con = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
$query="SELECT * FROM items";

    $run=mysqli_query($con,$query);
    
        while($row=mysqli_fetch_array($run))
        {
               
    $id=$row[0];
    $name=$row[1];
    $description=$row[2];
    $price=$row[3];

    $result[] = array(
		 
		'id' => $id,
        'name' => $name,
        'description'=>$description,
		
        );
        
        }
        http_response_code(200);
        //echo json_encode($result); 



$allowedResourceTypes = [
	'books',
	'authors',
	'genres',
	'result'
];
//http://localhost:8000/result/
///http://localhost/platzi/server.php?libros=books
//cd htdocs/api php
//php -S localhost:8000 server.php
//php -S localhost:8000 router.php
//http://localhost:8000/books/1
$resourceType = $_GET['resource_type'];
if ( !in_array( $resourceType, $allowedResourceTypes ) ) {
	http_response_code( 400 );
	echo json_encode(
		[
			'error' => "$resourceType is un unkown",
		]
	);
	
	die;
}

$books = [
	1 => [
		'titulo' => 'Lo que el viento se llevo',
		'id_autor' => 2,
		'id_genero' => 2,
	],
	2 => [
		'titulo' => 'La Iliada',
		'id_autor' => 1,
		'id_genero' => 1,
	],
	3 => [
		'titulo' => 'La Odisea',
		'id_autor' => 1,
		'id_genero' => 1,
	],
];
//curl http://localhost:8000/?resource_type=books&resource_id=1
//http://localhost/platzi/server.php?libros=books&resource_id=3
$resourceId = array_key_exists('resource_id', $_GET ) ? $_GET['resource_id'] : '';
$method = $_SERVER['REQUEST_METHOD'];

switch ( strtoupper( $method ) ) {
	case 'GET':
		if ( "result" !== $resourceType ) {
			http_response_code( 404 );

			echo json_encode(
				[
					'error' => $resourceType.' not yet implemented :(',
				]
			);

			die;
		}

		if ( !empty( $resourceId ) ) {
			if ( array_key_exists( $resourceId, $result ) ) {
				echo json_encode(
					$result[ $resourceId ]
				);
			} else {
				http_response_code( 404 );

				echo json_encode(
					[
						'error' => 'Book '.$resourceId.' not found :(',
					]
				);
			}
		} else {
			echo json_encode(
				$result
			);
		}

		die;
		
		break;
		//curl -X 'POST' http://localhost:8000/books -d '{ "titulo":"Nuevo libro","id_autor": 1,"id_genero": 2 }'
	case 'POST':
		$json = file_get_contents( 'php://input' );

		$books[] = json_decode( $json, true );

		echo array_keys($books)[count($books)-1];
		echo json_encode( $books );
		break;
	case 'PUT':
		if ( !empty($resourceId) && array_key_exists( $resourceId, $books ) ) {
			$json = file_get_contents( 'php://input' );
			
			$books[ $resourceId ] = json_decode( $json, true );

			echo $resourceId;
		}
		break;
	case 'DELETE':
		if ( !empty($resourceId) && array_key_exists( $resourceId, $books ) ) {
			unset( $books[ $resourceId ] );
		}
		break;
	default:
		http_response_code( 404 );

		echo json_encode(
			[
				'error' => $method.' not yet implemented :(',
			]
		);

		break;
}