# INTERACTIVE QUIZ WEBSITE

## Pengenalan
Selamat dating di website Quiz Interaktif! Projek ini adalah projek akhir mata kuliah Pemrograman Web. 
Website ini di desain untuk bersenang-senang untuk mengerjakan sebuah kuis untuk mengetes pengetahuan Anda!

### Fitur 
- Multiple Categories : Memiliki beberapa kategori soal misalnya seperti sains, sejarah, dan masih banyak lagi.
- Dynamic Questions : Soal diambil secara dinamis tanpa harus mengganti codebase.
- Scoring System : Ada sistem ranking untuk setiap user.
- Timer : Terdapat timer untuk setiap pertanyaan.

### Menggunakan Bahasa Pemrograman 
- Frontend : HTML, CSS, JavaScript
- Database : MySQL phpMyAdmin

### Instalasi Untuk Membuka Website Secara Lokal Di Komputer Anda
Ikuti langkah-langkah berikut untuk mengatur proyek di komputer Anda secara lokal:
1.  **Clone Repository**
    
    ```
    git clone https://github.com/adityauzi/uaswebpro3v2.git
    cd interactive-quiz
    ```
    
2.  **Atur XAMPP**
    
    -   Instal [XAMPP](https://www.apachefriends.org/index.html) di komputer Anda.
        
    -   Jalankan modul Apache dan MySQL dari kontrol panel XAMPP.
        
    -   Pindahkan folder proyek ke direktori `htdocs` di dalam direktori instalasi XAMPP.
        
3.  **Impor Database**
    
    -   Buka `phpMyAdmin` dengan mengakses `http://localhost/phpmyadmin` di browser Anda.
        
    -   Buat database baru (misalnya, `quiz_database`).
        
    -   Impor file SQL yang disediakan (`database/quiz_database.sql`) ke dalam database baru.
        
4.  **Konfigurasi Aplikasi**
    
    -   Buka file konfigurasi proyek (misalnya, `config.php`) dan perbarui detail koneksi database:
        
        ```
        $host = 'localhost';
        $user = 'root';
        $password = ''; // Biarkan kosong jika menggunakan pengaturan default XAMPP
        $database = 'quiz_database';
        ```
        
5.  **Akses Situs Web** Buka browser Anda dan akses `http://localhost/interactive-quiz`.

### Cara menggunakan 
- Pilih kategori kuis
- Jawab setiap pertanyaan dalam batas waktu yang tertera 
- Jika sudah selesai lihat skor Anda dan bagikan kepada teman Anda! :D 

### Contact 
Untuk pertanyaan atau saran, silakan hubungi kami
- GitHub : R4fii, adityauzi
