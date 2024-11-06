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

 setState()  adalah metode dalam  StatefulWidget  yang digunakan untuk memperbarui atau mengubah tampilan ketika ada perubahan pada  state . Ketika  setState()  dipanggil, Flutter akan menandai widget tersebut sebagai perlu di- render  ulang, sehingga tampilan yang baru akan mencerminkan perubahan yang terjadi pada variabel yang ada di dalamnya.

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