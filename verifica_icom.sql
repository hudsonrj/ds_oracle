set head off
set echo off
set linesize 1000
set pagesize 10000

spool c:\temp\locais_icom.txt
PROMPT sp
PROMPT rj
PROMPT rs
PROMPT pa
PROMPT df
PROMPT go
PROMPT central_rj
PROMPT ba
PROMPT pa
PROMPT pr

spool off

spool C:\Temp\crescimento_icom.txt

conn hudson/"S0f1@"@CAPPROD_RAC

column timendate new_value spooltime noprint
select to_char(sysdate,'ddmmyyyy') timeNdate from dual;
spool &spooltime-output_icom.txt

SELECT   'sp',
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

SELECT   'rj',
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

SELECT   'pa',
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

SELECT   'go',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');


conn hudson/"S0f1@"@spcbr

SELECT   'ba',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');


conn hudson/"S0f1@"@CNH_MA

SELECT   'ma',
TO_CHAR(creation_time, 'YYYY-MM') creation_month,
       ROUND(SUM(bytes)/1024/1024) mb_growth,
       ROUND(SUM(bytes)/1024/1024/1024) gb_growth,
       ROUND(SUM(bytes)/1024/1024/1024/1024, 1) tb_growth
  FROM v$datafile
 GROUP BY
       TO_CHAR(creation_time, 'YYYY-MM')
 ORDER BY
       TO_CHAR(creation_time, 'YYYY-MM');


conn hudson/"S0f1@"@pr

SELECT   'pr',
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


