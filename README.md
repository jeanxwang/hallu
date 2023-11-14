# Tugas PBP (Flutter) - Aliyah Faza Qinthara

### Contents
* [Tugas 7: Elemen Dasar Flutter](#tugas-7)
* [Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements](#tugas-8)

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
