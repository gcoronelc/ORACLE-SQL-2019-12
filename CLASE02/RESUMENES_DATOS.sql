
-- funcuiones agregadas
-- =====================================================
/*
    - COUNT
    - SUM
    - AVG
    - MAX 
    - MIN
*/


SELECT * FROM SCOTT.EMP;


SELECT avg(sal) avg_sal, avg(comm) avg_comm
FROM SCOTT.EMP;


WITH
V1 AS (SELECT SUM(SAL) SUMA FROM SCOTT.EMP)
SELECT EMPNO, SAL, ROUND(SAL/SUMA*100,2) PPORC
FROM SCOTT.EMP, V1;


-- GROUP BY

SELECT chr_sucucodigo, chr_monecodigo, SUM(dec_cuensaldo) SALDO
FROM EUREKA.CUENTA 
GROUP BY chr_sucucodigo, chr_monecodigo
ORDER BY 1, 2;

