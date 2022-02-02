#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y git
sudo apt-get install -y rename
sudo apt-get install -y xargs


#create a directory for tools
mkdir /opt/tools
echo "done"

#install go
if [[ -z "$GOPATH" ]];then
echo "It looks like go is not installed, would you like to install it now"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
                yes)

					echo "Installing Golang"
					wget https://dl.google.com/go/go1.17.6.linux-amd64.tar.gz
					sudo tar -xvf go1.17.6.linux-amd64.tar.gz
					sudo mv go /usr/local
					export GOROOT=/usr/local/go
					export GOPATH=$HOME/go
					export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
					echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
					echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
					echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	
					source ~/.bash_profile
					sleep 1
					break
					;;
				no)
					echo "Please install go and rerun this script"
					echo "Aborting installation..."
					exit 1
					;;
	esac	
done
fi


#create content-discovery, subdomain, and other directories
echo "Creating /opt/tools/subdomain-enum"
mkdir /opt/tools/subdomain-enum
echo "Creating /opt/tools/content-discovery"
mkdir /opt/tools/content-discovery
echo "Creating /opt/tools/other"
mkdir /opt/tools/other 
echo "Creating /opt/tools/CloudFlare"
mkdir /opt/tool/CloudFlare


#Don't forget to set up AWS credentials!
echo "Don't forget to set up AWS credentials!"
pip install awscli --upgrade --user
echo "Don't forget to set up AWS credentials!"


#install aquatone
echo "Installing Aquatone"
go get github.com/michenriksen/aquatone
echo "done"


#install knockpy
echo "Installing knockpy"
git clone https://github.com/guelfoweb/knock.git /opt/tools/subdomain-enum/knockpy
echo "done"

#install dnsenum
echo "Installing dnsenum"
sudo apt install libtest-www-mechanize-perl libnet-whois-ip-perl
git clone https://github.com/fwaeytens/dnsenum /opt/tools/subdomain-enum/dnsenum


#install subbrute
echo "Installing subbrute"
git clone https://github.com/TheRook/subbrute.git /opt/tools/subdomain-enum/subbrute
echo "done"

#install assetfinder
echo "Installing asset finder"
go get -u github.com/tomnomnom/assetfinder
echo "done"

#install domain-finder
echo "Installing domain-finder"
cd /opt/tools/subdomain-enum
wget https://raw.githubusercontent.com/gwen001/pentest-tools/master/domain-finder.py 
echo "done"

#install rsdl
echo "Installing rsdl"
go get github.com/tismayil/rsdl
go build rsdl.go

#install subDomainizer
echo "Installing subDomainizer"
git clone https://github.com/nsonaniya2010/SubDomainizer.git /opt/tools/subdomain-enum/subDomainizer
echo "done"

#install domain_analyzer
echo "Installing domain_analyzer"
git clone https://github.com/eldraco/domain_analyzer.git /opt/tools/subdomain-enum/domain_analyzer
echo "done"

#install massdns
echo "Installing massdns"
git clone https://github.com/blechschmidt/massdns.git /opt/tools/subdomain-enum/massdns
echo "done"

#install subfinder
echo "Installing subfinder"
git clone https://github.com/subfinder/subfinder.git /opt/tools/subdomain-enum/subfinder
cd /opt/tools/subdomain-enum/subfinder
go get github.com/subfinder/subfinder
echo "done"

#install amass
echo "Installing amass"
go get -u github.com/caffix/amass
echo "done"

#install sub.sh
echo "Installing sub.sh"
sudo apt-get install jq
git clone https://github.com/cihanmehmet/sub.sh.git /opt/tools/subdomain-enum/sub.sh
echo "done"

#install sublist3r
echo "Installing Sublist3r"
git clone https://github.com/aboul3la/Sublist3r.git /opt/tools/subdomain-enum/Sublist3r
cd /opt/tools/subdomain-enum/Sublist3r
pip install -r requirements.txt
echo "done"

#install Sudomy
echo "Installing Sudomy"
git clone --recursive https://github.com/screetsec/Sudomy.git /opt/tools/subdomain-enum/Sudomy
cd /opt/tools/subdomain-enum/Sudomy
pip install -r requirements.txt
echo "done"




#############################################

#               Content Discovery           #

#############################################



###########################

#          API            # 

###########################


#install secretx
echo "installing secrtex"
git clone https://github.com/xyele/secretx.git /opt/tools/content-discovery/api/secretx
cd /opt/tools/content-discovery/api/secretx
python3 -m pip install -r requirements.txt
echo "done"



###########################

#      AWS S3 Bucket      #

###########################



#install s3brute
echo "installing s3brute"
git clone https://github.com/ghostlulzhacks/s3brute.git /opt/tools/content-discovery/AWS/s3brute
echo "done"

#install s3-buckets-finder
echo "installing s3-buckets-finder"
git clone https://github.com/gwen001/s3-buckets-finder.git /opt/tools/content-discovery/AWS/s3-buckets-finder
echo "done"

#install bucket-stream
echo "installing bucket-stream"
git clone https://github.com/eth0izzle/bucket-stream.git /opt/tools/content-discovery/AWS/bucket-stream
cd /opt/tools/content-discovery/AWS/bucket-stream
pip3 install -r requirements.txt
echo "done"

#install slurp
echo "installing slurp"
go get github.com/nuncan/slurp
echo "done"

#install lazys3
echo "installing lazys3"
git clone https://github.com/nahamsec/lazys3.git /opt/tools/content-discovery/AWS/lazys3
echo "done"

#install cred_scanner
echo "installing cred_scanner"
git clone https://github.com/disruptops/cred_scanner.git /opt/tools/content-discovery/AWS/cred_scanner
cd /opt/tools/content-discovery/AWS/cred_scanner
pip install -r requirements.txt
echo "done"

#install DumpsterDiver
echo "installing DumpsterDiver"
git clone https://github.com/securing/DumpsterDiver.git /opt/tools/content-discovery/AWS/DumpsterDiver
cd /opt/tools/content-discovery/AWS/DumpsterDiver
pip install -r requirements.txt
echo "done"

#install S3Scanner
echo "installing S3Scanner"
git clone https://github.com/sa7mon/S3Scanner.git /opt/tools/content-discovery/AWS/S3Scanner 
cd /opt/tools/content-discovery/AWS/S3Scanner
pip install -r requirements.txt
echo "done"





###########################

#    Inspecting JS Files  #

###########################



#install JSParser
echo "installing JSParser"
git clone https://github.com/nahamsec/JSParser.git /opt/tools/content-discovery/JS/JSParser
cd JSParser*
sudo python setup.py install
echo "done"

#intall relative-url-extractor
echo "installing relative-url-extractor"
git clone https://github.com/jobertabma/relative-url-extractor.git /opt/tools/content-discovery/JS/relative-url-extractor
echo "done"

#install github-search
echo "installing github-search"
cd /opt/tools/content-discovery/JS
wget https://raw.githubusercontent.com/gwen001/github-search/master/github-subdomains.py
echo "done"

#install subjs
echo "installing subjs"
go get -u github.com/lc/subjs
echo "done"

#install LinkFinder
echo "install LinkFinder"
git clone https://github.com/GerbenJavado/LinkFinder.git /opt/tools/content-discovery/JS/LinkFinder
cd /opt/tools/content-discovery/JS/LinkFinder
python3 -m pip install -r requirements.txt
echo "done"


###########################

#         Code Audit       #

###########################

#install Cobra
echo "installing Cobra"
git clone https://github.com/WhaleShark-Team/cobra.git /opt/tools/content-discovery/code_audit/Cobra
cd /opt/tools/content-discovery/code_audit/Cobra
pip install -r requirements.txt
echo "done"



###########################

#         Crawlers        #

###########################

#install crawler
echo "installing crawler"
git clone https://github.com/ghostlulzhacks/crawler.git /opt/tools/content-discovery/crawlers/crawler
echo "done"

#install waybackMachine
echo "installing waybackMachine"
git clone https://github.com/ghostlulzhacks/waybackMachine.git /opt/tools/content-discovery/crawlers/waybackMachine
echo "done"

#install meg
echo "installing meg"
go get -u github.com/tomnomnom/meg
echo "done"

#install hakrawler
echo "installing hakrawler"
go get github.com/hakluke/hakrawler
echo "done"

#install igoturls
echo "installing igoturls"
git clone https://github.com/xyele/igoturls.git /opt/tools/content-discovery/crawlers/igoturls
echo "done"





###########################

#  Directory Bruteforcers #

#           &             #

#         Fuzzers         #
###########################


#install gobuster
echo "installing gobuster"
go get github.com/OJ/gobuster
echo "done"

#install ffuf
echo "installing ffuf"
go get github.com/ffuf/ffuf
echo "done"

#install dirsearch
echo "installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git /opt/tools/dir-fuzz/dirsearch
echo "done"


#############################################

#                 Exploitation              #

#############################################



###########################

#           API           #

###########################


#install imperva
echo "installing imperva"
git clone https://github.com/imperva/automatic-api-attack-tool.git /opt/tools/exploitation/api/imperva
echo "done"



###########################

#   Subdomain Takeover     #

###########################


#install subjack
echo "installing subjack"
go get github.com/haccer/subjack
echo "done"


#install subdomain-takeover
echo "installing subdomain-takeover"
git clone https://github.com/antichown/subdomain-takeover.git /opt/tools/exploitation/subdomain-takeover
cd /opt/tools/exploitation/subdomain-takeover
pip install -r requirements.txt
echo "done"

#install takeover
echo "installing takeover"
git clone https://github.com/m4ll0k/takeover.git /opt/tools/exploitation/takeover
echo "done"

#install SubOver
echo "installing SubOver"
go get github.com/Ice3man543/SubOver


###########################

#   Google Cloud Storage  #

###########################


#install GCPBucketBrute
echo "installing GCPBucketBrute"
git clone https://github.com/RhinoSecurityLabs/GCPBucketBrute.git /opt/tools/exploitation/google-cloud-storage/GCPBucketBrute
cd /opt/tools/exploitation/google-cloud-storage/GCPBucketBrute
python3 -m pip install -r requirements.txt
echo "done"



###########################

#      Digital Ocean      #

###########################


#install spaces-finder
echo "installing spaces-finder"
git clone https://github.com/appsecco/spaces-finder.git /opt/tools/exploitation/digital-ocean/spaces-finder
cd /opt/tools/exploitation/digital-ocean/spaces-finder
python3 -m pip install -r requirements.txt



###########################

#           XXE           #

###########################


#install XEEinjector
echo "installing XEEinjector"
git clone https://github.com/enjoiz/XXEinjector.git /opt/tools/exploitation/XXE/XXEinjector
echo "done"



###########################

#          CSRF           #

###########################

#install XSRFProbe
echo "installing XSRFProbe"
git clone https://github.com/0xInfection/XSRFProbe.git /opt/tools/exploitation/CSRF/XSRFProbe
cd /opt/tools/exploitation/CSRF/XSRFProbe
python3 setup.py install
echo "done"



###########################

#     Command injection   #

###########################

#install commix
echo "installing commix"
git clone https://github.com/commixproject/commix.git /opt/tools/exploitation/command-injection/commix
echo "done"



###########################

#          SQLi           #

###########################


#install sqlmap
echo "installing sqlmap"
git clone https://github.com/sqlmapproject/sqlmap.git /opt/tools/exploitation/sqli/sqlmap
echo "done"


#install sqliv
echo "installing sqliv"
git clone https://github.com/the-robot/sqliv.git /opt/tools/exploitation/sqli/sqliv
cd /opt/tools/exploitation/sqli/sqliv
sudo python2 setup.py -i
echo "done"

#install sqlmate
echo "installing sqlmate"
git clone https://github.com/s0md3v/sqlmate.git /opt/tools/exploitation/sqli/sqlmate
cd /opt/tools/exploitation/sqli/sqlmate
pip install -r requirements.txt
echo "done"




###########################

#           XSS           #

###########################


#install XSStrike
echo "installing XSStrike"
git clone https://github.com/s0md3v/XSStrike.git /opt/tools/exploitation/xss/XSStrike
cd /opt/tools/exploitation/xss/XSStrike
python3 -m pip install -r requirements.txt
echo "done"

#install XSS-keylogger
echo "installing XSS-keylogger"
git clone https://github.com/hadynz/xss-keylogger.git /opt/tools/exploitation/xss/XSS-keylogger
echo "done"



###########################

#      Open Redirect      #

###########################

#spot left for potential open redirect testing tools


###########################

#        CloudFlare       #

###########################
#install CloudFail
echo "installing CloudFail"
git clone https://github.com/m0rtem/CloudFail.git /opt/tools/CloudFlare/CloudFail
echo "done"


###########################

#    	     Git          #

###########################

#installing truffleHog
echo "installing truffleHog"
python3 -m pip install trufflehog

#installing 
echo "installing git-dumper"
git clone https://github.com/arthaud/git-dumper.git /opt/tools/Git/git-dumper



#############################################

#                    CMS                    #   

#############################################


#install CMSmap
echo "installing CMSmap"
git clone https://github.com/Dionach/CMSmap.git /opt/tools/CMS/CMSmap
cd /opt/tools/CMS/CMSmap
pip3 install .
echo "done"

#install CMSeek
echo "installing CMSeek"
git clone https://github.com/Tuhinshubhra/CMSeeK.git /opt/tools/CMS/CMSeek
cd /opt/tools/CMS/CMSeek
python3 -m pip install -r requirements.txt
echo "done"

#install Joomscan
echo "installing Joomscan"
git clone https://github.com/rezasp/joomscan.git /opt/tools/CMS/Joomscan
echo "done"

#install wpscan
echo "installing wpscan"
gem install wpscan
echo "done"

#install droopescan
echo "installing droopescan"
apt-get install python-pip
pip install droopescan
echo "done"

#install drupwn
echo "installing drupwn"
git clone https://github.com/immunIT/drupwn.git /opt/tools/CMS/drupwn
cd /opt/tools/CMS/drupwn
python3 setup.py install
drupwn --help
echo "done"




#############################################

#                Frameworks                 #

#############################################

#install Sn1per
echo "installing Sn1per"
git clone https://github.com/1N3/Sn1per.git /opt/tools/Frameworks/Sn1per
cd /opt/tools/Frameworks/Sn1per
bash install.sh
echo "done"


#install XRay
echo "installing XRay"
go get github.com/evilsocket/xray
cd $GOPATH/src/github.com/evilsocket/xray/
make
echo "done"



#install datasploit
echo "installing datasploit"
git clone https://github.com/DataSploit/datasploit.git /opt/tools/Frameworks/datasploit
cd /opt/tools/Frameworks/datasploit
python3 -m pip install --upgrade --force-reinstall -r requirements.txt
echo "done"



#install Osmedeus
echo "installing Osmedeus"
git clone https://github.com/j3ssie/Osmedeus.git /opt/tools/Frameworks/osmedeus
cd /opt/tools/Frameworks/osmedeus
./install.sh
echo "done"



#install TIDoS-Framework
echo "installing TIDoS-Framework"
git clone https://github.com/0xinfection/tidos-framework.git /opt/tools/Frameworks/TIDoS-Framework
cd /opt/tools/Frameworks/osmedeus
chmod +x install
./install
echo "done"



#install discover
echo "installing discover"
git clone https://github.com/leebaird/discover.git /opt/tools/Frameworks/discover
cd /opt/tools/Frameworks/discover
./update.sh
echo "done"



#install lazyrecon
echo "installing lazyrecon"
git clone https://github.com/nahamsec/lazyrecon.git /opt/tools/Frameworks/lazyrecon
echo "done"



#install 003Recon
echo "installing 003Recon"
git clone https://github.com/003random/003Recon.git /opt/tools/Frameworks/003Recon
cd /opt/tools/Frameworks/003Recon
./install.sh
echo "done"


#install LazyRecon
echo "installing LazyRecon"
echo "remember to set API keys!!"
git clone https://github.com/capt-meelo/LazyRecon.git /opt/tools/Frameworks/LazyRecon
echo "done"


#install Vulmap
echo "installing Vulmap"
git clone https://github.com/zhzyker/vulmap.git /opt/tools/Frameworks/Vulmap
cd /opt/tools/Frameworks/Vulmap
python3 -m pip install -r requirements.txt
echo "done"


#############################################

#                  Other                    #

#############################################


#install altdns
echo "installing altdns"
pip install py-altdns
echo "done"

#install nmap
echo "installing nmap"
sudo apt-get install -y nmap
echo "done"

#install Blazy
echo "installing Blazy"
git clone https://github.com/s0md3v/Blazy.git /opt/tools/other/Blazy
cd /opt/tools/other/Blazy
pip install -r requirements.txt
echo "done"



#install httprobe
echo "installing httprobe"
go get -u github.com/tomnomnom/httprobe
echo "done"

#install broken-link-checker
echo "installing broken-link-checker"
npm install broken-link-checker -g
echo "done"

#install wafw00f -it is great tool to identify web application firewall      
echo "installing wa00f"
git clone https://github.com/EnableSecurity/wafw00f.git
python3 wafw00f/setup.py install
echo "done"

###########################

#         Wordlists       #

###########################



#install Seclists
echo "downloading Seclist"
git clone https://github.com/danielmiessler/SecLists.git /opt/tools/Wordlists/SecLists
echo "done"
cd /opt/tools/Wordlists/SecLists/Discovery/DNS/
##THIS FILE BREAKS MASSDNS AND NEEDS TO BE CLEANED
cat dns-Jhaddix.txt | head -n -14 > clean-jhaddix-dns.txt


#install JHaddix Wordlist
echo "downloading JHaddix wordlist"
cd /opt/tools/Wordlists
wget https://gist.githubusercontent.com/jhaddix/b80ea67d85c13206125806f0828f4d10/raw/c81a34fe84731430741e0463eb6076129c20c4c0/content_discovery_all.txt
echo "done"

#install Nahamsec list
echo "downloading Nahamsec list"
cd /opt/tools/Wordlists
wget https://gist.githubusercontent.com/Leoid/38984017886cd058a314dfda5c3d6c6e/raw/1ee5fe1da82a3ae92b0c486f86fbe26bbdff1e06/Nahamsec%2520Thread
echo "done"


