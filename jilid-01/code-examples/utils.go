/*
 * PIRANHA UBUNTU — utils.go (Bab 10: Final Repository Tersembunyi)
 *
 * Copyright (C) 2026 Ilham Sugiri <ilham.piranha08@gmail.com>
 * Desa Panggungharjo, Bantul, D.I. Yogyakarta
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 */

package main

import (
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	"time"
)

// TelemetryPayload menyimpan paket data yang dikirim ke cloud
type TelemetryPayload struct {
	StationID   string
	Timestamp   string
	BatteryPct  int
	StatusPesan string
}

// GenerateSignature menghasilkan tanda tangan kriptografi paket data
func GenerateSignature(secretKey string, data string) string {
	hasher := sha256.New()
	hasher.Write([]byte(secretKey + ":" + data))
	return hex.EncodeToString(hasher.Sum(nil))
}

func main() {
	fmt.Println("========================================================")
	fmt.Println(" [PIRANHA UBUNTU UTILITIES — utils.go (GPL-3.0)]       ")
	fmt.Println("========================================================")

	payload := TelemetryPayload{
		StationID:   "PIRANHA-UBUNTU-STATION-01",
		Timestamp:   time.Now().Format(time.RFC3339),
		BatteryPct:  100,
		StatusPesan: "Semua sistem monitoring gotong royong aktif!",
	}

	key := "OPEN_SOURCE_2026"
	sig := GenerateSignature(key, payload.StationID+payload.Timestamp)

	fmt.Printf("Station ID   : %s\n", payload.StationID)
	fmt.Printf("Waktu Kirim  : %s\n", payload.Timestamp)
	fmt.Printf("Baterai Surya: %d%%\n", payload.BatteryPct)
	fmt.Printf("Pesan Status : %s\n", payload.StatusPesan)
	fmt.Printf("SHA256 Sig   : %s\n", sig[:16]+"...")
	fmt.Println("\nSukses: Data telemetri siap disebarkan ke repositori bebas!")
}
