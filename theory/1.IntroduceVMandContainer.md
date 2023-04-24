## Virtual Machine
Dalam dunia Infrastructure, kita sudah terbiasa dengan namanya VM (Virtual Machine)
Saat membuat sebuah VM, biasanya kita akan menginstall sistem operasi juga di VM nya
Masalah ketika kita menggunakan VM adalah proses yang lambat ketika pembuatan VM nya, dan butuh waktu untuk boot sistem operasiketika kita menjalankan VM atau me restart VM tersebut.

*lihat* : images\Diagram Virtual Machine.png

Hipervisor = Virtual Machine Manager
contoh : VMware / Virtual Box

Sistem Operasi = Linux - Ubuntu dll

Semisal kita punya 3 VM maka kita perlu install 3 sistem operasi

## Container
Berbeda dengan VM, Container sendiri berfokus pada sisi Aplikasi.
Container sendiri sebenarnya berjalan diatas aplikasi Container Manager yang berjalan di sistem operasi sedangkan VM berjalan di Hipervisor / Virtual Machine Manager.
Yang membedakan dengan VM adalah pada Container, kita bisa [mem-package] aplikasi dan dependency-nya tanpa harus menggabungkan dengan sistem operasi nya.
Container akan menggunakan sistem operasi [host] dimana Container Manager berjalan (misalkan CM berjalan di linux maka pakai host di linux tersebut) oleh karena itu, Container akan lebih hemat resource dan lebih cepat jalan nya, karena tidak butuh sistem operasi sendiri.
Ukuran Container hanya hitungan MB, berbeda dengan VM yang bisa mencapai GB karena didalamnya ada sistem operasinya.

fitur utama nya container adalah antara container dia [terisolasi] dan tidak mempengaruhi container yang lain, jika tidak pakai container maka bisa terjadi bentrok antar aplikasi , bisa jadi karena port nya atau nama nya. misalkan install java 8, 11, 17 bisa dibuat container nya masing-masing dan tidak akan impact ke yang lain nya.

*lihat* : images\Diagram Container.png
