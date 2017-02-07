function goto -a project classes
#    set project $argv[1];
#    if set -q $argv[2]	
#        set classes $argv[2]
#    else
#    	set classes ''
#    end
	
    if test $project = 'vc'; or test $project = 'vcars'
	cd /var/www/html/vcars.local/public_html/
    else if test $project = 'vcs'
	cd /var/www/html/vcars.symfony.local/
    else if test $project = 'v-'; or test $project = 'vh'
	cd /var/www/html/v-cars.local/public_html/
    else if test $project = 'vcom'
	cd /var/www/html/vcom.local/public_html/
    else if test $project = 'api'
	cd /var/www/html/api.local/public_html/
    else if test $project = 'dweb'
	cd /var/www/html/dweb.local/
    else if test $project = 'dna'
	cd /var/www/html/vcarsdna.local/
    else if test $project = 'tools'
	cd /var/www/html/tools/
    end

#    if test -n $classes
#	echo cd to classes now ... $classes
#    end
    
#    if test $project!= 'vcs' ] and [ $project!= 'dweb' ] and [ $project!= 'dna' ] and [ $project!= 'tools' ] and [ $project!= 'api' ] and [ $classes = 'c' ]
#	cd includes/extlib/composer/vendor/used-car-sites/classes/
#    end
    
#    if test $project = 'api' ] and [ $classes = 'c' ]
#	cd vendor/used-car-sites/classes/	
#    end
    
#    if test $project = 'vcs' ] and [ $classes = 'c' ]
#	cd vendor/used-car-sites/classes/	
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
