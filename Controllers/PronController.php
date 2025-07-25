<?php
session_start();

require_once __DIR__ . '/../Models/Pron.php';

class PronController {
    private $pronModel;

    public function __construct() {
        $this->pronModel = new Pron();
    }

    public function getAllPronunciations() {
        $pronunciations = $this->pronModel->getAllPronoune();
        $_SESSION['pronunciations_data'] = is_array($pronunciations) ? $pronunciations : [];
        header('Location: UserController.php');
        exit();
    }

    public function getPronunciationsByKind($kind) {
        $pronunciations = $this->pronModel->getPronouneByKind($kind);
        $_SESSION['pronunciations_data'] = is_array($pronunciations) ? $pronunciations : [];
        header('Location: ../Views/phatam.php');
        exit();
    }
}
$controller = new PronController();
$controller->getAllPronunciations();
