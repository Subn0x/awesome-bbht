#A list that will automatically download cools tools that I find interesting
#tools will be downloaded in side of the /opt directory 






#############################################

#               Subdomain Enum              #

#############################################


#/opt/subdomain-enum


#knockpy / Knock Subdomain Scan 
sudo apt-get install python-dnspython
git clone https://github.com/guelfoweb/knock.git /opt/subdomain-enum

#subbrute / A DNS meta-query spider that enumerates DNS records, and subdomains.
git clone https://github.com/TheRook/subbrute.git /opt/subdomain-enum

#assetfinder / Find domains and subdomains related to a given domain
https://github.com/tomnomnom/assetfinder

#domain-finder
https://github.com/gwen001/pentest-tools/blob/master/domain-finder.py

#rsdl / Subdomain Scan with the Ping Method
https://github.com/tismayil/rsdl

#subDomainizer / A tool to find subdomains and interesting things hidden inside, external Javascript files of page, folder, and Github.
git clone https://github.com/nsonaniya2010/SubDomainizer.git /opt/subdomain-enum
pip3 install -r requirements.txt 

#domain_analyzer / Analyze the security of any domain by finding all the information possible. Made in python.
git clone https://github.com/eldraco/domain_analyzer.git /opt/subdomain-enum


#massdns / A high-performance DNS stub resolver for bulk lookups and reconnaissance (subdomain enumeration)
https://github.com/blechschmidt/massdns

#subfinder / Subfinder is a subdomain discovery tool that discovers valid subdomains for websites. Designed as a passive framework to be useful for bug bounties and safe for penetration testing. 
https://github.com/projectdiscovery/subfinder

#amass / In-depth Attack Surface Mapping and Asset Discovery
https://github.com/OWASP/Amass

#sub.sh / Online Subdomain Detect Script
https://github.com/cihanmehmet/sub.sh

#sublist3r / Fast subdomains enumeration tool for penetration testers
https://github.com/aboul3la/Sublist3r






#############################################

#               Content Discovery            #

#############################################


#/opt/content-discovery




###########################

#          API            # 

###########################

# secretx / Extracting api keys and secrets by requesting each url in your list. 
git clone https://github.com/xyele/secretx.git /opt/content-discovery/api







###########################

#      AWS S3 Bucket      #

###########################

#/opt/content-discovery/AWS

#s3 bruteforce
https://github.com/ghostlulzhacks/s3brute

#gwen001 / Find aws s3 buckets and extract data
https://github.com/gwen001/s3-buckets-finder

#bucket-stream / Finding interesting Amazon s3 Buckets by watching certificate transparency logs
https://github.com/eth0izzle/bucket-stream

#slurp / Enumerate s3 Buckets via certstream, domain, or keywords
https://github.com/nuncan/slurp

#lazys3 / A Ruby script to bruteforce for AWS s3 buckets using different permutations 
https://github.com/nahamsec/lazys3

#cred_scanner / A simple file-based scanner look for potential AWS acces and secret keys in files
https://github.com/disruptops/cred_scanner

#DumpsterDiver / A tool used to analyze big volumes of various file types in search of harcoded secrets like keys (AWS Access Key, Azuer Share Key or SSH keys) or passwords.
https://github.com/securing/DumpsterDiver

#S3Scanner / Scan for open AWS S3 buckets and dump the contents
https://github.com/sa7mon/S3Scanner







###########################

#    Inspecting JS Files  #

###########################

#/opt/content-discovery/JS

#Extracts relative URLS from a file
relative-url-extractor https://github.com/jobertabma/relative-url-extractor

#Parse Endpoints in JS files
linkfinder https://github.com/GerbenJavado/LinkFinder

#find endpoints from github 
github-subdomains.py https://github.com/gwen001/github-search/blob/master/github-subdomains.py

#go tool
#subjs / A tool to get javascript files from a list of URLS or subdomains
https://github.com/lc/subjs


#LinkFinder / A python script that finds endpoints in Javascript files
https://github.com/GerbenJavado/LinkFinder







###########################

#         Code Audit       #

###########################

#/opt/content-discovery/code_audit

#Cobra / Source Code Security Audit
https://github.com/WhaleShark-Team/cobra







###########################

#         Crawler         #

###########################

#/opt/content-discovery/crawlers

#Crawl site and extract links
crawler.py https://github.com/ghostlulzhacks/crawler/tree/master

#Get urls from wayback
https://github.com/ghostlulzhacks/waybackMachine

#Commoncrawl / Gathers urls from common crawl
https://github.com/ghostlulzhacks/commoncrawl

#meg / Fetch many paths for many hosts - without killing the hosts
https://github.com/tomnomnom/meg

#hakrawler / Simple, fast web crawler designed for easy, quick discovery of endpoints and assets within a web application
https://github.com/hakluke/hakrawler

#igoturls / WaybackURLS + OtxURLS + CommonCrawl
https://github.com/xyele/igoturls







###########################

#   Broken Link Hijacking  #

###########################

#/opt/content-disocvery/blh

#broken-link-checker / Find broken links, missing images, etc within your HTML
https://github.com/stevenvachon/broken-link-checker







###########################

#  Directory Bruteforcers #

#           &             #

#         Fuzzers         #
###########################

#/opt/content-discovery/fuzz

#gobuster / Directory/File, DNS and VHost busting tool written in Go
https://github.com/OJ/gobuster


#Go tool
#ffuf / Fast web fuzzer written in Go
https://github.com/ffuf/ffuf









#############################################

#                 Exploitation              #

#############################################

#/opt/exploitation



###########################

#           API           #

###########################

#/opt/exploition/api

#Imperva / Imperva's customizable API attack tool takes an API specification as an input, generates and runs attacks that are based on it as an output.
https://github.com/imperva/automatic-api-attack-tool







###########################

#   Subdomain Takeover     #

###########################

#/opt/exploitation/subtakeover

subjack https://github.com/haccer/subjack

#antichown-subdomain-takeover / Subdomain Takeover Scanner | Subdomain Takeover Tool | by 0x94
https://github.com/antichown/subdomain-takeover


#takeover / Sub-Domain Takeover Vulnerability Scanner
https://github.com/m4ll0k/takeover







###########################

#   Google Cloud Storage  #

###########################

#/opt/exploitation/GoogleCloudStorage

#GCPBucketBrute / A script to enumerate Google Storage buckets, determine what access you have to them, and determine if they can be privilege escalated.
https://github.com/RhinoSecurityLabs/GCPBucketBrute







###########################

#      Digital Ocean      #

###########################

#/opt/exploitation/DigitalOcean

#spaces-finder / A tool to hunt for publicly accessible DigitalOcean Spaces
https://github.com/appsecco/spaces-finder







###########################

#          XXE            #

###########################

#/opt/exploitation/XXE

#XXEinjector / XXE Autoexploitation tool:
https://github.com/enjoiz/XXEinjector






###########################

#          CSRF            #

###########################

#/opt/exploitation/CSRF

#XSRFProbe / The Prime Cross Site Request Forgery Audit and Exploitation Toolkit
https://github.com/0xInfection/XSRFProbe






###########################

#     Command injection   #

###########################

#/opt/exploitation/Command-injection

#Commix / Automated All-in-One OS command injection and exploitaion tool
https://github.com/commixproject/commix






###########################

#          SQLi           #

###########################

#/opt/exploitation/SQLi

#sqlmap / Automatic SQL injection and database takeover tool
https://github.com/sqlmapproject/sqlmap

#sqliv / massive SQL injection vulnerability scanner 
https://github.com/the-robot/sqliv 

#sqlmate / A friend of SQLmap which will do what you always expected from SQLmap.
https://github.com/s0md3v/sqlmate 






###########################

#           XSS           #

###########################

#/opt/exploitation/XSS

#XSS-Finder / World's most Powerful and Advanced Cross Site Scripting Software
https://github.com/haroonawanofficial/XSS-Finder


#XSS-Strike / Most advanced XSS Scanner
https://github.com/s0md3v/XSStrike

#XSS-keylogger / A keystroke logger to exploit XSS Vulnerabilities in a site - for my personal Educational purposes only
https://github.com/hadynz/xss-keylogger






###########################

#      Open Redirect      #

###########################

#/opt/exploitation/Open-redirect

#open-redirect-scanner / open redirect subdomains scanner
https://github.com/ak1t4/open-redirect-scanner







#############################################

#                Frameworks                 #

#############################################

#/opt/exploitaion/Frameworks

#Sn1per / Automated pentest framework for offensive security experts
https://github.com/1N3/Sn1per/

#XRay / XRay is a tool for recon, mapping and OSINT gathering from public networks
https://github.com/evilsocket/xray

#datasploit / An #OSINT Framework to perform various recon techniques on Companies, People, Phone Number, Bitcoin Addresses, etc., aggregate all the raw data, and give data in multiple formats. 
https://github.com/DataSploit/datasploit

#Osmedeus / Fully automated offensive security framework for reconnaissace and vulnerabilitly scanning 
https://github.com/j3ssie/Osmedeus

#TIDOS-Framework / The Offensive Manual Web Application Penetration Testing Framework
https://github.com/0xInfection/TIDoS-Framework

#Discover by Lee Baird / Custom bash scripts used to automate various penetration testing tasks including recon, scanning, parsing, and creating malicious payloads and listeners with Metasploit. 
https://github.com/leebaird/discover

#Lazyrecon / This script is intended to automate your reconnaissance process in an organized fashion
https://github.com/nahamsec/lazyrecon

#003Recon / Some tools to automate recon - 003random
https://github.com/003random/003Recon

#LazyRecon / An automated approach to perfroming recon for bug bounty hunting and penetration testing
https://github.com/capt-meelo/LazyRecon







#############################################

#                  Other                    #

#############################################

#/opt/other

#subdomain permutation
altdns https://github.com/infosec-au/altdns




#Blazy / Blazy is a modern login bruteforcer which also tests for CSRF, Clickjacking, Cloudflare and WAF 
https://github.com/s0md3v/Blazy




#httprobe / Take a list of domains and probe for working HTTP and HTTPS servers
https://github.com/tomnomnom/httprobe



###########################

#         Wordlists        #

###########################

#Combined-Wordlists / A combined wordlists for files and directory discovery
https://github.com/phspade/Combined-Wordlists

#Seclists
https://github.com/danielmiessler/SecLists/tree/master/Discovery/Web-Content

#Jason Haddix Wordlists
https://gist.githubusercontent.com/jhaddix/b80ea67d85c13206125806f0828f4d10/raw/c81a34fe84731430741e0463eb6076129c20c4c0/content_discovery_all.txt

#Nahamsec list
https://gist.githubusercontent.com/Leoid/38984017886cd058a314dfda5c3d6c6e/raw/1ee5fe1da82a3ae92b0c486f86fbe26bbdff1e06/Nahamsec%2520Thread



