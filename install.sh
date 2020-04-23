dir=$(pwd)

LINE="source $dir/fancy_function.sh"
FILE=~/.bashrc
grep -qF -- "$LINE" "$FILE" || echo "$LINE" >> "$FILE"

LINE="source $dir/.aliases"
FILE=~/.bashrc
grep -qF -- "$LINE" "$FILE" || echo "$LINE" >> "$FILE"

temp="$dir/bin"
if ! [[ $PATH =~ "$temp" ]]; then #checking if path already exists in .bashrc
	echo "export PATH=$PATH:$dir/bin" >> "$FILE"
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

now tkner que 
t function gco pour neplis sources from the current folder in documents .....
but from the src one 
we need to the the source thing in the bash file
tne comprend ? n merd 




why are we putting it in another folder named src ?
src is just a name
pkt about it 
why ??


because 
tkner dans nous fichier .bashrc which is an important fichier btw xdd 
dans sa fichier la ena the line 
source ./home/henna/documents/psl/fancytools/fancy_functions.sh

b sa line la li depende de sa folder fancytools found dans t documents la nn ?
the bash file cest important et tpp like jouer jouer ec li

and sa folder fancytools dans t documents la we constantly test it we play with it we test things 
l
i
k
e




ennnn lerla t ti dr mwa si nu nek nek play kumha bne function nun fr la kav aret work like gco tousa
yesss



tu vois m ecout twa 
you better awwwwww 
bof t bzn dr awww
con


b mti dire toi like master cest ene branch kot tt bne trucs lba cest the functional things ?
mti dire
fr comme si tpe work lor ene dossier git blier fancy functions toi en general mpe dire
lor t branch master jamais t test bne codes like quand tpas sure
mais t fr sa dans bne branch secondary like dev et tt
acause quand ene dimoune pour download t code or app li pour download from master 
et from master tpp propose something like tpas sure

fr comme si t ena idea of improvement de t code
tpas nec al lor master t add li nn
t al lor ene lautre secondary branch 
t test li 
then si trouver tt p work fine
t merge branch la ec master


lrla sa imporvement la pour update t master
kot lba t sure tt p work fine

b lba aussi pour fancy_tools 
dans sa folder dans t documents la 
nous constantly change branches 
nous try things 
nous fr enta truc 
et on peut pas juste sa mete file la dans bashrc
its not logic

acause it will keep changing

alors better nous link only the branch master mais we cant do that from  there alors snous nec master la dans ene location et nous source from there

because quand t work lor different branches your file keep changing
wait m show toi
m 




























