wget --no-check-certificate https://raw.githubusercontent.com/parthdmaniar/coronavirus-covid-19-SARS-CoV-2-IoCs/master/newly_registered_domains && sed 's/$/,TRUE/' newly_registered_domains > COVIDnewdomains.csv && echo 'newdomain,isBad' | cat - COVIDnewdomains.csv > temp && mv -f temp COVIDnewdomains.csv && rm -f newly_registered_domains* && mv -f COVIDnewdomains.csv $SPLUNK_HOME/etc/apps/TA-covidIOCs/lookups/

wget --no-check-certificate https://raw.githubusercontent.com/parthdmaniar/coronavirus-covid-19-SARS-CoV-2-IoCs/master/hashes && sed 's/$/,TRUE/' hashes > COVIDhashes.csv && echo 'hashes,isBad' | cat - COVIDhashes.csv > temp && mv -f temp COVIDhashes.csv && rm -f hashes* && mv -f COVIDhashes.csv $SPLUNK_HOME/etc/apps/TA-covidIOCs/lookups/

wget --no-check-certificate https://raw.githubusercontent.com/parthdmaniar/coronavirus-covid-19-SARS-CoV-2-IoCs/master/IPs && sed 's/$/,TRUE/' IPs > COVIDips.csv && echo 'ip,isBad' | cat - COVIDips.csv > temp && mv -f temp COVIDips.csv && rm -f IPs* && mv -f COVIDips.csv $SPLUNK_HOME/etc/apps/TA-covidIOCs/lookups/

wget --no-check-certificate https://raw.githubusercontent.com/parthdmaniar/coronavirus-covid-19-SARS-CoV-2-IoCs/master/URLs && sed 's/$/,TRUE/' URLs > COVIDurls.csv && echo 'url,isBad' | cat - COVIDurls.csv > temp && mv -f temp COVIDurls.csv && rm -f URLs* && mv -f COVIDurls.csv $SPLUNK_HOME/etc/apps/TA-covidIOCs/lookups/
