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
PROMPT maranhao

spool off

spool C:\Temp\backups_d_1.txt

conn hudson/"S0f1@"@CAPPROD_RAC

SELECT   'CAPPROD', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@se2

SELECT   'se', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@ribeirao 

SELECT   'ribeirao', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@osasco

SELECT   'osasco', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@itaquera2
SELECT   'itaquera', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@armenia2
SELECT   'armenia', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@campinas

SELECT   'campinas', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@samaro

SELECT   'samaro', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@santos

SELECT   'santos', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@guarulhos

SELECT   'guarulhos', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@jundiai

SELECT   'jundiai', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@sorocaba

SELECT   'sorocaba', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@taubate
SELECT   'taubate', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@saocarlos

SELECT   'saocarlos', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@sbernado

SELECT   'sbernado', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@botucatu

SELECT   'botucatu', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@franca

SELECT   'franca', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@interlagos

SELECT   'interlagos', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@piracicaba

SELECT   'piracicaba', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@pprudente

SELECT   'pprudente', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@rioclaro

SELECT   'rioclaro', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn sys/amvaumevalid016003sp@sjriopreto as sysdba

SELECT   'sjriopreto', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@tatui

SELECT   'tatui', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn sys/amvaumevalid029005sp@ademar as sysdba

SELECT   'ademar', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@bauru

SELECT   'bauru', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@campshop

SELECT   'campshop', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@aracatuba

SELECT   'aracatuba', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@araraguara

SELECT   'araraguara', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@marilia

SELECT   'marilia', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@mogi

SELECT   'mogi', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@lapa

SELECT   'lapa', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn orabkp/oravalid@suzano2

SELECT   'suzano', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn orabkp/oravalid@aricanduva_new

SELECT   'aricanduva', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn orabkp/oravalid@taboaoserra

SELECT   'taboaoserra', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

REM RJ

conn hudson/hudson@pvargas

SELECT   'pvargas', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@campos

SELECT   'campos', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@vredonda

SELECT   'vredonda', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn orabkp/oravalid@recreio

SELECT   'recreio', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;


conn hudson/hudson@bangu

SELECT   'wshopping', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@rs

SELECT   'rs', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;


conn sys/amvaumevalid070007pa@para06 as sysdba

SELECT   'para06', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

REM DF

conn orabkp/oravalid@df2

SELECT   'df', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/"S0f1@"@go_rac

SELECT   'rac_go', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

REM PA

conn sys/amvaumevalid070006pa@para05 as sysdba

SELECT   'para05', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@maraba

SELECT   'maraba', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@santarem

SELECT   'santarem', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/hudson@redencao2

SELECT   'redencao', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/"S0f1@"@tjprod

SELECT   'tjprod', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/"S0f1@"@grafica

SELECT   'grafica', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/"S0f1@"@icom

SELECT   'icom', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/"S0f1@"@bimagem

SELECT   'bimagem', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/"S0f1@"@creasp

SELECT   'creasp', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

conn hudson/"S0f1@"@cnh_ma

SELECT   'maranhao', host_name, instance_name, decode(operation,'CONTROL FILE AND SPFILE AUTOBACK','CF_SPFILE_AUTOBACKUP',operation) operation,
         DECODE (object_type, 'DB INCR', 'INCR','COMPLETED WITH WARNINGS','WARNINGS',null,'AUTOMATICO','DB FULL','DB_FULL','DATAFILE INCR','DATAFILE_INCR', object_type) tipo,DECODE (r.status, 'COMPLETED WITH WARNINGS','WARNINGS', r.status) Status,
         TO_CHAR (start_time, 'DD/MM/YYYY') dt_inicio,
nvl(TO_CHAR (end_time, 'DD/MM/YYYY'),TO_CHAR (start_time, 'DD/MM/YYYY')) dt_termino,
         TO_CHAR (start_time, 'HH24:MI:SS') hr_inicio,
         nvl(TO_CHAR (end_time, 'HH24:MI:SS'),TO_CHAR (start_time, 'HH24:MI:SS')) hr_termino,
ROUND (output_bytes / 1024 / 1024 / 1024, 2) AS tamanho_bkp,
         ROUND (input_bytes / 1024/1024/1024, 2) AS tam_total,
         nvl(output_device_type,'ERRO') DEVICE,
         nvl(ROUND ((end_time - start_time) * 24 * 60),0) duracao_min
    FROM v$rman_status r, v$instance
   WHERE r.status != 'RUNNING'
     AND operation NOT IN
            ('RMAN', 'LIST', 'REPORT', 'BACKUP VALIDATE', 'RESTORE VALIDATE',
             'DELETE')
     AND TRUNC (start_time) >= TRUNC (SYSDATE -1)
ORDER BY start_time DESC;

spool off ;


