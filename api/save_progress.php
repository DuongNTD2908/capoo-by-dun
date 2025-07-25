<?php
session_start();
require_once '../Controllers/SaveProgressController.php';

$controller = new SaveProgressController();
$controller->handle();