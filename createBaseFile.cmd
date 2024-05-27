echo  "Hello for create your base folder front-end"
echo  "___________________________________________"


set /p nameDos="Choisis le nom du dossier : "
echo le nom choisi : %nameDos%
set /p namePath="Choisis la racine de ton dossier : "
echo le chemin choisis : %namePath%

cd %namePath%
mkdir %nameDos%
echo Ton dossier est creer !
cd %namePath%%nameDos%



@REM this code is for create an file and open it 
@REM echo "Hello my friend" > test.txt 
@REM start "Hey" %namePath%%nameDos%/test.txt

echo Tu peux choisir entre 1:REACT / 2:VUE / 3:NEXT / 4:CLASSIC 
set /p nameExtension="Quelle base veut tu pour ton projet ? "
echo tu as choisis : %nameExtension%

if %nameExtension%==1 (
    npm create vite@latest my-vue-app --  react sass
    )
else if %nameExtension%==2 (
    npm create vite@latest my-vue-app --  vue sass
    )
else if %nameExtension%==3 (
    npx create-next-app@latest sass
    )
else if %nameExtension%==4 (
    npm install --save-dev parcel sass
    )


start %namePath%%nameDos%