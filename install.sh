
LINE="source ~/src/fancytools/fancy_function.sh"
FILE=~/.bashrc
grep -qF -- "$LINE" "$FILE" || echo "$LINE" >> "$FILE"

LINE="source ~/src/fancytools/.aliases"
FILE=~/.bashrc
grep -qF -- "$LINE" "$FILE" || echo "$LINE" >> "$FILE"


if [[ -d ~/bin ]]
then
	echo "Folder already exist"
else
	mkdir ~/bin
fi

temp="~/bin"
if ! [[ $PATH =~ "$temp" ]]; then 
	echo "export PATH=$PATH:$temp" >> "$FILE"
fi  


if [[ -d ~/src ]]
then
	echo "Repertory already exist"
else
	mkdir ~/src
fi


cd ~/src

if [[ -d ~/src/fancytools ]]
then 
	echo "No need to clone fancy tools"
else
	git clone --single-branch --branch master https://github.com/henna19/fancytools.git
fi
 
cd ~/bin
cp ~/src/fancytools/bin/updateFancyTools ~/bin/updateFancyTools
chmod +x updateFancyTools









