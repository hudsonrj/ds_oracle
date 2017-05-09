set head off
set echo off
set linesize 1000
set pagesize 10000

spool c:\temp\locais_archives.txt
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

spool C:\Temp\archives.txt

conn hudson/"S0f1@"@CAPPROD_RAC

SELECT   'CAPPROD'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@se2

SELECT   'se'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;

conn hudson/hudson@ribeirao 

SELECT   'ribeirao'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@osasco

SELECT   'osasco'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@itaquera2
SELECT   'itaquera'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;

conn hudson/hudson@armenia2
SELECT   'armenia'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@campinas

SELECT   'campinas'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@samaro

SELECT   'samaro'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@santos

SELECT   'santos'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@guarulhos

SELECT   'guarulhos'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@jundiai

SELECT   'jundiai'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;

conn hudson/hudson@sorocaba

SELECT   'sorocaba'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@taubate
SELECT   'taubate'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@saocarlos

SELECT   'saocarlos'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@sbernado

SELECT   'sbernado'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@botucatu

SELECT   'botucatu'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@franca

SELECT   'franca'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@interlagos

SELECT   'interlagos'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@piracicaba

SELECT   'piracicaba'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@pprudente

SELECT   'pprudente'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@rioclaro

SELECT   'rioclaro'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn sys/amvaumevalid016003sp@sjriopreto as sysdba

SELECT   'sjriopreto'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@tatui

SELECT   'tatui'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn sys/amvaumevalid029005sp@ademar as sysdba

SELECT   'ademar'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@bauru

SELECT   'bauru'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@campshop

SELECT   'campshop'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@aracatuba

SELECT   'aracatuba'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;



conn hudson/hudson@araraguara

SELECT   'araraguara'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@marilia

SELECT   'marilia'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@mogi

SELECT   'mogi'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@lapa

SELECT   'lapa'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn orabkp/oravalid@suzano2

SELECT   'suzano'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn orabkp/oravalid@aricanduva_new

SELECT   'aricanduva'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn orabkp/oravalid@taboaoserra

SELECT   'taboaoserra'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


REM RJ

conn hudson/hudson@pvargas

SELECT   'pvargas'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@campos

SELECT   'campos'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@vredonda

SELECT   'vredonda'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn orabkp/oravalid@recreio

SELECT   'recreio'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;



conn hudson/hudson@bangu

SELECT   'wshopping'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@rs

SELECT   'rs'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;



conn sys/amvaumevalid070007pa@para06 as sysdba

SELECT   'para06'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


REM DF

conn orabkp/oravalid@df2

SELECT   'df'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/"S0f1@"@go_rac

SELECT   'rac_go'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


REM PA

conn sys/amvaumevalid070006pa@para05 as sysdba

SELECT   'para05'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@maraba

SELECT   'maraba'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@santarem

SELECT   'santarem'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/hudson@redencao2

SELECT   'redencao'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/"S0f1@"@tjprod

SELECT   'tjprod'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/"S0f1@"@grafica

SELECT   'grafica'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/"S0f1@"@icom

SELECT   'icom'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/"S0f1@"@bimagem

SELECT   'bimagem'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;


conn hudson/"S0f1@"@creasp

SELECT   'creasp'||';'||to_char(first_time,'DD/MM/YYYY HH24:MI:SS') ||';'||sequence#||';'|| (Select max(bytes)/1024/1024 from sys.v_$log) Tamanho FROM gV$log_history where first_time > sysdate-7;




spool off ;


