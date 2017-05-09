set head off
set echo off
set linesize 1000
set pagesize 10000

spool c:\temp\locais.txt
PROMPT CAPPROD
PROMPT se
PROMPT ribeirao 
PROMPT osasco
PROMPT itaquera
PROMPT armenia
PROMPT campinas
PROMPT samaro
PROMPT santos
PROMPT guarulhos
PROMPT jundiai
PROMPT sorocaba
PROMPT taubate
PROMPT saocarlos
PROMPT sbernado
PROMPT botucatu
PROMPT franca
PROMPT interlagos
PROMPT piracicaba
PROMPT pprudente
PROMPT rioclaro
PROMPT sjriopreto
PROMPT tatui
PROMPT ademar
PROMPT bauru
PROMPT campshop
PROMPT aracatuba
PROMPT araraguara
PROMPT marilia
PROMPT mogi
PROMPT lapa
PROMPT suzano
PROMPT aricanduva
PROMPT taboaoserra
PROMPT pvargas
PROMPT campos
PROMPT vredonda
PROMPT recreio
PROMPT wshopping
PROMPT rs
PROMPT para06
PROMPT df
PROMPT rac_go
PROMPT para05
PROMPT maraba
PROMPT santarem
PROMPT redencao
PROMPT tjprod
PROMPT grafica
PROMPT bimagem
PROMPT icom
PROMPT creasp

spool off

spool C:\Temp\backups.txt

conn hudson/"S0f1@"@CAPPROD_RAC

SELECT   'CAPPROD',


conn hudson/hudson@se2

SELECT   'se',

conn hudson/hudson@ribeirao 

SELECT   'ribeirao',


conn hudson/hudson@osasco

SELECT   'osasco',


conn hudson/hudson@itaquera2
SELECT   'itaquera',

conn hudson/hudson@armenia2
SELECT   'armenia',


conn hudson/hudson@campinas

SELECT   'campinas',


conn hudson/hudson@samaro

SELECT   'samaro',


conn hudson/hudson@santos

SELECT   'santos',


conn hudson/hudson@guarulhos

SELECT   'guarulhos',


conn hudson/hudson@jundiai

SELECT   'jundiai',

conn hudson/hudson@sorocaba

SELECT   'sorocaba',


conn hudson/hudson@taubate
SELECT   'taubate',


conn hudson/hudson@saocarlos

SELECT   'saocarlos',


conn hudson/hudson@sbernado

SELECT   'sbernado',


conn hudson/hudson@botucatu

SELECT   'botucatu',


conn hudson/hudson@franca

SELECT   'franca',


conn hudson/hudson@interlagos

SELECT   'interlagos',


conn hudson/hudson@piracicaba

SELECT   'piracicaba',


conn hudson/hudson@pprudente

SELECT   'pprudente',


conn hudson/hudson@rioclaro

SELECT   'rioclaro',


conn sys/amvaumevalid016003sp@sjriopreto as sysdba

SELECT   'sjriopreto',


conn hudson/hudson@tatui

SELECT   'tatui',


conn sys/amvaumevalid029005sp@ademar as sysdba

SELECT   'ademar',


conn hudson/hudson@bauru

SELECT   'bauru',


conn hudson/hudson@campshop

SELECT   'campshop',


conn hudson/hudson@aracatuba

SELECT   'aracatuba',



conn hudson/hudson@araraguara

SELECT   'araraguara',


conn hudson/hudson@marilia

SELECT   'marilia',


conn hudson/hudson@mogi

SELECT   'mogi',


conn hudson/hudson@lapa

SELECT   'lapa',


conn orabkp/oravalid@suzano2

SELECT   'suzano',


conn orabkp/oravalid@aricanduva_new

SELECT   'aricanduva',


conn orabkp/oravalid@taboaoserra

SELECT   'taboaoserra',


REM RJ

conn hudson/hudson@pvargas

SELECT   'pvargas',


conn hudson/hudson@campos

SELECT   'campos',


conn hudson/hudson@vredonda

SELECT   'vredonda',


conn orabkp/oravalid@recreio

SELECT   'recreio',



conn hudson/hudson@bangu

SELECT   'wshopping',


conn hudson/hudson@rs

SELECT   'rs',



conn sys/amvaumevalid070007pa@para06 as sysdba

SELECT   'para06',


REM DF

conn orabkp/oravalid@df2

SELECT   'df',


conn hudson/"S0f1@"@go_rac

SELECT   'rac_go',


REM PA

conn sys/amvaumevalid070006pa@para05 as sysdba

SELECT   'para05',


conn hudson/hudson@maraba

SELECT   'maraba',


conn hudson/hudson@santarem

SELECT   'santarem',


conn hudson/hudson@redencao2

SELECT   'redencao',


conn hudson/"S0f1@"@tjprod

SELECT   'tjprod',


conn hudson/"S0f1@"@grafica

SELECT   'grafica',


conn hudson/"S0f1@"@icom

SELECT   'icom',


conn hudson/"S0f1@"@bimagem

SELECT   'bimagem',


conn hudson/"S0f1@"@creasp

SELECT   'creasp',




spool off ;


