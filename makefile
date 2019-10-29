filename="README.md"

done: producereadme writetitle writedatetime writenumberoflinesofcode

writetitle: 
	echo "# Unix is cool" >> $(filename)

writedatetime: 
	echo  "###### Now: $$(date '+%d/%m/%Y %H:%M:%S')" >> $(filename)

writenumberoflinesofcode:  
	echo "###### Lines: $$(wc -l guessinggame.sh | awk '{print $$1}')" >> $(filename)

producereadme: clean
	touch $(filename)

clean:
	@if [[ -f $(filename) ]]; then\
		rm README.md;\
	fi
	