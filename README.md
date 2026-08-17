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
