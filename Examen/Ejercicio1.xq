(: Muestra la edad de los personajes cuya raza no sea "Elfo" ni "Istari" ordenadas de
menor a mayor.
Debes usar una instrucción if-then-else.
NO PUEDES usar predicados en las rutas xPath. :)


for $personaje in doc("personajesLOTR.xml")//personaje
order by $personaje/edad ascending
return if($personaje/raza!="Istari" and $personaje/raza!="Elfo")
then
  data($personaje/edad)
else()
