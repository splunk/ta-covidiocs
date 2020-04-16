#Github repo of https://github.com/parthdmaniar/coronavirus-covid-19-SARS-CoV-2-IoCs

wget --no-check-certificate https://raw.githubusercontent.com/parthdmaniar/coronavirus-covid-19-SARS-CoV-2-IoCs/master/newly_registered_domains && sed 's/$/,TRUE/' newly_registered_domains > COVIDnewdomains.csv && echo 'newdomain,isBad' | cat - COVIDnewdomains.csv > temp && mv -f temp COVIDnewdomains.csv && rm -f newly_registered_domains* && mv -f COVIDnewdomains.csv $SPLUNK_HOME/etc/apps/TA-covidIOCs/lookups/

wget --no-check-certificate https://raw.githubusercontent.com/parthdmaniar/coronavirus-covid-19-SARS-CoV-2-IoCs/master/hashes && sed 's/$/,TRUE/' hashes > COVIDhashes.csv && echo 'hashes,isBad' | cat - COVIDhashes.csv > temp && mv -f temp COVIDhashes.csv && rm -f hashes* && mv -f COVIDhashes.csv $SPLUNK_HOME/etc/apps/TA-covidIOCs/lookups/

wget --no-check-certificate https://raw.githubusercontent.com/parthdmaniar/coronavirus-covid-19-SARS-CoV-2-IoCs/master/IPs && sed 's/$/,TRUE/' IPs > COVIDips.csv && echo 'ip,isBad' | cat - COVIDips.csv > temp && mv -f temp COVIDips.csv && rm -f IPs* && mv -f COVIDips.csv $SPLUNK_HOME/etc/apps/TA-covidIOCs/lookups/

wget --no-check-certificate https://raw.githubusercontent.com/parthdmaniar/coronavirus-covid-19-SARS-CoV-2-IoCs/master/URLs && sed 's/$/,TRUE/' URLs > COVIDurls.csv && echo 'url,isBad' | cat - COVIDurls.csv > temp && mv -f temp COVIDurls.csv && rm -f URLs* && mv -f COVIDurls.csv $SPLUNK_HOME/etc/apps/TA-covidIOCs/lookups/

#Github repo of https://github.com/COVID-19-CTI-LEAGUE/PUBLIC_RELEASE

wget --no-check-certificate https://raw.githubusercontent.com/COVID-19-CTI-LEAGUE/PUBLIC_RELEASE/master/Cyber_threat_Coalition_domain_Blacklist.txt && sed -e 's/'$(echo "\r")'/,TRUE/' Cyber_threat_Coalition_domain_Blacklist.txt  > ctileagueCOVIDdomains.csv && echo 'domain,isBad' | cat - ctileagueCOVIDdomains.csv > temp && mv -f temp ctileagueCOVIDdomains.csv  && rm -f Cyber_threat_Coalition_domain_Blacklist*  && mv -f ctileagueCOVIDdomains.csv $SPLUNK_HOME/etc/apps/TA-covidIOCs/lookups/

wget --no-check-certificate https://raw.githubusercontent.com/COVID-19-CTI-LEAGUE/PUBLIC_RELEASE/master/Cyber_Threat_Coalition_hash_Blacklist.txt && sed -e 's/'$(echo "\r")'/,TRUE/' Cyber_Threat_Coalition_hash_Blacklist.txt  > ctileagueCOVIDhashs.csv && echo 'hashes,isBad' | cat - ctileagueCOVIDhashs.csv > temp && mv -f temp ctileagueCOVIDhashs.csv  && rm -f Cyber_Threat_Coalition_hash_Blacklist*  && mv -f ctileagueCOVIDhashs.csv $SPLUNK_HOME/etc/apps/TA-covidIOCs/lookups/

wget --no-check-certificate https://raw.githubusercontent.com/COVID-19-CTI-LEAGUE/PUBLIC_RELEASE/master/Cyber_Threat_Coalition_url_Blacklist.txt && sed -e 's/'$(echo "\r")'/,TRUE/' Cyber_Threat_Coalition_url_Blacklist.txt  > ctileagueCOVIDurls.csv && echo 'url,isBad' | cat - ctileagueCOVIDurls.csv > temp && mv -f temp ctileagueCOVIDurls.csv  && rm -f Cyber_Threat_Coalition_url_Blacklist*  && mv -f ctileagueCOVIDurls.csv $SPLUNK_HOME/etc/apps/TA-covidIOCs/lookups/

wget --no-check-certificate https://raw.githubusercontent.com/COVID-19-CTI-LEAGUE/PUBLIC_RELEASE/master/Cyber_Threat_coalition_ip_Blacklist.txt && sed -e 's/'$(echo "\r")'/,TRUE/' Cyber_Threat_coalition_ip_Blacklist.txt  > ctileagueCOVIDips.csv && echo 'ip,isBad' | cat - ctileagueCOVIDips.csv > temp && mv -f temp ctileagueCOVIDips.csv  && rm -f Cyber_Threat_coalition_ip_Blacklist.txt*  && mv -f ctileagueCOVIDips.csv $SPLUNK_HOME/etc/apps/TA-covidIOCs/lookups/

#Special thanks to RiskIQ for this great list of IOCs as well: https://www.riskiq.com/blog/external-threat-management/discovering-unknowns-investigating-threats-covid19/
wget --no-check-certificate https://covid-public-domains.s3-us-west-1.amazonaws.com/list.txt && tr -d '\r' < list.txt > covid-public-domains.csv && sed '1,1d' covid-public-domains.csv &&sed 's/$/,TRUE/' covid-public-domains.csv && echo 'date,type,domain,isBad' | cat - covid-public-domains.csv > temp && mv -f temp covid-public-domains.csv  && rm -f list.txt*  && mv -f covid-public-domains.csv $SPLUNK_HOME/etc/apps/TA-covidIOCs/lookups/
q