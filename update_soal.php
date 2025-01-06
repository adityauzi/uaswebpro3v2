<?php
session_start();
include_once 'dbConnection.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $eid = $_POST['eid'];
    $response = ['success' => false, 'message' => ''];

    try {
        mysqli_begin_transaction($con);

        if (isset($_POST['soal'])) {
            foreach ($_POST['soal'] as $qid => $question) {
                $question = mysqli_real_escape_string($con, $question);
                mysqli_query($con, "UPDATE questions SET qns='$question' WHERE qid='$qid'");
            }
        }

        if (isset($_POST['options'])) {
            foreach ($_POST['options'] as $qid => $options) {
                $option_query = mysqli_query($con, "SELECT optionid FROM options WHERE qid='$qid' ORDER BY optionid");
                $i = 0;
                while ($option_row = mysqli_fetch_assoc($option_query)) {
                    if (isset($options[$i])) {
                        $option = mysqli_real_escape_string($con, $options[$i]);
                        mysqli_query($con, "UPDATE options SET option='$option' WHERE optionid='{$option_row['optionid']}'");
                    }
                    $i++;
                }
            }
        }
        if (isset($_POST['sn'])) {
            foreach ($_POST['sn'] as $qid => $optionid) {
                // Reset semua sn untuk pertanyaan ini ke 0
                mysqli_query($con, "UPDATE options SET sn=0 WHERE qid='$qid'");
                // Set sn untuk option yang dipilih ke 1
                mysqli_query($con, "UPDATE options SET sn=1 WHERE optionid='$optionid'");
            }
        }

        mysqli_commit($con);
        $response['success'] = true;
        $response['message'] = 'Perubahan berhasil disimpan';
        
    } catch (Exception $e) {
        mysqli_rollback($con);
        $response['message'] = 'Gagal menyimpan perubahan: ' . $e->getMessage();
    }

    echo json_encode($response);
    exit;
}
?>