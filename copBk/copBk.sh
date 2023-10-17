#!/bin/bash

# Cria as variáveis para mês dia:
hoje=$(date +%d) 
mes=$(date +%B)

# Cria as pastas para o mês e para o dia:
cd /files/cpd/shell/
mkdir -p "backupsBk" 
cd /files/cpd/shell/"backupsBk"/
mkdir -p "$mes"
cd /files/cpd/shell/"backupsBk"/"$mes"/
mkdir -p "$hoje"

echo "PASTA DE BACKUP CRIADA DENTRO DA REDE"
sleep 2s

#Copia os arquivos para a pasta criada:
cd /files/cpd/shell/"backupsBk"/"$mes"/"$hoje"/
echo "COPIANDO A PASTA BK PARA A PASTA DE BACKUP"
sleep 2s
cd /fs1/save/bk
cp * /files/cpd/shell/"backupsBk"/"$mes"/"$hoje"
cd /files/cpd/shell/"backupsBk"/"$mes"/"$hoje"
#Muda a permissão dos arquivos copiados:
chmod -f 777 *

#Apaga arquivos inúteis:
rm *.xml
rm sas06*
rm sas16*
echo "BK COPIADO COM SUCESSO!"
sleep 2s
clear
echo "Desenvolvido por Vitor Fofonka Moraes, filial 826"