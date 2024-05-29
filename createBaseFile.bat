echo  "Hello for create your base folder front-end"
echo  "___________________________________________"


set /p nameDos="Choose the name of folder"
echo le nom choisi : %nameDos%
echo "If you not choose, the new folder was create in this place."
set /p namePath="Choose the racine / path for your new folder :  "

echo le chemin choisis : %namePath%

cd %namePath%
mkdir %nameDos%
echo "Ton dossier est creer // Your file is create !!"
cd %namePath%%nameDos%



@REM this code is for create an file and open it 
@REM echo "Hello my friend" > test.txt 
@REM start "Hey" %namePath%%nameDos%/test.txt

echo Choose beetwen  1:REACT / 2:VUE / 3:NEXT / 4:VANILLA 
set /p nameExtension="What thech you choose ? "
echo You choose : %nameExtension%
set /p otherExtention="Do you want install other lib for ANIMATION ?   1:ANIMATION 2:NO"

@REM if %otherExtention%==1 (
@REM     if %nameExtension%==1 (
@REM         npm i --save-dev @gsap/react framer-motion react-spring
@REM     )
@REM     else if %nameExtension%==2 (
@REM        npm i gsap  vuex@next animejs lenis
@REM     )
@REM     if %nameExtension%==3 (
@REM         npm i --save-dev @gsap/react framer-motion react-spring
@REM     )
@REM     else (
@REM         npm i gsap animejs lenis
@REM     )
@REM )

if %nameExtension%==1 (
    npm create vite@latest my-vue-app --  react sass
    start %namePath%%nameDos%
    set -p dbExtension="Do you want a DATABASE lib (with node.js, express & mangoose/MangoDB) ?       1: YES / 2: NO"
   if %otherExtention%==1 AND %DATABASE%==1 (
     npm i --save-dev @gsap/react framer-motion react-spring nodejs express mangodb
   )else (
    npm i --save-dev @gsap/react framer-motion react-spring
   )

    )
else if %nameExtension%==2 (
    npm create vite@latest my-vue-app --  vue sass
    if %otherExtention%==1 (
     npm i gsap  vuex@next animejs lenis
    )

    start %namePath%%nameDos%
    )
else if %nameExtension%==3 (
    npx create-next-app@latest sass
    set -p dbExtension="Do you want a DATABASE lib (with node.js, express & mangoose/MangoDB) ?       1: YES / 2: NO"
   if %otherExtention%==1 AND %DATABASE%==1 (
     npm i --save-dev @gsap/react framer-motion react-spring nodejs express mangodb
   )else (
    npm i --save-dev @gsap/react framer-motion react-spring
   )
    start %namePath%%nameDos%
    )
else if %nameExtension%==4 (
    npm install --save-dev parcel sass
    if %otherExtention%==1 (
    npm i gsap animejs lenis
    )
    start %namePath%%nameDos%
    )
else (
    echo Your choose is not valid !!! Restart 
)


pause