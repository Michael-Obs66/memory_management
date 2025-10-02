# Smart Memory Management – Sensor Aggregation (Final Version)

## Studi Kasus
MCU Cortex-M4 membaca 32 sensor, menghitung total, dan menyimpan status sensor 2-bit. Sistem harus hemat SRAM dan cepat.

## Batasan Masalah
1. Memori terbatas (SRAM 64 KB) → bit-packing digunakan.
2. Jumlah sensor tetap (32 sensor) → loop dioptimalkan untuk jumlah ini.
3. Arsitektur MCU spesifik → ARM Cortex-M Thumb-2 only.
4. Keterbatasan debugging → bit-packing register-first loop menyulitkan trace.
5. Kecepatan real-time → sensor dibaca tiap 10 ms.

## Rumusan Masalah
- Total sensor dihitung tanpa ekstra SRAM
- Status sensor disimpan hemat memori
- Optimasi instruksi assembly

## Strategi dan Solusi
- Bit-packing flags → hemat memori
- Register-first accumulation → kurangi cycle access memory
- Conditional branch → tulis SRAM hanya bila perlu
- Gunakan instruksi Thumb-2 seperti LDRB, STRB, ORR, CMP, ADD, BNE

## Penjelasan Strategi dan Solusi
- Bit-packing hemat memori, 32 sensor → 8 byte
- Register-first loop → lebih cepat
- Conditional branch → minimalkan instruksi STRB
- Instruksi ARM Cortex-M Thumb-2 dipakai secara strategis

## Metode
1. Tulis baseline code sensor 32 byte
2. Terapkan bit-packing → 8 byte SRAM
3. Register-first accumulation
4. Test di STM32F407 (Cortex-M4) & sensor field
5. Profiling cycle count & SRAM

## Methodology
- Hardware: Cortex-M4 MCU di panel monitoring lapangan
- Software: ARM GCC / Keil / STM32CubeIDE
- Profiling: Cycle counter & SRAM usage
- Validasi: Sensor reading dibandingkan PLC master

## Hasil Perbandingan Sebelum vs Sesudah Optimasi

| Parameter                   | Sebelum Optimasi | Setelah Optimasi |
|------------------------------|----------------|----------------|
| SRAM untuk flags             | 32 byte        | 8 byte         |
| Cycle instruksi loop         | 150 cycles     | 80 cycles      |
| Instruksi STRB per loop      | 32             | 12             |
| Total sensor processing time | 320 µs         | 180 µs         |
| Register digunakan           | sebagian       | maksimal       |

## Kesimpulan
- Bit-packing & register-first loop terbukti hemat SRAM & lebih cepat
- Conditional branch meminimalkan write memory
- Portofolio siap GitHub, dokumentasi lengkap, kode assembly per baris
