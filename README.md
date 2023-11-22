# Tugas PBP (Flutter) - Aliyah Faza Qinthara

### Contents
* [Tugas 7: Elemen Dasar Flutter](#tugas-7)
* [Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements](#tugas-8)
* [Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter](#tugas-9)

<a name="tugas-7"></a>
## Tugas 7: Elemen Dasar Flutter

### Apa perbedaan utama antara _stateless_ dan _stateful widget_ dalam konteks pengembangan aplikasi Flutter?
**_Stateless widget_** tidak memiliki _state class_ sehingga perubahan yang mungkin terjadi pada _widget_ ini hanya akan bergantung dari _event_ yang ada di _parent widget_-nya, sedangkan **_stateful widget_** memiliki _state class_ yang mewakili _current state widget_ ini sehingga kejadian yang terjadi pada _widget_ jenis ini tidak bergantung pada _widget_ lain.

### Sebutkan seluruh _widget_ yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
1. **_Widget_ `MaterialApp`:** menginisiasi aplikasi Flutter dan menentukan tema tampilan awal
2. **_Widget_ `MyApp`:** aplikasi itu sendiri
3. **_Widget_ `Scaffold`:** membuat kerangka halaman yang mengandung `AppBar` dan _body_
4. **_Widget_ `AppBar`:** membuat _AppBar_
5. **_Widget_ `SingleChildScrollView`:** memungkinkan kontennya untuk di-_scroll_
6. **_Widget_ `Padding`:** menambahkan _padding_
7. **_Widget_ `Column`:** mengatur _widget child_-nya secara vertikal
8. **_Widget_ `GridView.count`:** membuat tata letak _grid_ sesuai dengan jumlah kolom
9. **_Widget_ `ShopCard`:** kartu untuk menampilkan _item_
10. **_Widget_ `Text`:** menampilkan teks
11. **_Widget_ `Material`:** mengaplikasikan _material design_ pada kontennya
12. **_Widget_ `InkWell`:** membuat area yang merespon sentuhan
13. **_Widget_ `ScaffoldMessenger`:** memunculkan SnackBar
14. **_Widget_ `Container`:** mengelompokkan _widget_
15. **_Widget_ `Icon`:** menampilkan _icon_

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
Pertama, saya membuat direktori baru untuk membuat aplikasi Flutter, melakukan `git init`, serta menghubungkan repositori lokal dengan repositori baru di GitHub. Selanjutnya, saya membuat `menu.dart` dan mengubah sifat widget yang ada menjadi _stateless_. Lalu, saya mendefinisikan sebuah _class_ untuk menampilkan _card_ dan melakukan beberapa perubahan _widget_ seperti pada tutorial. Terakhir, saya juga menambahkan beberapa _font custom_ dan menyesuaikan kode dengan hasil tampilan yang saya inginkan.

<a name="tugas-8"></a>
## Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements

### Jelaskan perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

Perbedaan kedua _method_ tersebut terletak pada apa yang dilakukan kepada _route_ yang berada pada atas _stack_. `push()` akan menambahkan _route_ baru di atas _route_ yang sudah ada pada atas _stack_, sedangkan `pushReplacement()` menggantikan _route_ yang sudah ada pada atas _stack_ dengan _route_ baru tersebut.
Pada aplikasi ini, `pushReplacement()` digunakan saat mengarahkan ke halaman `Add Item` dari _drawer_. Saat kita ingin kembali dari halaman `Add Item`, tentu _drawer_ tidak perlu terbuka dan kita ingin langsung ke halaman utama. Sementara itu, pada `shop_card.dart`, kita menggunakan `push()` karena setelah kita ke halaman `Add Item`, kita ingin kembali lagi ke halaman utama.

### Jelaskan masing-masing _layout widget_ pada Flutter dan konteks penggunaannya masing-masing!

1. _**Column**_: _Widget_ ini mengatur anak-anaknya dalam susunan vertikal, satu di bawah yang lain. Widget ini cocok digunakan ketika kita ingin menampilkan elemen-elemen dalam satu kolom. Contoh penggunaannya adalah ketika kita ingin menampilkan daftar item dalam bentuk vertikal.
2. _**Row**_: _Widget_ ini mengatur anak-anaknya dalam susunan horizontal, satu di samping yang lain. Widget ini cocok digunakan ketika kita ingin menampilkan elemen-elemen dalam satu baris. Contoh penggunaannya adalah ketika kita ingin menampilkan tombol navigasi dalam satu baris.

### Sebutkan apa saja elemen input pada _form_ yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

1. `TextFormField`: _Widget_ ini digunakan untuk membuat _input field_ di dalam _form_. _Widget_ ini memiliki properti `decoration` yang digunakan untuk menentukan tampilan _input field_, properti `onChanged` yang digunakan untuk menangani perubahan nilai _input field_, dan properti `validator` yang digunakan untuk mengecek apakah _input field_ sudah diisi atau belum.
2. `Form`: _Widget_ ini digunakan untuk membuat _form_ di dalam aplikasi. Pada kode saya, `Form` digunakan untuk mengelompokkan elemen-elemen _form_, dan memiliki properti `key` yang digunakan untuk mengidentifikasi _form_, dan properti `child` yang digunakan untuk menampung elemen-elemen `form`.

### Bagaimana penerapan _clean architecture_ pada aplikasi Flutter?

Pada _Clean Architecture_, aplikasi dibagi menjadi beberapa lapisan, yaitu:
1. _**Domain Layer**_: Lapisan ini berisi bisnis _logic_ dan model data dari aplikasi.
2. **_Application Layer_**: Lapisan ini mengimplementasikan _use case_ dari aplikasi dan menghubungkan lapisan infrastruktur dan presentasi.
3. _**Infrastructure Layer**_: Lapisan ini berhubungan dengan interaksi aplikasi dengan dunia luar, seperti _database_, _web server_, dan _user interface_.
4. _**Presentation Layer**_: Lapisan ini berisi kode yang merender _user interface_ dan mengatur _request_ dan _response_.
   
Penerapan _Clean Architecture_ pada aplikasi Flutter dapat dilakukan dengan memisahkan kode menjadi beberapa _package_ yang masing-masing merepresentasikan lapisan-lapisan tersebut. Hal ini dapat membantu mempermudah pengembangan aplikasi, meningkatkan fleksibilitas, dan memudahkan pemeliharaan kode.

### Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ di atas secara _step-by-step_! (bukan hanya sekadar mengikuti tutorial)

Pertama, saya membuat kode untuk _left drawer_ dan memasukkannya ke `menu.dart`. Kedua, saya membuat `shoplist_form.dart` dan menambahkan _left drawer_ yang sudah dibuat tadi juga. Tentunya, saya melengkapi _routing_ serta _impor package_ agar _drawer_ dapat diakses dari halaman utama maupun halaman _form_, dan sebaliknya.

<a name="tugas-9"></a>
## Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter

### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Ya, kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu.
Namun, ada beberapa keuntungan dalam membuat model data terlebih dahulu:
1. Validasi Data: Model data dapat membantu dalam memvalidasi data JSON yang diterima. Jika data tidak sesuai dengan model, maka akan muncul error, sehingga kita bisa mengetahui jika ada data yang tidak sesuai atau tidak lengkap.
2. Kemudahan Akses: Dengan model data, kita bisa mengakses properti data dengan lebih mudah dan kode akan lebih mudah dibaca.
3. Dokumentasi: Model data juga berfungsi sebagai dokumentasi, memberikan gambaran tentang struktur data yang diharapkan.

### Jelaskan fungsi dari CookieRequest dan jelaskan mengapa _instance_ CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

`CookieRequest` adalah kelas yang digunakan untuk mengirim permintaan HTTP dengan cookie. Dalam aplikasi Flutter, `CookieRequest` dapat digunakan untuk mengirim permintaan HTTP dengan cookie yang diperoleh dari server.

Instance `CookieRequest` perlu dibagikan ke semua komponen di aplikasi Flutter karena ini memungkinkan penggunaan cookie yang sama di seluruh aplikasi. Dengan cara ini, kita dapat memastikan bahwa setiap permintaan HTTP yang dibuat oleh aplikasi menggunakan cookie yang sama. Ini sangat penting dalam aplikasi yang memerlukan autentikasi, di mana cookie digunakan untuk mengidentifikasi pengguna yang terautentikasi.

### Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.

Untuk membuat model yang menyesuaikan dengan data JSON, kita dapat memanfaatkan website Quicktype. Selanjutnya, untuk melakukan perintah HTTP request, kita _install_ package tambahan yakni package http. Pada file android/app/src/main/AndroidManifest.xml, modifikasi kode untuk memperbolehkan akses Internet pada aplikasi Flutter yang sedang dibuat. Terakhir, melakukan fetch data dari Django.

### Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

1. Flutter mengirimkan data akun ke Django melalui API _call_.
2. Django menerima data akun dan memeriksa apakah data tersebut valid atau tidak.
3. Jika data akun valid, Django akan menghasilkan token akses dan mengirimkannya kembali ke Flutter melalui API _call_.
4. Flutter menerima token akses dan menyimpannya di _local storage_.
5. Flutter mengirimkan token akses ke Django melalui API _call_ setiap kali meminta data yang memerlukan autentikasi.
6. Django memeriksa token akses dan memastikan bahwa token akses tersebut valid.
7. Jika token akses valid, Django akan mengembalikan data yang diminta ke Flutter melalui API _call_.
8. Flutter menerima data yang diminta dan menampilkannya pada menu.

### Sebutkan seluruh _widget_ yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

1. **Provider**: _Widget_ yang digunakan untuk membagikan objek ke dalam pohon _widget_.
2. **MaterialApp**: _Widget_ yang digunakan untuk membuat aplikasi Flutter dengan tema _material design_.
3. **Scaffold**: _Widget_ yang digunakan untuk membuat struktur dasar aplikasi _material design_.
4. **AppBar**: _Widget_ yang digunakan untuk membuat AppBar.
5. **Container**: _Widget_ yang digunakan untuk membuat kotak yang dapat diatur ukurannya.
6. **Column**: _Widget_ yang digunakan untuk mengatur _widget_ dalam kolom vertikal.
7. **TextField**: _Widget_ yang digunakan untuk membuat input teks.
8. **SizedBox**: _Widget_ yang digunakan untuk membuat kotak kosong dengan ukuran tertentu.
9. **ElevatedButton**: _Widget_ yang digunakan untuk membuat tombol dengan tampilan yang lebih menonjol.
10. **AlertDialog**: _Widget_ yang digunakan untuk membuat dialog dengan tombol OK.
11. **ScaffoldMessenger**: _Widget_ yang digunakan untuk menampilkan pesan pada layar.

### Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ di atas secara _step-by-step_! (bukan hanya sekadar mengikuti tutorial).

Pertama, buat aplikasi `authentication` di Django. Buat `views.py` dan `urls.py` di aplikasi baru. Selanjutnya, _install package_ untuk autentikasi dan modifikasi _root widget_ untuk buat CookieRequest. Lalu, buat halaman `login.dart`. Lanjut, buat model kustom menggunakan Quicktype, menambahkan dependensi http dan melakukan _fetch_ data dari Django. Selanjutnya, membuat fungsi `create_product_flutter` di Django dan memodifikasi `shoplist_form.dart` untuk mengintegrasi _form_ Flutter dengan layanan Django. Lalu, saya mengimplementasikan fitur `logout` dan diakhiri dengan membuat `product_detail.dart` serta menghubungkannya dari halaman daftar produk agar _user_ diarahkan ke halaman baru saat memilih produk spesifik di halaman daftar produk.
