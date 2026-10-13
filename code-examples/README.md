# 💻 Kode Praktek & Contoh Program — Piranha Ubuntu

Folder ini berisi kumpulan skrip terminal, simulasi IoT, dan kode sumber terbuka yang diangkat langsung dari petualangan **Riko dan Tux** di dalam komik *PIRANHA UBUNTU (2026)*.

---

## 📂 Daftar File Kode

| Nama File | Bab Terkait | Bahasa / Format | Penjelasan Singkat |
| :--- | :---: | :---: | :--- |
| **`01_kenalan_terminal.sh`** | Bab 1 & 2 | Bash Shell | Perintah dasar perkenalan terminal Linux (`whoami`, `uname`, `pwd`, `df -h`). |
| **`02_update_dan_upgrade.sh`** | Bab 2 | Bash Shell | Penjelasan & simulasi cara kerja `sudo apt update`, `upgrade`, dan opsi `--fix-broken`. |
| **`03_sudo_dan_permissions.sh`** | Bab 3 | Bash Shell | Demonstrasi mengapa folder `/root` menghasilkan *“Permission Denied”* dan peran penting `sudo`. |
| **`04_sensor_ekosistem_piranha.py`** | Bab 7 & 8 | Python 3 | Simulasi telemetri stasiun sensor kualitas air bertenaga surya 100% ramah lingkungan. |
| **`piranha_core.cpp`** | Bab 10 | C++ | Source code mesin utama *Piranha Core Engine* yang diunggah ke repositori global di Bab 10. |
| **`utils.go`** | Bab 10 | Go | Utilitas pengiriman paket telemetri dan enkripsi kunci `OPEN_SOURCE_2026`. |

---

## 🚀 Cara Menjalankan di Komputer Linux / Ubuntu

### 1. Menjalankan Skrip Terminal (Bash):
```bash
# Memberikan izin eksekusi (jika belum)
chmod +x 01_kenalan_terminal.sh 02_update_dan_upgrade.sh 03_sudo_dan_permissions.sh

# Menjalankan latihan
./01_kenalan_terminal.sh
./02_update_dan_upgrade.sh
./03_sudo_dan_permissions.sh
```

### 2. Menjalankan Simulasi Sensor (Python):
```bash
python3 04_sensor_ekosistem_piranha.py
```

---

## 📜 Lisensi Kode
Seluruh kode di dalam folder ini dilisensikan di bawah **GNU General Public License v3.0 (GPL-3.0)** sesuai dengan pesan di Bab 10 komik.
Lihat file [`../LICENSE-CODE`](../LICENSE-CODE) untuk ketentuan lengkapnya.
