<?php
error_reporting(0);
header("Access-Control-Allow-Origin: *"); // Allow cross-origin requests
include_once("dbconnect.php");

if (!isset($_POST['work_id']) || !isset($_POST['user_id']) || !isset($_POST['submission_text'])) {
    $response = array('status' => 'failed', 'data' => null);
    sendJsonResponse($response);
    die;
}

$workid = $_POST['work_id'];
$userid = $_POST['user_id'];
$submission = $_POST['submission_text'];

$sqlinsert = "INSERT INTO `tbl_submissions`(`work_id`, `user_id`, `submission_text`) 
              VALUES ('$workid', '$userid', '$submission')";

if ($conn->query($sqlinsert) === TRUE) {
    $response = array('status' => 'success', 'data' => null);
    sendJsonResponse($response);
} else {
    $response = array('status' => 'failed', 'data' => null);
    sendJsonResponse($response);
}

function sendJsonResponse($sentArray)
{
    header('Content-Type: application/json');
    echo json_encode($sentArray);
}
?>
