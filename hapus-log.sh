#Proyek Konfigurasi SSH Server by adzkiaadi

#!/bin/bash

#Menggunakan perulangan while supaya semua perintah pada berkas script berjalan terus tanpa henti.
#Syntax while (open)
while true
do

#Menampilkan informasi penggunaan disk dari semua berkas journalctl, baik yang aktif maupun yang diarsipkan.
journalctl -a --disk-usage
echo ""
#Syntax untuk menjeda
sleep 3s

#Menghapus journalctl log hingga ruang disk yang digunakan untuk log berkisar 10 MB.
journalctl --vacuum-size=10M
echo ""
#Syntax untuk menjeda
sleep 3s

#menampilkan kembali informasi penggunaan disk dari semua berkas journalctl, baik yang aktif maupun yang diarsipkan.
journalctl -a --disk-usage
echo ""
#Syntax untuk menjeda
sleep 1m

#Syntax while (close)
done
