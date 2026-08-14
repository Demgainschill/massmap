# Massmap

Massmap is a simple reconnaissance tool that runs Masscan followed by two full Nmap scans against a target.  

By comparing results across multiple scans, it helps identify inconsistent or delayed port responses, newly discovered ports, and ports that can be considered more reliable when detected more than once.

### Features

- Optional fast Masscan discovery
- Two independent full-port Nmap scans (`-sV -sC -p-`)
- Ability to skip Masscan and run Nmap-only mode
- Automatic comparison between scan results
- Detects newly appeared ports
- Shows ports found by only one scanner
- Clean and readable `.nmap` output

### Installation

```bash
git clone https://github.com/Demgainschill/massmap.git
cd massmap
chmod +x install.sh
./install.sh

massmap <output_name> <target_ip>

Nmap-only mode
massmap -n <output_name> <target_ip>
massmap --nmap-only <output_name> <target_ip>

Example
massmap swagshop 10.129.229.138
massmap -n swagshop 10.129.229.138

