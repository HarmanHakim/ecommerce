TUGAS 7
1. Jelaskan apa yang dimaksud dengan  StatelessWidget  dan  StatefulWidget , dan jelaskan perbedaan dari keduanya.

Dalam Flutter,  widget  adalah elemen antarmuka pengguna yang dapat digunakan kembali dan bersifat modular. Flutter menyediakan dua jenis widget utama:

-  StatelessWidget : 
  - Adalah widget yang tidak dapat berubah (immutable) selama siklus hidupnya.
  - Sekali dibuat, ia menampilkan konten yang tetap dan tidak bereaksi terhadap perubahan data atau input pengguna.
  - Biasanya digunakan untuk elemen UI yang tidak perlu diperbarui setelah rendering pertama.
  - Contohnya: widget statis seperti ikon, teks, atau gambar yang hanya perlu ditampilkan tanpa perlu diubah atau di-interaksi lebih lanjut.

-  StatefulWidget : 
  - Adalah widget yang dapat berubah (mutable) seiring waktu.
  - Ia memiliki  state  atau kondisi internal yang bisa berubah, dan perubahan ini bisa membuat widget diperbarui atau di- render  ulang di layar.
  -  StatefulWidget  sering digunakan untuk widget yang memiliki interaksi atau input pengguna yang perlu merespon tindakan pengguna, misalnya tombol yang menambahkan item dalam daftar atau tampilan halaman yang berubah berdasarkan masukan pengguna.
  - Contohnya:  TextField ,  Checkbox , atau  Slider  yang dapat diubah statusnya ketika ada interaksi pengguna.

 Perbedaan utama :
  -  StatelessWidget  adalah widget statis, tanpa kondisi yang berubah, sementara  StatefulWidget  memiliki kondisi internal yang dapat berubah dan diperbarui selama siklus hidup widget.
  - StatelessWidget cocok untuk komponen yang hanya perlu di- render  sekali tanpa pembaruan, sedangkan StatefulWidget cocok untuk elemen UI yang harus berubah seiring waktu atau merespons interaksi pengguna.



2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
    A) Scaffold berfungsi untuk struktur dasar untuk membangun halaman utama aplikasi ini.
    B) Appbar berfungsi untuk menampilkan judul aplikasi "Plantshop" di atas halaman.
    C) Padding berfungsi untuk memberikan jarak di sekitar elemen-elemen ui seperti tombol dan kartu informasi agar tampilanya menjadi lebih rapih.
    D) Column berfungsi untuk menyusun tombol, text sambutan, dan InfoCard secara vertikal di halaman utama.
    E) Row berfungsi menyusun widget secara horizontal. Row berfungsi untuk menyusun NPM, nama, dan kelas agar tersusun satu baris.
    F) ElevatedButton.icon berfugsi untuk menampilkan ikon dan teks secara bersamaan.
    G) Icon berfungsi untuk menampilkan ikon grafis di layar.
    H) Snackbar berfungsi untuk menampilkan pesan sementara di bawah layar.
    I) Card berfungsi untuk menampilkan tampilan berbentuk kotak dengan bayangan yang digunakan untuk menampilkan informasi di dalamnya.
    J) Inkwell berfungsi untuk mendeteksi interaksi pengguuna, seperti ketukan dan menapilkan efek ripple pada klik.
    K) GridView.count berfungsi untuk menampilkan widget dalam bentuk grid dengan jumlah tertentu
    L) Center berfungsi untuk menampilkan widget di tengah layar baik secara horizontal maupun vertikal.
    M) text berfungsi untuk menampilkan text di layar.

3. Apa fungsi dari  setState() ? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

 setState()  adalah metode dalam  StatefulWidget  yang digunakan untuk memperbarui atau mengubah tampilan ketika ada perubahan pada  state . Ketika  setState()  dipanggil, Flutter akan menkitai widget tersebut sebagai perlu di- render  ulang, sehingga tampilan yang baru akan mencerminkan perubahan yang terjadi pada variabel yang ada di dalamnya.

Fungsi utama dari  setState()  adalah:
- Memberi tahu Flutter bahwa ada perubahan pada data yang memengaruhi UI, sehingga tampilan widget perlu diperbarui.
- Menjaga agar tampilan sinkron dengan data terbaru.

 Variabel yang dapat terdampak oleh  setState()  :
  -  setState()  memengaruhi semua variabel yang ada dalam  state  atau kondisi  widget  yang terhubung ke tampilan widget itu. Variabel-variabel ini bisa berupa:
    -  Variabel yang digunakan dalam UI : Misalnya, variabel yang menampilkan teks, angka, atau status seperti  isVisible ,  count , atau  selected .
    -  Variabel yang mengatur elemen interaktif : Seperti  isChecked  pada kotak centang atau  isToggled  pada saklar.
  -  Catatan :  setState()  hanya perlu dipanggil ketika ada perubahan yang mempengaruhi UI; variabel yang tidak memengaruhi UI tidak memerlukan pemanggilan  setState() .

Dengan  setState() , kita dapat memperbarui tampilan UI secara dinamis berdasarkan masukan pengguna atau perubahan logika aplikasi.



4. Jelaskan perbedaan antara  const  dengan  final .

Baik  const  maupun  final  adalah kata kunci di Dart yang digunakan untuk mendefinisikan variabel yang tidak dapat diubah nilainya setelah diinisialisasi, tetapi ada perbedaan penting di antara keduanya:

-  const :
  - Digunakan untuk mendeklarasikan variabel atau objek yang bersifat  konstan pada waktu kompilasi .
  - Nilai dari  const  harus ditetapkan saat waktu kompilasi, dan nilai ini tidak akan pernah berubah.
  -  const  dapat digunakan pada variabel atau objek yang nilainya sepenuhnya ditentukan pada saat kompilasi, dan objek yang dibuat sebagai  const  bersifat  immutable .
  -  const  cocok untuk nilai konstan yang sudah diketahui sebelumnya dan tidak akan pernah berubah, misalnya konstanta matematika seperti  pi , atau nilai yang selalu sama di seluruh aplikasi, seperti warna atau ukuran tetap.

-  final :
  - Digunakan untuk mendeklarasikan variabel yang tidak boleh diubah setelah inisialisasi pertama, namun nilainya tidak perlu diketahui pada waktu kompilasi. Nilainya bisa ditetapkan saat aplikasi sedang berjalan.
  - Dengan  final , kita dapat membuat variabel yang hanya dapat diinisialisasi sekali pada saat  runtime , tetapi nilainya tidak perlu diketahui di awal.
  -  final  cocok untuk nilai yang ditetapkan sekali di awal aplikasi atau saat objek dibuat, tetapi tidak akan berubah setelah itu. Contohnya seperti  controller  pada suatu widget, objek yang dibuat dengan fungsi  DateTime.now() , atau nilai API yang hanya perlu diambil satu kali.



5.  Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
Saya memulai proyek ini dengan membuka terminal dan menjalankan perintah `flutter create plantshop` untuk membuat direktori proyek baru, kemudian masuk ke direktori tersebut dan menjalankan aplikasi dengan `flutter run`. Untuk mendukung tampilan di web, saya mengaktifkan konfigurasi web menggunakan `flutter config --enable-web` dan menjalankan aplikasi di Chrome dengan perintah `flutter run -d chrome`. Setelah itu, saya membuat file `menu.dart` baru dan memindahkan `MyHomePage` dari `main.dart` ke dalamnya. Untuk menghindari error, saya menghapus parameter `title` dan mengubah `MyHomePage` menjadi `StatelessWidget`, karena tidak ada perubahan `state` yang diperlukan.

Saya menambahkan widget `InfoCard` untuk menampilkan informasi pengguna seperti NPM, nama, dan kelas. Tombol-tombol seperti "Lihat Daftar Produk", "Tambah Produk", dan "Keluar" dibuat menggunakan `ElevatedButton.icon`, dengan ikon dan warna yang berbeda. Dengan membungkus tombol dalam `InkWell` dan `ScaffoldMessenger`, setiap tombol dalam `ItemCard` akan menampilkan `Snackbar` ketika ditekan. Dengan `GridView.count`, tata letak tombol ditampilkan dalam bentuk grid, yang memberikan tampilan lebih rapi dan profesional.

Saya menggunakan `const` untuk nilai tetap, dan `final` untuk variabel seperti `npm`, `name`, dan `className`, yang diinisialisasi sekali tetapi bisa berubah selama runtime. Terakhir, saya memastikan proyek berjalan lancar dengan memeriksa menggunakan `Flutter Analysis` dan `Flutter Run`.




TUGAS 8
1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
const digunakan untuk membuat objek yang bersifat immutable atau tidak dapat diubah setelah diinisialisasi. Saat kita menggunakan const, Flutter hanya membuat satu instance dari objek tersebut, sehingga menghemat memori dan meningkatkan efisiensi aplikasi.

- Keuntungan Menggunakan const
    - Penghematan Memori: Menggunakan const memungkinkan Flutter untuk membuat objek hanya satu kali dan menggunakannya kembali saat diperlukan. Ini menghemat memori dan mengurangi beban garbage collector.
    - Meningkatkan Performa: Karena objek const tidak berubah, Flutter tidak perlu merender ulang objek ini jika tidak ada perubahan, yang dapat mempercepat aplikasi.
    - Menjaga Konsistensi: Dengan const, kita menghindari perubahan yang tidak disengaja pada nilai yang seharusnya tetap, membantu menjaga integritas data.
- Kapan Menggunakan const?
    - Untuk Nilai yang Tidak Berubah: Gunakan const untuk objek yang tidak perlu berubah selama lifecycle aplikasi.
    - Optimisasi UI: Saat menggunakan widget statis, seperti Text, Icon, atau Container, yang tidak berubah, menggunakan const dapat mengoptimalkan kinerja.
- Kapan Sebaiknya Tidak Menggunakan const?
    - Jika Data Dinamis: Jika nilai atau widget dapat berubah selama aplikasi berjalan, seperti input pengguna atau data dari server, tidak perlu menggunakan const.
    - Animasi atau Respons Interaktif: Untuk widget yang beranimasi atau responsif, jangan gunakan const, karena memerlukan rendering ulang sesuai perubahan.


2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
  Row:
    - Row digunakan untuk menyusun widget secara horizontal (dari kiri ke kanan).
    - Elemen-elemen di dalam Row akan ditempatkan secara berurutan dalam satu baris.
    - Jika elemen-elemen melebihi lebar layar, Anda bisa menggunakan Expanded atau Flexible untuk mengatur ukuran dan ruang yang tersedia.
    - MainAxisAlignment digunakan untuk mengatur posisi elemen-elemen pada sumbu utama (horizontal).
    - CrossAxisAlignment digunakan untuk mengatur posisi elemen pada sumbu silang (vertikal).
    - Contoh 
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(Icons.home),
        Icon(Icons.search),
        Icon(Icons.notifications),
      ],
    )


  Column:
  - Column digunakan untuk menyusun widget secara vertikal (dari atas ke bawah).
  - Elemen-elemen di dalam Column akan ditempatkan secara berurutan dalam satu kolom.
  - Jika elemen-elemen melebihi tinggi layar, Anda bisa menggunakan Expanded atau Flexible untuk mengatur ukuran dan ruang yang tersedia.
  - MainAxisAlignment digunakan untuk mengatur posisi elemen-elemen pada sumbu utama (vertikal).
  - CrossAxisAlignment digunakan untuk mengatur posisi elemen pada sumbu silang (horizontal).
  - Contoh
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text("Hello, world!"),
      ElevatedButton(
        onPressed: () {},
        child: Text("Press me"),
      ),
      Icon(Icons.favorite),
    ],
  )



3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Elemen input yang digunakan pada halaman form ini adalah sebagai berikut:
  - TextFormField untuk "Name": Digunakan untuk menerima masukan nama produk, dilengkapi dengan validasi agar tidak boleh kosong.
  - TextFormField untuk "Amount": Berfungsi untuk menerima input berupa jumlah atau kuantitas yang harus berupa nilai integer.
  - TextFormField untuk "Description": Menyediakan input deskripsi lengkap dengan validasi agar sesuai ketentuan.

Sementara itu, ada beberapa elemen input lain dalam Flutter yang tidak digunakan dalam tugas ini, yaitu:

- Checkbox: Untuk pilihan sederhana antara “ya” atau “tidak.”
- Radio Button: Memungkinkan pemilihan satu opsi dari beberapa pilihan yang disediakan.
- DropdownButton: Menyediakan pilihan dalam bentuk menu dropdown.
- Slider: Memungkinkan pengguna memilih nilai dalam rentang tertentu.
- Switch: Memberikan opsi hidup atau mati untuk pengaturan tertentu.
- DatePicker dan TimePicker: Memungkinkan pengguna memilih tanggal atau waktu tertentu.



4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Untuk menjaga konsistensi tampilan tema pada aplikasi Flutter, saya dapat menggunakan ThemeData yang diterapkan melalui MaterialApp. Dengan ThemeData, saya bisa mengatur berbagai elemen seperti warna, jenis font, ukuran teks, serta komponen UI lainnya, sehingga keseluruhan tampilan aplikasi menjadi lebih seragam dan konsisten.



5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Navigasi dalam aplikasi Flutter yang memiliki banyak halaman bisa diatur menggunakan  Navigator  dengan metode seperti  push(), pop(), dan  pushReplacement(). Untuk struktur navigasi yang lebih rapi, kita dapat memanfaatkan  Named Route  yang didefinisikan dalam  MaterialApp . Agar akses antar halaman lebih mudah, kita juga bisa menambahkan  Drawer  atau  Bottom Navigation.