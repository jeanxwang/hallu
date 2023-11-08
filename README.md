# Tugas PBP (Flutter) - Aliyah Faza Qinthara

### Contents
* [Tugas 7: Elemen Dasar Flutter](#tugas-7)

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
