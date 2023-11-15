# Arcaders Plus - Tugas Flutter PBP

Jawaban soal Tutorial CheckList
Darryl Abysha Artapradana Subiyanto
2206082846 - E

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

