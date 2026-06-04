# i2c_exec

Lenovo Server I2C Dump Log Parser

A PowerShell-based utility for parsing Lenovo server I2C dump logs and decoding CPLD register information into human-readable reports.

---

## Overview

`i2c_exec` is a debugging utility designed for Lenovo server platforms. It parses raw I2C dump logs collected from CPLD devices and decodes register contents into readable field-level information.

The tool can also compare multiple SLEDs and highlight register differences to simplify hardware debugging and validation.

---

## Directory Structure

```text
i2c_exec
│
├── config/             # Configuration files
├── log_input/          # Input I2C dump logs
├── log_output/         # Generated reports
├── parser/             # decoding I2C
├── regdb/              # Register database definitions
├── Testing File/       # Sample logs for validation
│
├── main.ps1            # Main program
├── execute result.bat  # Quick execution batch file
├── Userguide.docx      # User guide
└── README.md
```

---

## Features

- Parse raw `i2cdump` log files
- Automatically identify devices by Bus/Address
- Decode CPLD registers and bit fields
- Support PASS/FAIL verification
- Compare multiple SLED dumps
- Highlight register pass and fail
- Easily expandable register database

---

## Supported Devices

| Device      | Bus      | Address |
|-------------|----------|---------|
| DC-SCM CPLD | 15       | 0x60    |
| GLOBAL CPLD | 6        | 0x30    |
| HPM CPLD1   | 5        | 0x30    |
| HPM CPLD2   | 5        | 0x31    |

Additional devices can be added through the register database.

---

## Supported Configurations

- Support 2s/4s/8s


---

## Input Format

The parser accepts standard Linux `i2cdump` output.

Example:

```bash
sle
i2cdump -y -f 5 0x30
i2cdump -y -f 15 0x60
```
---

