#Creando repositorios

#Archivos

git_tutorial
	(f)index.html
	(d)css
		estilos.css
	(d)js
		javascript.js	

#Comando para crear dos areas para almacenar los archivos

git init

#Se crean dos áreas

1. Area de ensayo (staging area)
2. Repositorio local

#Hacer un seguimiento de los archivos

git add <archivo> # lleva el archivo desde el directorio de trabajo hacia el área de ensayo

#Trasladar los archivos desde el área de ensayo hacia el repositorio

git commit

#Revisar seguimiento de los archivos

gits status -s

	#?? => El archivo está en el directorio, pero no interactua con git
	#A => El archivo está en el área de ensayo


#Hacer seguimiento a un archivo <index.html>

git add index.html

#Crear una copia de respaldo del archivo <index.html> que está en el área de ensayo

git commit -m <descripción de la instantanea>

#Al hacer un cambio en el archivo index.html, consultar su estado (git status -s)
#Vuelve a aparecer el archivo, pero tiene una bandera distinta (M) => indica que los cambios que se le hicieron  no están respaldados

#Volver a hacer el respaldo del archivi

git commit -m "titulo agregado"

#Aparece un error, no se han hecho cambios al archivo, se ha saltado un paso
#Antes hay que preparar el archivo, llevandolo al área de ensayo

git add index.html

#Al consultar el status del archivo <index.html> con git status -s, este aparecera junto con un flag (M) en verde

#Ahora sí, se han hecho los cambios

#Obtener un listado de todas las copias (cambios) que se han realizado junto con la descripción

git log --online

#Restaurar un archivo a un estado anterior

git reset --hard <codigo de la instantanea>	#el código se puede ver en el lisatdo de los cambios realizados

#Cómo hacer un seguimiento a todos los archivos en un proyecto al área de ensayo

git add .	#el "." sinbifica agregar todos los archivos en el proyecto

#Ver todos los commit guardados (versiones que se han hecho)

git log --oneline

#Sí se hace un "status" se observa lo que se ha hecho con los archivos

#Hacer un add y un commit al mismo tiempo

git commit -am	<descri[pción de la instantanea> 	#(a) -> add
													#(m) -> agregar descripción

#Después de agregar, sí se hace un "git status" no aparecerá nada pues todo está agregado en el repositorio

#Volver a hacer un cambio en el archivo estilos.css y volver a subirlo al área de ensayo

git add .

#Después se hace un commit

git commit -m <descripción de la instantanea>

#-----------------------------------------
#Modificar la descripción de un commit
#-----------------------------------------

#Editor vim (abrir editor)

git commit --amend	#se abre el editor

#en terminal, para empezar a editar se usa el comando ":i", cuando se usa VSCode, basta con seleccionar la primera línea (donde está el mensaje)
#Después se pulsa "Esc"
#Para salir del editor se usa el comando ":wq", en VSCode basta con "Guardar cambios"

#Verificar los cambios

git log --oneline

#---------------------------------
#Subir proyecto a GitHub
#---------------------------------

#Paso 1: Crear un repositorio en GitHub
	#Después de crear re-dirige a la página del Quick-setup

#Paso 2: Subir un repositorio (git_tutorial) que se tiene de manera local a GitHub

	#Hay 3 instrucciones:

		#1er instrucción -> Subir lo que tenemos en el ficehro local a GitHub
		#2da instrucción -> Branch
		#3er instrucción -> ir actualizando (subiendo) las modificaciones


#Paso 3: Copiar la "1er instrucción" en la terminal

git remote add origin https://github.com/jaknaz/curso_git.git #subir todos los archivos del ficehro local a GitHub


#--------------------------
#Editar desde GitHub
#--------------------------

#Para editar desde GitHub se debe de seleccionar el archivo a editar, en la parte superior aparece un icono de lapiz y permitirá editar el contenido
#Después de terminar de editar se selcciona "Commit changes..."  para guardar
	#Te darea la opción de agregar una etiqueta a los cambios, además de una descripción
	#Los cambios pueden guardarse de dos maneras:
		#1. Commit directly to the main branch
		#2. Create a new branch for this commit and start a pull request

#Como "traer" las modificaciones realizadas desde GitHub al repositorio local

#Para "subir" los cambios se usa la instrucción "push"; para traer la información se usa la instrucción "pull"

git pull


#--------------------------
#Tags
#--------------------------

#Cómo crear un tag al proyecto

git tag <tag> m <mensaje>	#el mensaje va entre comillas

#revisar y se obtendrá que se ha cerado un tag

git log --online

#Subir el tag a GitHub (por ahora se encuentra en el repostiroio local)

git push --tags

#Una vez subido el proyecto, es posible descargarlo desde un archivo .zip o tar.gz


#--------------------------
#Clonar repositorio
#--------------------------

git clone <url_del_proyecto>	#botón "Code" (Verde) en el repositorio









































