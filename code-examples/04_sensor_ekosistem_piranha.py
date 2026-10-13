#!/usr/bin/env python3
"""
==============================================================================
PIRANHA UBUNTU — Latihan 04: Simulator Sensor Ekosistem Sungai (Bab 7 & 8)
==============================================================================
Di Bab 7 dan 8, Riko dan Tux bersama Suku Piranha memasang sensor Ubuntu
bertenaga surya untuk memantau kejernihan air, pH, dan populasi piranha secara
real-time 24/7 tanpa polusi (100% energi hijau).
==============================================================================
"""

import time
import random
import datetime

def baca_sensor_sungai():
    # Simulasi data telemetri kualitas air sungai di Hutan Piranha
    ph = round(random.uniform(6.8, 7.5), 2)
    kejernihan = round(random.uniform(85.0, 99.5), 1)  # dalam persen
    suhu_air = round(random.uniform(24.0, 27.5), 1)     # dalam derajat Celsius
    status_solar = "100% HIJAU (Aktif)"
    piranha_terdeteksi = random.randint(12, 35)

    return {
        "timestamp": datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
        "ph": ph,
        "kejernihan": kejernihan,
        "suhu_air": suhu_air,
        "solar_power": status_solar,
        "populasi_piranha": piranha_terdeteksi
    }

def main():
    print("=" * 60)
    print(" 🐟 PIRANHA UBUNTU BOT — MONITORING EKOSISTEM SUNGAI v2.0 🌿")
    print("    Pusat Data Surya - Stasiun Sungai (Nol Polusi)")
    print("=" * 60)
    print("Memulai pemantauan sensor real-time (Tekan Ctrl+C untuk berhenti)...\n")

    try:
        for putaran in range(1, 6):
            data = baca_sensor_sungai()
            print(f"[{data['timestamp']}] Data Telemetri Stasiun #{putaran}:")
            print(f"  • pH Air           : {data['ph']} (Normal/Seimbang)")
            print(f"  • Kejernihan       : {data['kejernihan']}% (Bersih)")
            print(f"  • Suhu Air         : {data['suhu_air']} °C")
            print(f"  • Sumber Energi    : {data['solar_power']}")
            print(f"  • Deteksi Piranha  : {data['populasi_piranha']} ekor berenang damai")
            print("-" * 60)
            time.sleep(1.5)
            
        print("\n✅ Pemantauan selesai! Ekosistem sungai terpelihara dengan baik.")
        print("🌱 'Sungai bersih lagi! Terima kasih gotong royong teman-teman!'")
    except KeyboardInterrupt:
        print("\n[!] Monitoring dihentikan oleh pengguna.")

if __name__ == "__main__":
    main()
