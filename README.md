# Massmap

**Massmap** is a reconnaissance helper designed for HTB / VPN environments.  
It combines an optional Masscan discovery with a configurable number of full-port Nmap scans, then intelligently compares the results to surface consistent, newly-appeared, and flapping ports.

### Features

- **Smart interface selection** – Automatically picks the best interface (usually `tun0`) based on the route to the target. Can be forced with `-i`.
- **Optional Masscan** – Fast initial discovery (can be skipped).
- **Configurable Nmap rounds** – Run anywhere from 1 to 10 independent full-port Nmap scans (`-c`).
- **Service scan toggle** – Choose whether to run `-sV -sC` or pure port discovery (`-s` / `--no-service`).
- **Rate control** – Adjustable packet rate for both Masscan and Nmap.
- **Advanced comparison**:
  - Ports confirmed by ≥ 2 scanners
  - Newly appeared open ports (were filtered/closed/missing earlier)
  - Flapping ports
  - Ports found only by Masscan
- Clean, timestamped summary file + colored terminal output
- Recommended ports string ready for further enumeration

### Installation

```bash
git clone https://github.com/Demgainschill/massmap.git
cd massmap
chmod +x install.sh
./install.sh

# Standard (Masscan + 2 Nmap scans with service detection)
massmap swagshop 10.129.229.138

# Faster & more reliable on HTB VPN
massmap -r 1000 swagshop 10.129.229.138

# 3 pure port scans, no service detection
massmap -s -c 3 target 10.10.11.50

# Nmap-only mode, 4 rounds
massmap -n -c 4 box 10.129.1.23

# Force interface + custom rate
massmap -i tun0 -r 1500 machine 10.129.42.42

### Options

| Flag                      | Description                                      | Default       |
|---------------------------|--------------------------------------------------|---------------|
| `-n`, `--nmap-only`       | Skip Masscan                                     | off           |
| `-s`, `--no-service`      | Skip `-sV -sC` (port discovery only)             | off           |
| `-c`, `--count N`         | Number of Nmap scans (1–10)                      | `2`           |
| `-r`, `--rate N`          | Packets per second                               | `2000`        |
| `-i`, `--interface IFACE` | Force network interface                          | auto-detect   |
| `-h`, `--help`            | Show help                                        | —             |

```
### Screenshot

![Screenshot](https://github.com/user-attachments/assets/9018ed0d-d165-4770-9464-0863334525fa)






