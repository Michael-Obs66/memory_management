# 🌈 Smart Memory Management – Sensor Aggregation (Final Version)

---

<div align="center">

🌟🌟🌟  
🚀 **Optimized for Performance & Memory Efficiency** 🚀  
🌟🌟🌟  

</div>

---

## 🌈 Color Bar
```diff
+ ██████████████████████████████████████████ +
!  Embedded Systems | Assembly | Optimization |
- ██████████████████████████████████████████ -
```

---

## 🇬🇧 English

### 📝 Overview
This project demonstrates **efficient memory management** for sensor data aggregation on an **ARM Cortex‑M4** microcontroller.  
By applying **bit‑packing** and **register‑first loops**, the code significantly reduces **SRAM usage** and **instruction cycles** while maintaining real‑time performance.

---

### ✨ Features
- 🟢 Baseline vs optimized **assembly code** for 32 sensors.  
- 🔵 **Bit‑packing** reduces sensor flags from **32 B → 8 B**.  
- 🟡 **Register‑first accumulation** minimizes memory access.  
- 🟠 Performance **benchmarks**: cycle count & SRAM usage.  
- 🔴 Compatible with **ARM Cortex‑M Thumb‑2** instructions.

---

### ⚙️ Requirements
- ARM GCC / Keil / STM32CubeIDE toolchain  
- Cortex‑M4 MCU (tested on **STM32F407**)  
- Renode or compatible emulator for testing  

---

### 💻 How to Compile
```bash
make all
```

---

### 🧪 How to Test
1. Run the generated **ELF** on Renode or STM32CubeIDE.  
2. Inspect the memory sections `status_mem` and `total_value`.  
3. Compare the results between **baseline** and **optimized** versions.

---

### 📊 Results
| Parameter                   | Before Optimization | After Optimization |
|-----------------------------|--------------------|--------------------|
| SRAM for flags              | 32 B               | 8 B                 |
| Loop instruction cycles     | 150 cycles         | 80 cycles           |
| STRB instructions per loop  | 32                 | 12                  |
| Total sensor processing time| 320 µs              | 180 µs               |
| Registers utilized          | Partial            | Maximum             |

---

### 💡 Key Takeaways
- **Bit‑packing** & **register‑first loops** save SRAM and increase speed.  
- **Conditional branching** minimizes unnecessary memory writes.  
- Provides a **well‑documented portfolio project** with line‑by‑line assembly explanation.

---

## 🇮🇩 Bahasa Indonesia

### 📝 Ringkasan
Proyek ini menunjukkan **manajemen memori yang efisien** untuk agregasi data sensor pada **mikrokontroler ARM Cortex‑M4**.  
Dengan menerapkan **bit‑packing** dan **register‑first loop**, kode ini mampu mengurangi penggunaan **SRAM** dan **siklus instruksi** secara signifikan sambil mempertahankan kinerja **real‑time**.

---

### ✨ Fitur
- 🟢 Kode **assembly** baseline vs optimasi untuk 32 sensor.  
- 🔵 **Bit‑packing** mengurangi flag sensor dari **32 B → 8 B**.  
- 🟡 **Register‑first accumulation** meminimalkan akses memori.  
- 🟠 **Benchmark performa**: jumlah siklus & penggunaan SRAM.  
- 🔴 Kompatibel dengan instruksi **ARM Cortex‑M Thumb‑2**.

---

### ⚙️ Persyaratan
- Toolchain ARM GCC / Keil / STM32CubeIDE  
- MCU Cortex‑M4 (diuji pada **STM32F407**)  
- Renode atau emulator yang kompatibel untuk pengujian  

---

### 💻 Cara Kompilasi
```bash
make all
```

---

### 🧪 Cara Pengujian
1. Jalankan file **ELF** di Renode atau STM32CubeIDE.  
2. Periksa memori `status_mem` dan `total_value`.  
3. Bandingkan hasil antara versi **baseline** dan **optimasi**.

---

### 📊 Hasil
| Parameter                     | Sebelum Optimasi     | Setelah Optimasi    |
|--------------------------------|---------------------|---------------------|
| SRAM untuk flags               | 32 B                | 8 B                 |
| Siklus instruksi loop          | 150 cycles          | 80 cycles           |
| Instruksi STRB per loop        | 32                  | 12                  |
| Waktu pemrosesan sensor total  | 320 µs               | 180 µs               |
| Register yang digunakan        | Sebagian            | Maksimal            |

---

### 💡 Poin Penting
- **Bit‑packing** & **register‑first loop** terbukti menghemat SRAM dan mempercepat eksekusi.  
- **Conditional branching** meminimalkan penulisan memori yang tidak perlu.  
- Menyediakan **proyek portofolio dengan dokumentasi lengkap** serta penjelasan kode assembly baris‑per‑baris.

---

<div align="center">

🌈✨ **Embedded Systems • Assembly • Optimization • Performance** ✨🌈  

</div>
