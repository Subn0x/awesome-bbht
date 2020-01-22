# awesome-bbht
A bash script that will automatically install a list of bug hunting tools I use, for recon, expolition, etc. (minus brup, and a few others)

the list of tools downloaded: 

>awscli

## Subdomain-enum

- [aquatone](https://nodejs.org/)

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

### Google Cloud Storage

- [GCPBucketBrute](https://github.com/RhinoSecurityLabs/GCPBucketBrute) - A script to enumerate Google Storage buckets, determine what access you have to them, and determine if they can be privilege escalated.

### Digital Ocean

- [spaces-finder](https://github.com/appsecco/spaces-finder) - A tool to hunt for publicly accessible DigitalOcean Spaces

###XXE

- [XXEinjector](https://github.com/enjoiz/XXEinjector) - Tool for automatic exploitation of XXE vulnerability using direct and different out of band methods.








