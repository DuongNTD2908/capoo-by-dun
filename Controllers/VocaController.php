<?php
session_start();
require_once "../Models/Voca.php";

class VocaController
{
    private $vocaModel;

    public function __construct()
    {
        $this->vocaModel = new Voca();
    }

    public function getAllVocabs()
    {
        $vocabs = $this->vocaModel->getAllVocabs();
        $_SESSION['vocabs'] = is_array($vocabs) ? $vocabs : [];
        $topics = $this->vocaModel->getAllTopics();
        $_SESSION['topics'] = is_array($topics) ? $topics : [];

        header('Location: PronController.php');
        exit();
    }

    public function getToeicVocabs()
    {
        $toeicVocabs = $this->vocaModel->getVocabsByTopic('TOEIC');
        $_SESSION['toeic_vocabs'] = $toeicVocabs;
        
        header('Location: ../Views/tuvung.php');
        exit();
    }

    public function handleSearch()
    {
        $searchTerm = isset($_GET['search']) ? trim($_GET['search']) : '';
        $searchResults = [];

        if (!empty($searchTerm)) {
            $searchResults = $this->vocaModel->searchVocabs($searchTerm);
        }

        $_SESSION['search_results'] = $searchResults;
        $_SESSION['search_term_current'] = $searchTerm;

        header('Location: ../Views/tuvung.php');
        exit();
    }

    public function handleSuggestVocabs()
    {
        $searchTerm = isset($_GET['q']) ? trim($_GET['q']) : '';
        $suggestions = [];

        if (!empty($searchTerm)) {
            $suggestions = $this->vocaModel->getVocabSuggestions($searchTerm);
        }

        header('Content-Type: application/json');
        echo json_encode($suggestions);
        exit();
    }
}

$controller = new VocaController();

if (isset($_GET['action'])) {
    if ($_GET['action'] == 'show_toeic_vocabs') {
        $controller->getToeicVocabs();
    } elseif ($_GET['action'] == 'search') {
        $controller->handleSearch();
    } elseif ($_GET['action'] == 'suggest_vocabs') {
        $controller->handleSuggestVocabs();
    }
} else {
    $controller->getAllVocabs();
}