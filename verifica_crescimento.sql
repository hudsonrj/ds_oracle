set head off
set echo off
set linesize 1000
set pagesize 10000

spool c:\temp\locais_crescimento.txt
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

spool C:\Temp\crescimento.txt

conn hudson/"S0f1@"@CAPPROD_RAC

SELECT   'CAPPROD',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@se2

SELECT   'se',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@ribeirao 

SELECT   'ribeirao',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');


conn hudson/hudson@osasco

SELECT   'osasco',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@itaquera2
SELECT   'itaquera',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@armenia2
SELECT   'armenia',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@campinas

SELECT   'campinas',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@samaro

SELECT   'samaro',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@santos

SELECT   'santos',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@guarulhos

SELECT   'guarulhos',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@jundiai

SELECT   'jundiai',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');
	   
conn hudson/hudson@sorocaba

SELECT   'sorocaba',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@taubate
SELECT   'taubate',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@saocarlos

SELECT   'saocarlos',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@sbernado

SELECT   'sbernado',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@botucatu

SELECT   'botucatu',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@franca

SELECT   'franca',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@interlagos

SELECT   'interlagos',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@piracicaba

SELECT   'piracicaba',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@pprudente

SELECT   'pprudente',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@rioclaro

SELECT   'rioclaro',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn sys/amvaumevalid016003sp@sjriopreto as sysdba

SELECT   'sjriopreto',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@tatui

SELECT   'tatui',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn sys/amvaumevalid029005sp@ademar as sysdba

SELECT   'ademar',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@bauru

SELECT   'bauru',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@campshop

SELECT   'campshop',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@aracatuba

SELECT   'aracatuba',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');


conn hudson/hudson@araraguara

SELECT   'araraguara',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@marilia

SELECT   'marilia',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@mogi

SELECT   'mogi',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@lapa

SELECT   'lapa',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn orabkp/oravalid@suzano2

SELECT   'suzano',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn orabkp/oravalid@aricanduva_new

SELECT   'aricanduva',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn orabkp/oravalid@taboaoserra

SELECT   'taboaoserra',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

REM RJ

conn hudson/hudson@pvargas

SELECT   'pvargas',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@campos

SELECT   'campos',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@vredonda

SELECT   'vredonda',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn orabkp/oravalid@recreio

SELECT   'recreio',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');


conn hudson/hudson@bangu

SELECT   'wshopping',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@rs

SELECT   'rs',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');


conn sys/amvaumevalid070007pa@para06 as sysdba

SELECT   'para06',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

REM DF

conn orabkp/oravalid@df2

SELECT   'df',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/"S0f1@"@go_rac

SELECT   'rac_go',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

REM PA

conn sys/amvaumevalid070006pa@para05 as sysdba

SELECT   'para05',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@maraba

SELECT   'maraba',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@santarem

SELECT   'santarem',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/hudson@redencao2

SELECT   'redencao',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/"S0f1@"@tjprod

SELECT   'tjprod',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/"S0f1@"@grafica

SELECT   'grafica',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/"S0f1@"@icom

SELECT   'icom',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/"S0f1@"@bimagem

SELECT   'bimagem',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');

conn hudson/"S0f1@"@creasp

SELECT   'creasp',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');



spool off ;


