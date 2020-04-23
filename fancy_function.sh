function gco
{
	errorCheck=0
	branch="$(git symbolic-ref HEAD 2>/dev/null)" || errorCheck=1 
	branch=${branch##refs/heads/}
	
	if [ $errorCheck = 0 ]
	then
		git commit -m "[$branch] $*"		
	else 
		echo "Vous n'êtes pas dans un dossier git"
	fi 
}
