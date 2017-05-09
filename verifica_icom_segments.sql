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
PROMPT br
PROMPT ba
PROMPT pa
PROMPT pr

spool off


conn hudson/"S0f1@"@CAPPROD_RAC

column timendate new_value spooltime noprint
select to_char(sysdate,'ddmmyyyy') timeNdate from dual;
spool C:\Temp\&spooltime-output_icom.txt

SELECT   'sp',
to_char(sysdate,'DD/MM/YYYY') data,owner Esquema, segment_type Tipo, count(1) Qtd,SUM (BYTES)/1024/1024 MB
    FROM dba_segments
   WHERE owner NOT IN
            ('SYS', 'SYSTEM', 'SYSMAN', 'APEX_030200', 'CTXSYS', 'DBSNMP',
             'EXFSYS', 'MDSYS', 'OLAPSYS', 'ORDDATA', 'ORDSYS', 'OUTLN',
             'WMSYS', 'XDXDB')
GROUP BY owner, segment_type
ORDER BY 1, 2;


REM RJ

conn hudson/hudson@pvargas

SELECT   'rj',
to_char(sysdate,'DD/MM/YYYY') data,owner Esquema, segment_type Tipo, count(1) Qtd,SUM (BYTES)/1024/1024 MB
    FROM dba_segments
   WHERE owner NOT IN
            ('SYS', 'SYSTEM', 'SYSMAN', 'APEX_030200', 'CTXSYS', 'DBSNMP',
             'EXFSYS', 'MDSYS', 'OLAPSYS', 'ORDDATA', 'ORDSYS', 'OUTLN',
             'WMSYS', 'XDXDB')
GROUP BY owner, segment_type
ORDER BY 1, 2;


conn hudson/"S0f1@"@capturars

SELECT   'rs',
to_char(sysdate,'DD/MM/YYYY') data,owner Esquema, segment_type Tipo, count(1) Qtd,SUM (BYTES)/1024/1024 MB
    FROM dba_segments
   WHERE owner NOT IN
            ('SYS', 'SYSTEM', 'SYSMAN', 'APEX_030200', 'CTXSYS', 'DBSNMP',
             'EXFSYS', 'MDSYS', 'OLAPSYS', 'ORDDATA', 'ORDSYS', 'OUTLN',
             'WMSYS', 'XDXDB')
GROUP BY owner, segment_type
ORDER BY 1, 2;


conn orabkp/oravalid@digital_pa

SELECT   'pa',
to_char(sysdate,'DD/MM/YYYY') data,owner Esquema, segment_type Tipo, count(1) Qtd,SUM (BYTES)/1024/1024 MB
    FROM dba_segments
   WHERE owner NOT IN
            ('SYS', 'SYSTEM', 'SYSMAN', 'APEX_030200', 'CTXSYS', 'DBSNMP',
             'EXFSYS', 'MDSYS', 'OLAPSYS', 'ORDDATA', 'ORDSYS', 'OUTLN',
             'WMSYS', 'XDXDB')
GROUP BY owner, segment_type
ORDER BY 1, 2;


REM DF

conn orabkp/oravalid@df2

SELECT   'df',
to_char(sysdate,'DD/MM/YYYY') data,owner Esquema, segment_type Tipo, count(1) Qtd,SUM (BYTES)/1024/1024 MB
    FROM dba_segments
   WHERE owner NOT IN
            ('SYS', 'SYSTEM', 'SYSMAN', 'APEX_030200', 'CTXSYS', 'DBSNMP',
             'EXFSYS', 'MDSYS', 'OLAPSYS', 'ORDDATA', 'ORDSYS', 'OUTLN',
             'WMSYS', 'XDXDB')
GROUP BY owner, segment_type
ORDER BY 1, 2;


conn hudson/"S0f1@"@go_rac

SELECT   'go',
to_char(sysdate,'DD/MM/YYYY') data,owner Esquema, segment_type Tipo, count(1) Qtd,SUM (BYTES)/1024/1024 MB
    FROM dba_segments
   WHERE owner NOT IN
            ('SYS', 'SYSTEM', 'SYSMAN', 'APEX_030200', 'CTXSYS', 'DBSNMP',
             'EXFSYS', 'MDSYS', 'OLAPSYS', 'ORDDATA', 'ORDSYS', 'OUTLN',
             'WMSYS', 'XDXDB')
GROUP BY owner, segment_type
ORDER BY 1, 2;


conn hudson/"S0f1@"@spcbr

SELECT   'ba',
to_char(sysdate,'DD/MM/YYYY') data,owner Esquema, segment_type Tipo, count(1) Qtd,SUM (BYTES)/1024/1024 MB
    FROM dba_segments
   WHERE owner NOT IN
            ('SYS', 'SYSTEM', 'SYSMAN', 'APEX_030200', 'CTXSYS', 'DBSNMP',
             'EXFSYS', 'MDSYS', 'OLAPSYS', 'ORDDATA', 'ORDSYS', 'OUTLN',
             'WMSYS', 'XDXDB')
GROUP BY owner, segment_type
ORDER BY 1, 2;


conn hudson/"S0f1@"@CNH_MA

SELECT   'ma',
to_char(sysdate,'DD/MM/YYYY') data,owner Esquema, segment_type Tipo, count(1) Qtd,SUM (BYTES)/1024/1024 MB
    FROM dba_segments
   WHERE owner NOT IN
            ('SYS', 'SYSTEM', 'SYSMAN', 'APEX_030200', 'CTXSYS', 'DBSNMP',
             'EXFSYS', 'MDSYS', 'OLAPSYS', 'ORDDATA', 'ORDSYS', 'OUTLN',
             'WMSYS', 'XDXDB')
GROUP BY owner, segment_type
ORDER BY 1, 2;


conn hudson/"S0f1@"@ICOM_PR

SELECT   'pr',
to_char(sysdate,'DD/MM/YYYY') data,owner Esquema, segment_type Tipo, count(1) Qtd,SUM (BYTES)/1024/1024 MB
    FROM dba_segments
   WHERE owner NOT IN
            ('SYS', 'SYSTEM', 'SYSMAN', 'APEX_030200', 'CTXSYS', 'DBSNMP',
             'EXFSYS', 'MDSYS', 'OLAPSYS', 'ORDDATA', 'ORDSYS', 'OUTLN',
             'WMSYS', 'XDXDB')
GROUP BY owner, segment_type
ORDER BY 1, 2;

conn orabkp/oravalid@bimagemnew2

SELECT   'br',
to_char(sysdate,'DD/MM/YYYY') data,owner Esquema, segment_type Tipo, count(1) Qtd,SUM (BYTES)/1024/1024 MB
    FROM dba_segments
   WHERE owner NOT IN
            ('SYS', 'SYSTEM', 'SYSMAN', 'APEX_030200', 'CTXSYS', 'DBSNMP',
             'EXFSYS', 'MDSYS', 'OLAPSYS', 'ORDDATA', 'ORDSYS', 'OUTLN',
             'WMSYS', 'XDXDB')
GROUP BY owner, segment_type
ORDER BY 1, 2;


spool off ;


