#!/bin/bash

nom=$1

if [ $# != 1 ]
then
   echo -e "passer le nom du fichier sans son extension a creer en parametre"
else
   read -p 'extension du fichier : ' extension
   nom=$nom"."$extension

   if [ $extension == "c" ] 
   then
      touch $nom
      echo 'création du fichier $nom'

      echo "#include <stdio.h>" > $nom
      echo "#include <stdlib.h>" >> $nom
      echo "#include <math.h>" >> $nom

      echo "  ">> $nom

      echo "int main (int argc, char** argv)" >> $nom
      echo "{ ">> $nom
      echo "  ">> $nom
      echo "} ">> $nom

      vim $nom
   elif [ $extension == "tex" ] 
   then 
      touch $nom
      echo 'création du fichier $nom'
      echo '\documentclass{article}' >> $nom
      echo '\usepackage{fullpage}' >> $nom
      echo '\usepackage{comment}' >> $nom
      echo '\usepackage{lipsum}' >> $nom
      echo '\usepackage{natbib} ' >> $nom
      echo '\usepackage[utf8]{inputenc} ' >> $nom
      echo '\usepackage[T1]{fontenc}' >> $nom
      echo '\usepackage[french]{babel}' >> $nom
      echo '\usepackage{amsthm} %principalement pour les démonstrations avec l environnement {proof}' >> $nom
      echo '\usepackage{amssymb}' >> $nom
      echo '\usepackage{mathtools}' >> $nom
      echo '\usepackage{ulem}' >> $nom
      echo '\usepackage{stmaryrd} %pour faire des bornes d'intervalles d'entiers' >> $nom
      echo '\usepackage{import, fancyhdr, lastpage, fourier, sectsty, url, array, multirow, tabu, subfiles, graphicx, wrapfig, subcaption, setspace, booktabs}' >> $nom
      echo '\usepackage{color}' >> $nom
      echo ' ' >> $nom
      echo '\date{}' >> $nom
      echo '\author{}' >> $nom
      echo '\title{Analyse}' >> $nom
      echo ' ' >> $nom
      echo '\newtheorem{defi}{Définition}' >> $nom
      echo '\newtheorem*{ex}{Exemple}' >> $nom
      echo '\newtheorem*{ctex}{Contre exemple}' >> $nom
      echo '\newtheorem{rema}{Remarque}' >> $nom
      echo '\newtheorem*{nota}{Notation}' >> $nom
      echo '\newtheorem{rap}{Rappel}' >> $nom
      echo '\newtheorem{prop}{Proposition}' >> $nom
      echo '\newtheorem{theo}{Théorème}' >> $nom
      echo '\newtheorem{lemme}{Lemme}' >> $nom
      echo '\newtheorem*{mthd}{Méthode}' >> $nom
      echo '\newtheorem*{vocab}{Vocabulaire}' >> $nom
      echo '\newtheorem{axiome}{Axiome}' >> $nom
      echo '\newtheorem{coroll}{Corollaire}' >> $nom
      echo '\newtheorem{rappel}{Rappel}' >> $nom
      echo ' ' >> $nom
      echo '\newcommand\NN{\mathbb{N}}' >> $nom
      echo '\newcommand\ZZ{\mathbb{Z}}' >> $nom
      echo '\newcommand\QQ{\mathbb{Q}}' >> $nom
      echo '\newcommand\RR{\mathbb{R}}' >> $nom
      echo '\newcommand\CC{\mathbb{C}}' >> $nom
      echo '\newcommand\PP{\mathbb{P}}' >> $nom
      echo '\newcommand\CCC{\mathcal{C}}' >> $nom
      echo '\newcommand\RRR{\mathcal{R}}' >> $nom
      echo ' ' >> $nom
      echo '\begin{document}' >> $nom
      echo '\maketitle' >> $nom
      echo '\tableofcontents' >> $nom
      echo '\newpage' >> $nom
      echo ' ' >> $nom
      echo '\end{document}' >> $nom

      vim $nom
   else 
      echo "cette extension n'est pas reconnue"
   fi
fi
