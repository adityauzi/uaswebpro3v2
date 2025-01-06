<?php
session_start();
include_once 'dbConnection.php';

if (!isset($_SESSION['email'])) {
   header("location: index.php");
   exit;
}

$eid = $_GET['eid'];
$quiz_query = mysqli_query($con, "SELECT * FROM quiz WHERE eid='$eid'") or die('Error: ' . mysqli_error($con)); 
$quiz_data = mysqli_fetch_assoc($quiz_query);
$questions_query = mysqli_query($con, "SELECT * FROM questions WHERE eid='$eid'") or die('Error: ' . mysqli_error($con));
?>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Edit Soal</title>
   <style>
       body {
           font-family: Arial, sans-serif;
           background-color: #f4f4f4;
           margin: 0;
           padding: 20px;
       }
       .container {
           max-width: 800px;
           margin: 0 auto;
           background: #fff;
           padding: 20px;
           border-radius: 8px;
           box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
       }
       h1 {
           text-align: center;
           color: #333;
       }
       table {
           width: 100%;
           border-collapse: collapse;
           margin-bottom: 20px;
       }
       table, th, td {
           border: 1px solid #ddd;
       }
       th, td {
           padding: 10px;
           text-align: left;
       }
       th {
           background-color: #f8f9fa;
       }
       input[type="text"], select {
           width: 100%;
           padding: 8px;
           box-sizing: border-box;
           border: 1px solid #ccc;
           border-radius: 4px;
           margin-bottom: 10px;
       }
       input[type="submit"] {
           background-color: #28a745;
           color: white;
           padding: 10px 20px;
           border: none;
           border-radius: 4px;
           cursor: pointer;
           font-size: 16px;
       }
       input[type="submit"]:hover {
           background-color: #218838;
       }
       .question-block {
           margin-bottom: 20px;
           padding: 15px;
           background-color: #f9f9f9;
           border-radius: 8px;
           border: 1px solid #ddd;
       }
       .question-block h3 {
           margin-top: 0;
           color: #333;
       }
       .alert {
           padding: 15px;
           margin-bottom: 20px;
           border-radius: 4px;
       }
       .success {
           background-color: #d4edda;
           color: #155724;
       }
       .error {
           background-color: #f8d7da;
           color: #721c24;
       }
       .button-group {
           margin-top: 20px;
           text-align: center;
       }
       .btn {
           display: inline-block;
           padding: 10px 20px;
           text-decoration: none;
           background: #6c757d;
           color: white;
           border-radius: 4px;
           margin-left: 10px;
       }
       .answer-select {
           margin-top: 10px;
           padding: 10px;
           background-color: #e9ecef;
           border-radius: 4px;
       }
       .answer-select label {
           display: block;
           margin-bottom: 5px;
           font-weight: bold;
       }
   </style>
</head>
<body>
   <div class="container">
       <?php if(isset($_SESSION['message'])): ?>
           <div class="alert <?php echo $_SESSION['status']; ?>">
               <?php 
                   echo $_SESSION['message'];
                   unset($_SESSION['message']);
                   unset($_SESSION['status']);
               ?>
           </div>
       <?php endif; ?>

       <h1>Edit Soal Kuis: <?php echo htmlspecialchars($quiz_data['title']); ?></h1>
       <form action="update_soal.php" method="post">
           <input type="hidden" name="eid" value="<?php echo $eid; ?>">
           <?php while ($question = mysqli_fetch_assoc($questions_query)) : ?>
               <div class="question-block">
                   <h3>Soal:</h3>
                   <input type="text" name="soal[<?php echo $question['qid']; ?>]" value="<?php echo htmlspecialchars($question['qns']); ?>">
                   <h3>Opsi Jawaban:</h3>
                   <?php
                   $qid = $question['qid'];
                   $options_query = mysqli_query($con, "SELECT * FROM options WHERE qid='$qid'") or die('Error: ' . mysqli_error($con));
                   $option_index = 0;
                   $letters = ['a', 'b', 'c', 'd'];
                   while ($option = mysqli_fetch_assoc($options_query)) : ?>
                       <label>Opsi <?php echo strtoupper($letters[$option_index]); ?>:</label>
                       <input type="text" name="options[<?php echo $qid; ?>][]" value="<?php echo htmlspecialchars($option['option']); ?>">
                       <?php $option_index++; ?>
                   <?php endwhile; ?>
                   
                   <div class="answer-select">
                       <label>Pilih Jawaban Benar:</label>
                       <select name="sn[<?php echo $qid; ?>]">
                           <option value="a" <?php echo ($question['sn'] == 'a') ? 'selected' : ''; ?>>A</option>
                           <option value="b" <?php echo ($question['sn'] == 'b') ? 'selected' : ''; ?>>B</option>
                           <option value="c" <?php echo ($question['sn'] == 'c') ? 'selected' : ''; ?>>C</option>
                           <option value="d" <?php echo ($question['sn'] == 'd') ? 'selected' : ''; ?>>D</option>
                       </select>
                   </div>
               </div>
           <?php endwhile; ?>
           <div class="button-group">
               <input type="submit" value="Simpan" name="submit">
               <a href="dash.php" class="btn">Kembali</a>
           </div>
       </form>
   </div>

   <script>
       document.querySelector('form').addEventListener('submit', function(e) {
           e.preventDefault();
           const formData = new FormData(this);
           
           fetch('update_soal.php', {
               method: 'POST',
               body: formData
           })
           .then(response => response.json())
           .then(data => {
               if(data.success) {
                   window.location.href = 'dash.php';
               } else {
                   alert(data.message || 'Gagal menyimpan perubahan');
               }
           })
           .catch(error => {
               alert('Terjadi kesalahan');
               console.error(error);
           });
       });
   </script>
</body>
</html>