function goto -a project classes
    set switched 0

    if test $project = 'vc'; or test $project = 'vcars'
	cd /var/www/html/vcars.local/public_html/; \
	set switched 1
    else if test $project = 'vcs'
	cd /var/www/html/vcars.symfony.local/; \
	set switched 1
    else if test $project = 'v-'; or test $project = 'vh'
	cd /var/www/html/v-cars.local/public_html/; \
	set switched 1
    else if test $project = 'vcom'
	cd /var/www/html/vcom.local/public_html/; \
	set switched 1
    else if test $project = 'api'
	cd /var/www/html/api.local/public_html/; \
	set switched 1
    else if test $project = 'dweb'
	cd /var/www/html/dweb.local/; \
	set switched 1
    else if test $project = 'dna'
	cd /var/www/html/vcarsdna.local; \
	set switched 1
    else if test $project = 'tools'
	cd /var/www/html/tools/; \
	set switched 1
    end

#    if test "$switched" -eq 1; and test "$classes" = 'c'
#	if test $project != 'vcs'; and test $project != 'dweb'; and test $project != 'dna'; and test $project != 'tools'; and test $project != 'api'
#	    cd includes/extlib/composer/vendor/used-car-sites/classes/
#	end
#    
#	if test $project = 'api'
#	    cd vendor/used-car-sites/classes/	
#        end
#    
#        if test $project = 'vcs'
#	    cd vendor/used-car-sites/classes/	
#        end
#    end
end

alias ssh_web="ssh -p 2020 ukfastweb"
alias ssh_dna="ssh -p 2020 ukfastdna"
alias ssh_worker="ssh -p 2020 ukfastworker"

alias gitkraken="gitkraken -p ."

function weather
    curl -s wttr.in/Stanstead%20Abbotts,%20Hertfordshire | head -7
end

set -gx GOPATH $HOME/go
set -gx PATH $PATH $HOME/go/bin

alias emc="emacsclient -c"
