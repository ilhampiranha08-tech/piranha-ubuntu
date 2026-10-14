# ==============================================================================
# PIRANHA UBUNTU — KODE LATIHAN JILID 2
# ==============================================================================
# Serial Petualangan Jaringan, Kontainer & Keamanan Siber
# Penulis : Ilham Sugiri
# Lisensi : GPL-3.0-or-later
# ==============================================================================

Direktori ini berisi skrip latihan pendukung cerita komik Piranha Ubuntu Jilid 2:

| File | Topik / Bab Terkait | Deskripsi Singkat |
| :--- | :--- | :--- |
| `11_cek_jaringan.sh` | **Bab 11 — Menghubungkan Dunia** | Diagnostik IP address, rute jaringan (`ip a`, `ping`, `traceroute`, `curl`). |
| `12_ssh_keygen_remote.sh` | **Bab 12 — Pintu Rahasia SSH** | Pembuatan pasangan kunci kriptografi SSH (Ed25519) untuk remote server aman. |
| `13_setup_ufw_firewall.sh` | **Bab 13 — Tembok Api Piranha** | Konfigurasi dasar dinding api pertahanan server dengan UFW (*Uncomplicated Firewall*). |
| `14_docker_kontainer_paus.sh` | **Bab 14 — Armada Paus Biru** | Menjalankan kontainer isolasi Docker pertama di Ubuntu. |
| `15_skrip_cron_otomasi.sh` | **Bab 15 — Sihir Skrip Otomasi** | Otomasi backup log sistem dan penjadwalan periodik via cron. |

---

### Cara Menjalankan:
Pastikan Anda memberikan hak akses eksekusi terlebih dahulu:
```bash
chmod +x *.sh
./11_cek_jaringan.sh
```
