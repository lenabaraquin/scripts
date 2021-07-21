#!/bin/bash

nom=$1
extension=".c"
nom=$nom$extension
echo $nom
touch $nom

echo "#include <stdio.h>" > $nom
echo "#include <stdlib.h>" >> $nom
echo "#include <math.h>" >> $nom

echo "  ">> $nom

echo "int main (int argc, char** argv)" >> $nom
echo "{ ">> $nom
echo "  ">> $nom
echo "} ">> $nom
