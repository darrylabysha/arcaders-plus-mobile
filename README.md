# Arcaders Plus - Tugas Flutter PBP

Jawaban soal Tutorial CheckList
Darryl Abysha Artapradana Subiyanto
2206082846 - E

## Tugas 9

1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

    Kita bisa membaca data JSON dan mengubahnya menjadi objek Python tanpa membuat model terlebih dahulu. Dalam bahasa pemrograman seperti Python, kita bisa menggunakan modul json untuk membaca data JSON. Misalnya, kita bisa menggunakan fungsi json.load() untuk membaca data JSON dari file atau json.loads() untuk membaca data JSON dari string.

    Namun, membuat model akan lebih memudahkan kita untuk dibaca dan identifikasi bug. Model dapat membantu kita memahami struktur data dan memastikan bahwa data yang kita ambil sesuai dengan struktur yang diharapkan. Jika kita tahu struktur data yang kita ambil dan kita yakin bahwa struktur tersebut tidak akan berubah, kita bisa melakukan pengambilan data JSON tanpa membuat model. Namun, jika struktur data yang kita ambil dapat berubah atau jika kita ingin memastikan bahwa kita mengambil semua data yang diharapkan, mungkin perlu membuat model terlebih dahulu.

2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

    Dalam Flutter, CookieRequest adalah permintaan HTTP yang membawa cookies. Cookies adalah informasi kecil yang disimpan di browser dan berguna untuk menyimpan sesi atau preferensi user. CookieRequest perlu dibagi ke semua bagian aplikasi karena cookies sering menyimpan info penting seperti sesi user. Jika tidak dibagi, beberapa bagian aplikasi mungkin tidak berfungsi, misalnya, yang memerlukan info sesi user.

    Selain menyimpan info user, cookies membantu optimalkan user jaringan dan server. Mereka bisa mengurangi permintaan ke server atau jumlah data yang dikirim ke sana. Jadi, penting untuk membagikan cookies ke semua komponen yang membutuhkan.

3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.

    1) Membuat Permintaan HTTP: Pertama, kita perlu membuat permintaan HTTP untuk mengambil data JSON. Kita bisa menggunakan package http di Flutter untuk melakukan ini. 

    2) Mendapatkan Respon: Setelah kita membuat permintaan HTTP, kita perlu mendapatkan respon dari server. Respon ini akan berupa string JSON.
    Mengubah JSON menjadi Objek Dart: Selanjutnya, kita perlu mengubah string JSON ini menjadi objek Dart.

    3) Membuat Model: Untuk memudahkan penggunaan data JSON ini, kita bisa membuat model Dart yang mewakili struktur data. Model ini akan memiliki metode fromJson untuk mengubah objek Dart menjadi instance model, dan metode toJson untuk mengubah instance model menjadi objek Dart.

    4) Mengubah Data JSON menjadi Model: Setelah kita memiliki model, kita bisa menggunakan metode fromJson untuk mengubah data JSON menjadi instance model.

    5) Menampilkan Data: Terakhir, kita bisa menampilkan data ini di aplikasi Flutter kita, misalnya dengan menggunakan widget ListView.builder.


4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

    1) Membuat Form Autentikasi di Flutter: Pertama, kita perlu membuat form autentikasi di Flutter. Form ini akan meminta user untuk memasukkan username dan password mereka.
    2) Mengirim Data Autentikasi ke Django: Setelah user memasukkan username dan password mereka, kita perlu mengirim data ini ke server Django. Kita bisa menggunakan package http di Flutter untuk melakukan ini. 
    3) Menerima Respon dari Django: Setelah kita mengirim data autentikasi, kita perlu menerima respon dari server Django. Respon ini akan memberi tahu kita apakah autentikasi berhasil atau tidak.
    4) Menangani Respon: Jika autentikasi berhasil, kita perlu menangani respon ini dengan benar. Misalnya, kita bisa menyimpan token autentikasi yang dikirim oleh server Django, dan kemudian menggunakan token ini untuk mengautentikasi permintaan HTTP selanjutnya.
    5) Membuat Permintaan Autentikasi: Setelah kita mendapatkan token autentikasi, kita bisa menggunakan token ini untuk membuat permintaan autentikasi. Permintaan ini akan memberi tahu server Django bahwa user telah login dan dapat mengakses sumber daya yang diperlukan.
    6) Menampilkan Menu: Setelah proses autentikasi selesai, kita bisa menampilkan menu pada Flutter. Menu ini akan berbeda-beda tergantung pada hak akses user.

5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

    i. MaterialApp: Mengelompokkan sejumlah widget yang sering digunakan dalam aplikasi desain Material.

    ii. Scaffold: Wadah yang menyediakan berbagai komponen umum dalam desain Material seperti Drawer, Snack-Bar, Bottom-Navigation-Bar, Floating-Action-Button, dan App-Bar. Ini mengisi seluruh layar perangkat dengan elemen-elemen ini.

    iii. AppBar: Komponen teratas atau terkadang terbawah dari aplikasi, yang berisi toolbar dan tombol aksi umum lainnya.

    iv. Container: Menyediakan box yang bisa berisi widget lain dan memberikan padding atau margin. Dalam kode ini, widget ini digunakan untuk memberikan padding pada widget lain.

    v. Column: Menampilkan widget lain secara vertikal. Dalam kode ini, widget ini digunakan untuk menampilkan widget TextField dan ElevatedButton secara vertikal.

    vi. TextField: Memungkinkan pengguna memasukkan teks. Dalam kode ini, widget ini digunakan dua kali, satu untuk memasukkan username dan satu lagi untuk memasukkan password.

    vii. ElevatedButton: Membuat tombol yang dapat ditekan oleh pengguna, contohnya untuk membuat tombol 'Login'.

    viii. SizedBox: Memberikan ruang kosong dengan lebar dan tinggi tertentu. Dalam kode ini, widget ini digunakan untuk memberikan jarak antara widget TextField dan ElevatedButton.

    ix. FutureBuilder: Menangani Future dan menampilkan widget lain berdasarkan hasil Future tersebut. Dalam kode ini, widget ini digunakan untuk menampilkan list produk dari Future yang mengambil data produk dari server.

    x. ListView: Membuat daftar widget lain berdasarkan item dalam list. Dalam kode ini, widget ini digunakan untuk membuat daftar produk dari list produk yang diterima dari server.

    xi. Text: Menampilkan teks, seperti untuk menampilkan nama, genre, jumlah, dan deskripsi produk.

    xii. AlertDialog: Menampilkan dialog yang memberikan informasi kepada pengguna dan meminta tindakan, contohnya untuk menampilkan dialog 'Login Gagal' jika login gagal.

    xiii.SnackBar: Menampilkan pesan singkat di bagian bawah layar, seperti untuk menampilkan pesan 'Welcome' jika login berhasil.

6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
    1) Pertama-tama, saya mereview kembali apa yang sudah diajarkan pada tutorial sebelumnya.
    2) Setelah itu, saya membuka kembali project Django yang akan digunakan untuk fetch data untuk keperluan models dan juga login logout dari akun.
    3) Kemudian, saya mengubah file main saya agar terdapat sistem autentikasi pada Flutter project saya.
    4) Saya juga membuat app baru bernama authentication dan membuat fungsi-fungsi yang akan digunakan untuk login dan logout.
    5) Lalu, saya membuat page login pada project saya yang terhubung dengan project Django, namun karena belum bisa deploy saya masih menggunakan localhost dahulu.
    6) Setelah itu saya membuat models pada project Flutter dan menerapkan fetch data untuk bisa mengambil data dan menampilkannya juga di page list product.
    7) Saya juga mengupdate left drawer dan main menu agar dapat melakukan routing ke page list product tersebut.
    8) Kemudian, saya mengintegrasikan form Flutter dengan Django dengan menyesuaikan kedua project saya.
    9) Terakhir, saya membuat fitur logout pada aplikasi saya.


## Tugas 8

1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
    
    Navigator.push() digunakan untuk mengarahkan pengguna ke halaman baru yang ditempatkan di atas tumpukan navigasi yang sedang berlangsung. Saat halaman baru ditambahkan, pengguna dapat kembali ke halaman sebelumnya dengan mudah menggunakan tombol kembali pada perangkat mereka. Contoh penerapannya adalah saatu aplikasi ingin memandu pengguna ke halaman detail tanpa menghapus halaman sebelumnya, seperti saat beralih dari daftar produk ke halaman detail produk.

    Sedangkan, Navigator.pushReplacement() digunakan untuk memandu pengguna menuju halaman baru, namun sebaliknya, menggantikan halaman yang sedang ditampilkan di dalam tumpukan navigasi. Halaman sebelumnya dihapus dari tumpukan, sehingga pengguna tidak memiliki opsi untuk kembali ke halaman tersebut dengan menggunakan tombol kembali.
    

2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

    i. Column dan Row 
        Digunakan untuk menyusun widget secara vertikal (Column) dan horizontal (Row) dalam suatu tata letak linear, memungkinkan penataan widget dengan mudah. 
    
    ii. Stack
        Mengatur widget secara tumpuk, memungkinkan pembuatan tata letak overlay seperti menempatkan teks di atas gambar. 
    
    iii. GridView 
        Digunakan untuk menampilkan widget dalam bentuk grid, sesuai untuk galeri gambar atau susunan item yang serupa. 
    
    iv. ListView,
        Digunakan untuk menampilkan daftar item yang dapat di-scroll, sesuai untuk daftar panjang dan dinamis. 
    
    v. Padding dan Container
        Padding memberikan ruang di sekitar widget, sedangkan Container memberikan lebih banyak kontrol dalam penataan layout, seperti pengaturan ukuran dan warna, sehingga  menyediakan fleksibilitas dalam mendesain interface dengan berbagai jenis tata letak dan kontrol.

3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
    
    TextFormField
    Digunakan untuk mengambil input title, genre, price, dan description, karena fleksibel untuk berbagai jenis input teks yang juga dilengkapi dengan validasi untuk memastikan tipe data yang diinput seperti validasi numerik untuk input price.
   
4. Bagaimana penerapan clean architecture pada aplikasi Flutter?

    i. Pemisahan Layer
        Setiap lapisan memiliki tanggung jawabnya masing-masing. Presentation Layer mengelola tampilan dan interaksi pengguna, Business Logic Layer mengontrol aturan bisnis dan status aplikasi, sementara Data Layer menangani akses ke data melalui API atau database lokal.

    ii. Penggunaan Model
        Model digunakan untuk merepresentasikan data dengan cara yang sederhana, mencerminkan struktur data tanpa kompleksitas berlebihan.

    iii. Dependency Injection
        Praktik ini melibatkan pemisahan ketergantungan antar komponen, mempermudah pengujian dan pemeliharaan kode dengan memastikan komponen dapat diganti atau diperbarui tanpa mengganggu seluruh sistem.

    iv. Testing
        Setiap lapisan dirancang agar dapat diuji secara independen. Hal ini memudahkan pengembang dalam mendeteksi dan memperbaiki bug karena setiap bagian dapat diuji secara terpisah.

    v. Prinsip SOLID
        Prinsip SOLID diterapkan untuk memastikan keterbacaan, pemeliharaan, dan skalabilitas kode. Dengan mematuhi prinsip SOLID, pengembang dapat menciptakan kode yang lebih terstruktur dan mudah diubah.


5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
    1) Pertama-tama, saya mereview kembali apa yang sudah diajarkan pada tutorial sebelumnya.
    2) Kemudian, saya membuat left drawer untuk keperluan navigasi pada menu page.
    3) Lalu, saya membuat GameFormPage sebagai form yang dapat menerima input dari user sehingga dapat menyimpan input dari user juga.
    4) Setelah itu saya membuat routing pada drawer untuk menuju halaman form input game, dan juga pada main menu.
    5) Kemudian, saya melakukan refactoring dengan memisahkan antara game card dengan menu dart agar memudahkan pemisahan pengerjaan dan program lebih efektif juga.

## Tugas 7

1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

    Stateless widget adalah tipe widget yang tidak memiliki perubahan internal dan biasanya digunakan untuk bagian tampilan yang statis, seperti teks, ikon, atau gambar. Stateless widget tidak menyimpan status internal dan lebih efisien karena tidak memerlukan perbaruan yang berkelanjutan atau statis. 
    
    Sebaliknya, stateful widget adalah widget yang dapat mengubah status internalnya selama siklus hidupnya. Stateful widget dapat digunakan jika diperlukan pengelolaan data yang dapat berubah atau dinamis seperti formulir, daftar yang dapat diedit, atau tampilan yang bergantung pada input pengguna.

2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

    i. MaterialApp: Mengelompokkan sejumlah widget yang sering digunakan dalam aplikasi desain Material.
    
    ii. ThemeData: Mengontrol tema aplikasi secara keseluruhan, mengatur warna, tipografi, dan elemen desain lainnya.
    
    iii. ColorScheme: Kumpulan warna berdasarkan pedoman desain Material, yang dapat digunakan untuk mengatur warna berbagai komponen dalam aplikasi.

    iv. Scaffold: Wadah yang menyediakan berbagai komponen umum dalam desain Material seperti Drawer, Snack-Bar, Bottom-Navigation-Bar, Floating-Action-Button, dan App-Bar. Ini mengisi seluruh layar perangkat dengan elemen-elemen ini.

    v. AppBar: Komponen teratas atau terkadang terbawah dari aplikasi, yang berisi toolbar dan tombol aksi umum lainnya.

    vi. Text: Menampilkan teks dengan gaya tunggal. Teks dapat dibagi menjadi beberapa baris atau ditampilkan dalam satu baris, tergantung pada tata letak.

    vii. Padding: Menambahkan lapisan atau ruang kosong di sekitar satu atau sekelompok widget.

    viii. Column: Membuat tata letak vertikal, memungkinkan Anda untuk menumpuk widget secara vertikal.

    ix. GridView.count: Membuat tata letak dengan jumlah tile yang tetap pada sumbu silang.

    x. Material: Memberikan tampilan Material Design pada widget lainnya, mencakup efek visual dan interaktivitas.

    xi. InkWell: Area persegi panjang yang merespons peristiwa sentuhan dengan menampilkan efek sentuhan seperti percikan.

    xii. Container: Memungkinkan penyesuaian dari turunan widget, memungkinkan Anda mengontrol tampilan dan tata letak.

    xiii. Icon: Digunakan untuk menampilkan berbagai ikon dengan berbagai model dan ukuran.

    xiv. SnackBar: Pesan ringan dengan opsi tindakan yang ditampilkan singkat di bagian bawah layar.

3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

    1) Pertama-tama, saya mereview kembali apa yang saya pelajari selama Tutorial 6 kemarin.
    2) Untuk pengerjaan semua tutorial dan tugas, saya memilih untuk menggunakan VSCode saja karena lebih mudah untuk debugging dan juga sudah terbiasa dengan penggunaannya, dibanding menggunakan Android Studio yang perlu adaptasi ulang dan kurang mengerti juga cara menggunakan built-in emulatornya.
    3) Pertama-tama, saya buat dahulu folder khusus untuk pengerjaan tugas yang dibedakan dari folder tutorial agar mudah untuk keperluan flutter run.
    4) Kemudian, saya create app flutter bernama Arcaders+. Konsep aplikasi inventory saya serupa dengan konsep tugas Django, yaitu aplikasi sewa game online yang dapat diperlihat detail, jumlah, dan lain-lain. Namun bedanya saya akan lebih teliti dan membuat agar konsep design dan responsiveness lebih sesuai dengan konsep aplikasi yang saya bayangkan.
    5) Lalu, saya membuka folder lib dan memindahkan class-class seperti MyHomePage ke file dart baru bernama menu.dart yang akan mengonfigurasi tampilan menu di aplikasi saya.
    6) Setelah itu, saya membuat widget baru untuk card button-button yang diperlukan yaitu View Products, Add Products, dan Logout. Selain itu saya juga membuat pop-up Snackbar di bawah yang menampilkan button apa yang ditekan.
    7) Saya juga memastikan widget-widget yang saya buat untuk sekarang bersifat stateless dahulu.
    8) Kemudian, saya memgubah attribute-attribute pada button-button untuk kustomisasi warna-warnanya. Dengan itu, saya mengubah warna button satu per satu dan juga warna text dan iconnya agar lebih mudah untuk dilihat.

