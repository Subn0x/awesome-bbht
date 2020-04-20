# awesome-bbht
A bash script that will automatically install a list of bug hunting tools I use, for recon, expolition, etc. (minus brup, and a few others)

## Install

```sh

git clone https://github.com/0xApt/awesome-bbht.sh
cd awesome-bbht
chmod +x awesome-bbht.sh
./awesome-bbht.sh
```

the list of tools downloaded: 

>awscli

## Subdomain-enum

- [aquatone](https://github.com/michenriksen/aquatone) - A Tool for Domain Flyovers

- [knockpy](https://github.com/guelfoweb/knock) - Knockpy is a python tool designed to enumerate subdomains on a target domain through a wordlist.

- [subbrute](https://github.com/TheRook/subbrute) - A DNS meta-query spider that enumerates DNS records, and subdomains.

- [assetfinder](https://github.com/tomnomnom/assetfinder) - Find domains and subdomains related to a given domain

- [domain-finder](https://raw.githubusercontent.com/gwen001/pentest-tools/master/domain-finder.py)

- [rsdl](https://github.com/tismayil/rsdl) - Subdomain Scan with the Ping Method

- [subDomainizer](https://github.com/nsonaniya2010/SubDomainizer) - A tool to find subdomains and interesting things hidden inside, external Javascript files of page, folder, and Github.

- [domain_analyzer](https://github.com/eldraco/domain_analyzer) - Analyze the security of any domain by finding all the information possible. Made in python.

- [massdns](https://github.com/blechschmidt/massdns) - A high-performance DNS stub resolver for bulk lookups and reconnaissance (subdomain enumeration)

- [subfinder](https://github.com/subfinder/subfinder) - Subfinder is a subdomain discovery tool that discovers valid subdomains for websites. Designed as a passive framework to be useful for bug bounties and safe for penetration testing. 

- [amass](https://github.com/caffix/amass) - In-depth Attack Surface Mapping and Asset Discovery

- [sub.sh](https://github.com/cihanmehmet/sub.sh) - Online Subdomain Detect Script

- [sublist3r](https://github.com/aboul3la/Sublist3r) - Fast subdomains enumeration tool for penetration testers

- [Sudomy](https://github.com/Screetsec/Sudomy) - Sudomy is a subdomain enumeration tool, created using a bash script, to analyze domains and collect subdomains in fast and comprehensive way . Report output in HTML or CSV format https://github.com/Screetsec/

## Content Discovery

### API

- [secretx](https://github.com/xyele/secretx) - Extracting api keys and secrets by requesting each url in your list.


### AWS S3 Bucket

- [s3brute](https://github.com/ghostlulzhacks/s3brute) - s3 brute force tool 

- [s3-bucket-finder](https://github.com/gwen001/s3-buckets-finder) - Find aws s3 buckets and extract datas. 

- [bucket-stream](https://github.com/eth0izzle/bucket-stream) - Find interesting Amazon S3 Buckets by watching certificate transparency logs.

- [slurp](https://github.com/nuncan/slurp) - Enumerate S3 buckets via certstream, domain, or keywords.

- [lazys3](https://github.com/nahamsec/lazys3) - A Ruby script to bruteforce for AWS s3 buckets using different permutations.

- [cred_scanner](https://github.com/disruptops/cred_scanner) - 
A simple file-based scanner to look for potential AWS access and secret keys in files

- [DumpsterDiver](https://github.com/securing/DumpsterDiver) - A tool used to analyze big volumes of various file types in search of harcoded secrets like keys (AWS Access Key, Azuer Share Key or SSH keys) or passwords.

- [S3Scanner](https://github.com/sa7mon/S3Scanner) - Scan for open AWS S3 buckets and dump the contents

### Inspecting JS Files

- [JSParser](https://github.com/nahamsec/JSParser) - A python 2.7 script using Tornado and JSBeautifier to parse relative URLs from JavaScript files. 

- [relative-url-extractor](https://github.com/jobertabma/relative-url-extractor) - A small tool that extracts relative URLs from a file.

- [github-search](https://raw.githubusercontent.com/gwen001/github-search/master/github-subdomains.py)
- [sub.js](https://github.com/lc/subjs) - A tool to get javascript files from a list of URLS or subdomains
- [LinkFinder](https://github.com/GerbenJavado/LinkFinder) - A python script that finds endpoints in JavaScript files

### Code Audit

- [Cobra](https://github.com/WhaleShark-Team/cobra) - Source Code Security Audit (源代码安全审计)

### Crawlers

- [Crawler](https://github.com/ghostlulzhacks/crawler) - Crawl website extract links

- [waybackMachine](https://github.com/ghostlulzhacks/waybackMachine) - Use wayback Machine data to pull a list of paths.

- [meg](https://github.com/tomnomnom/meg) - Fetch many paths for many hosts - without killing the hosts

- [hakrawler](https://github.com/hakluke/hakrawler) - Simple, fast web crawler designed for easy, quick discovery of endpoints and assets within a web application

- [igoturls](https://github.com/xyele/igoturls) - WaybackURLS + OtxURLS + CommonCrawl

### Directory Bruteforcers & Fuzzers

- [gobuster](https://github.com/OJ/gobuster) - Directory/File, DNS and VHost busting tool written in Go

- [ffuf](https://github.com/ffuf/ffuf) - Fast web fuzzer written in Go

- [dirsearch](https://github.com/maurosoria/dirsearch) - Web path scanner

## Exploitation

### Subdomain Takeover

- [subjack](https://github.com/haccer/subjack) - Subdomain Takeover tool written in Go

- [subdomain-takeover](https://github.com/antichown/subdomain-takeover) - Subdomain Takeover Scanner | Subdomain Takeover Tool | by 0x94

- [takeover](https://github.com/m4ll0k/takeover) - Sub-Domain TakeOver Vulnerability Scanner

- [SubOver](https://github.com/Ice3man543/SubOver) - A Powerful Subdomain Takeover Tool 


### Google Cloud Storage

- [GCPBucketBrute](https://github.com/RhinoSecurityLabs/GCPBucketBrute) - A script to enumerate Google Storage buckets, determine what access you have to them, and determine if they can be privilege escalated.

### Digital Ocean

- [spaces-finder](https://github.com/appsecco/spaces-finder) - A tool to hunt for publicly accessible DigitalOcean Spaces

### XXE

- [XXEinjector](https://github.com/enjoiz/XXEinjector) - Tool for automatic exploitation of XXE vulnerability using direct and different out of band methods.

### CSRF

- [XSRFProbe](https://github.com/0xInfection/XSRFProbe) - The Prime Cross Site Request Forgery (CSRF) Audit and Exploitation Toolkit.

### Command Injection

- [commix](https://github.com/commixproject/commix) - Automated All-in-One OS command injection and exploitation tool. https://commixproject.com


### SQLi

- [sqlmap](https://github.com/sqlmapproject/sqlmap) - Automatic SQL injection and database takeover tool http://sqlmap.org

- [sqliv](https://github.com/the-robot/sqliv) - massive SQL injection vulnerability scanner

- [sqlmate](https://github.com/s0md3v/sqlmate) - A friend of SQLmap which will do what you always expected from SQLmap.

### XSS

- [XSS-Finder](https://github.com/haroonawanofficial/XSS-Finder) - World's most Powerful and Advanced Cross Site Scripting Software

- [XSStrike](https://github.com/s0md3v/XSStrike) - Most advanced XSS scanner.

- [XSS-keylogger](https://github.com/hadynz/xss-keylogger) - A keystroke logger to exploit XSS vulnerabilities in a site - for my personal Educational purposes only

### Open Redirect

- [open-redirect-scanner](https://github.com/ak1t4/open-redirect-scanner) - open redirect subdomains scanner

## CMS

- [CMSmap](https://github.com/Dionach/CMSmap) - CMSmap is a python open source CMS scanner that automates the process of detecting security flaws of the most popular CMSs.

- [CMSeeK](https://github.com/Tuhinshubhra/CMSeeK) - CMS Detection and Exploitation suite - Scan WordPress, Joomla, Drupal and over 170 other CMSs

- [wpscan](https://github.com/wpscanteam/wpscan) - WPScan is a free, for non-commercial use, black box WordPress Vulnerability Scanner written for security professionals and blog maintainers to test the security of their WordPress websites

- [Joomscan](https://github.com/rezasp/joomscan) - OWASP Joomla Vulnerability Scanner Project

- [Droopescan](https://github.com/droope/droopescan) - 
A plugin-based scanner that aids security researchers in identifying issues with several CMSs, mainly Drupal & Silverstripe.

- [Drupwn](https://github.com/immunIT/drupwn) - Drupal enumeration & exploitation tool
 

## Frameworks

- [Sn1per](https://github.com/1N3/Sn1per) - Automated pentest framework for offensive security experts

- [XRay](https://github.com/evilsocket/xray) - XRay is a tool for recon, mapping and OSINT gathering from public networks.

- [datasploit](https://github.com/DataSploit/datasploit) - An #OSINT Framework to perform various recon techniques on Companies, People, Phone Number, Bitcoin Addresses, etc., aggregate all the raw data, and give data in multiple formats.

- [Osmedeus](https://github.com/j3ssie/Osmedeus) - Fully automated offensive security framework for reconnaissance and vulnerability scanning

- [TIDoS-Framework](https://github.com/0xinfection/tidos-framework) - The Offensive Manual Web Application Penetration Testing Framework.


- [discover](https://github.com/leebaird/discover) - Custom bash scripts used to automate various penetration testing tasks including recon, scanning, parsing, and creating malicious payloads and listeners with Metasploit.

- [lazyrecon](https://github.com/nahamsec/lazyrecon) - This script is intended to automate your reconnaissance process in an organized fashion

- [003Recon](https://github.com/003random/003Recon) - Some tools to automate recon - 003random 

- [LazyRecon](https://github.com/capt-meelo/LazyRecon) - An automated approach to performing recon for bug bounty hunting and penetration testing.


## Wordlists

- [SecLists](https://github.com/danielmiessler/SecLists) - SecLists is the security tester's companion. It's a collection of multiple types of lists used during security assessments, collected in one place. List types include usernames, passwords, URLs, sensitive data patterns, fuzzing payloads, web shells, and many more.

- [Jhaddix Wordlist](https://gist.githubusercontent.com/jhaddix/b80ea67d85c13206125806f0828f4d10/raw/c81a34fe84731430741e0463eb6076129c20c4c0/content_discovery_all.txt)

- [Nahamsec list](https://gist.githubusercontent.com/Leoid/38984017886cd058a314dfda5c3d6c6e/raw/1ee5fe1da82a3ae92b0c486f86fbe26bbdff1e06/Nahamsec%2520Thread)

## Other

- [altdns](https://github.com/infosec-au/altdns) - Generates permutations, alterations and mutations of subdomains and then resolves them

- [nmap](https://nmap.org/) - network mapper

- [Blazy](https://github.com/s0md3v/Blazy) - Blazy is a modern login bruteforcer which also tests for CSRF, Clickjacking, Cloudflare and WAF. 

- [httprobe](https://github.com/tomnomnom/httprobe) - 
Take a list of domains and probe for working HTTP and HTTPS servers








