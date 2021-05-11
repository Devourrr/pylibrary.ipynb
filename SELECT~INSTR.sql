SELECT ENAME, DEPTNO FROM EMP; -- ���̺� �� ����ϱ�
SELECT * FROM EMP ORDER BY EMPNO; -- ORDER BY �������� ASC �������� DESC
SELECT * FROM EMP ORDER BY EMPNO DESC;
SELECT * FROM EMP ORDER BY SAL DESC;
SELECT * FROM EMP ORDER BY DEPTNO ASC, SAL DESC; -- �������� �������� ���ÿ� ���
-- ������ ������ ���� �ڿ�, ��� �Ҹ��ϰ� ������ �� �ʿ��� ��쿡�� ORDER BY�� ���
SELECT * FROM EMP WHERE DEPTNO = 30;
SELECT * FROM EMP WHERE EMPNO = 7782; -- WHERE ��
SELECT * FROM EMP WHERE EMPNO = 7499
AND DEPTNO = 30;
SELECT * FROM EMP WHERE DEPTNO = 30 OR JOB = 'CLERK';
SELECT * FROM EMP WHERE DEPTNO = 20 OR JOB = 'SALESMAN';
SELECT * FROM EMP WHERE SAL * 12 = 36000; -- ���� ���������
SELECT * FROM EMP WHERE SAL>=3000; -- ��� �� ������
SELECT * FROM EMP WHERE SAL>=2500 AND JOB = 'ANALYST';
SELECT * FROM EMP WHERE ENAME >= 'F'; -- ���ڿ� ��� �� ������( ENAME ù ���ڰ� 'F'�� ���ų� ������ ��
SELECT * FROM EMP WHERE ENAME <= 'FORZ'; -- ENAME �� ���� 'FORZ'�� ������ ���ڿ����� ���ĺ� ������ �տ��ִ� �� ���
SELECT * FROM EMP WHERE SAL!= 3000;
SELECT * FROM EMP WHERE SAL <> 3000;
SELECT * FROM EMP WHERE SAL ^= 3000; -- ��� ������, �� �� ���� ��� ���
SELECT * FROM EMP WHERE NOT SAL =3000; -- ������������, ���� IN, BETWEEN, ISNULL�����ڿ� �Բ� ���������� ���
-- ������ ������ ���ǽ��� AND, OR�� �����ִ� ���¿��� ���ݴ� ����� ����� �� ������ �����ϰ� ��� ����
SELECT * FROM EMP WHERE JOB IN('MANAGER','SALASMAN','CLERK'); -- IN ������

SELECT * FROM EMP WHERE JOB NOT IN ('MANAGER','SALESMAN','CLERK'); -- IN������ + ������ ������

SELECT * FROM EMP WHERE DEPTNO IN (10, 20);

SELECT * FROM EMP WHERE SAL BETWEEN 2000 AND 3000; --BETWEEN A AND B ������
SELECT * FROM EMP WHERE SAL NOT BETWEEN 2000 AND 3000; -- NOT������ �Բ� Ȱ��
SELECT * FROM EMP WHERE ENAME LIKE 'S%'; -- ENAME�� ���� 'S'�� �����ϴ� �����͸� ��ȸ, '_','%' = ���ϵ�ī��(Ư������, ���ڿ� ��ü Ȥ�� ���ڿ��������� ���� ǥ���ϴ� Ư�� ����)
SELECT * FROM EMP WHERE ENAME LIKE '_L%'; -- ENAME �� ��° ���ڴ� 'L', �� �տ� �ݵ�� �� ���ڰ� �;���
SELECT * FROM EMP WHERE ENAME LIKE '%AM%'; -- ���ϴ� ���ڿ� �յ� ��� ���ϵ�ī�� ���̱� -> � �ܾ ���Ե� �˻���� ����
SELECT * FROM EMP WHERE ENAME NOT LIKE '%AM%'; -- ���ϴ� ���ڿ� ���ԵǾ����� ���� ������ ���
--SELECT * FROM SOME_TABLE WHERE SOME_COLUMN LIKE 'A\_A%' ESCAPE '\'; -- �����Ϳ� ����ī�� ��ȣ�� ���Ե� ��� ESCAPE�� ����ϸ� �����ͷμ� ���ڷ� �ٷ�� ����
-- LIKE �����ڿ� ���ϵ� ī�� ������ ������ ������ ��ȸ���ɰ� ����ǹǷ� �߿��ϴ�
SELECT ENAME, SAL, SAL*12+COMM AS ANNSAL,COMM FROM EMP; -- NULL�� ������ ���� ������ ����ִ� ����
SELECT * FROM EMP WHERE COMM = NULL; -- � �� �����ڷ� NULL��, NULL�� ���ص� �̤ŤӤ�
SELECT * FROM EMP WHERE COMM IS NULL; -- Ư�� �� ������ NULL���� Ȯ���Ϸ��� IN NULL ������ ���
SELECT * FROM EMP WHERE MGR IS NOT NULL; -- �ݴ��� ���, �� �����Ͱ� NULL�� �ƴ� ������ ��ȸ�� IS NOT NULL������
SELECT * FROM EMP WHERE SAL>NULL AND COMM IS NULL; -- AND�����ڿ� IS NULL������ ����ϱ�
SELECT * FROM EMP WHERE SAL>NULL OR COMM IS NULL; -- OR�����ڿ� IS NULL������ ����ϱ�
/* ������� �ٸ� ���� - AND�����ڿ� OR �������� Ư¡
AND - ���� �׸��� ��� TRUE�� ��쿡�� ��� ���� TRUE�� ��ȯ, ��������Ͱ� ���
OR - ���� �׸��� ��� �׸� TRUE���� ��� ���� TRUE�� ��ȯ*/
--SELECT EMPNO, ENAME, SAL,DEPTNO FROM

SELECT * FROM EMP WHERE ENAME LIKE '%S';
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO FROM EMP
WHERE DEPTNO = 30 AND JOB = 'SALESMAN';
SELECT EMPNO,ENAME,SAL,DEPTNO FROM EMP
WHERE DEPTNO IN(20, 30) AND SAL>2000;
SELECT EMPNO,ENAME,SAL,DEPTNO FROM EMP
WHERE DEPTNO IN(20, 30)
INTERSECT
SELECT EMPNO,ENAME,SAL,DEPTNO FROM EMP
WHERE SAL > 2000;
SELECT * FROM EMP WHERE SAL>=2000
UNION
SELECT * FROM EMP WHERE SAL<2000;
SELECT ENAME, EMPNO, SAL, DEPTNO FROM EMP WHERE DEPTNO = 30
AND SAL NOT BETWEEN 1000 AND 2000;
SELECT * FROM EMP WHERE COMM IS NULL
AND MGR IS NOT NULL
AND JOB IN ('MANAGER','CLERK')
AND ENAME NOT LIKE '_% L';

SELECT ENAME, UPPER(ENAME), LOWER(ENAME), INITCAP(ENAME) FROM EMP; -- ��ҹ��ڸ� �ٲ��ִ¹����Լ� UPPER LOWER INITCAP
SELECT * FROM EMP WHERE UPPER(ENAME) = UPPER('scott'); --��� �̸��� SCOTT�� ������ ã��
SELECT * FROM EMP WHERE UPPER(ENAME) LIKE UPPER('%scott%'); -- ��� �̸��� SCOTT�ܾ ������ ������ ã��
-- ��ҹ��� ������� SCOTT�����Ͱ� ��µ�
SELECT UPPER(ENAME) FROM EMP;
SELECT ENAME, LENGTH(ENAME) FROM EMP; -- ���ڿ� ���̸� ���ϴ� LENGTH�Լ�
SELECT ENAME, LENGTH(ENAME) FROM EMP WHERE LENGTH(ENAME) >= 5; -- WHERE������ ����Ͽ� ���ڿ� ���� �� �� �����ϱ�
SELECT LENGTH('�ѱ�'), LENGTHB('�ѱ�') FROM DUAL; -- LENGTHB�Լ��� ���ڿ� ������ ���̰� �ƴ� ����Ʈ�� ��ȯ�ϱ�
SELECT * FROM EMP WHERE LENGTH(ENAME)>=6;
SELECT JOB, SUBSTR(JOB,1,2), SUBSTR(JOB,3,2), SUBSTR(JOB,5) FROM EMP; -- ���ڿ� �Ϻθ� �����ϴ� SUBSTR�Լ� ��� SUBSTR(���ڿ�������,������ġ,�������)
SELECT SUBSTR(ENAME,3) FROM EMP;
SELECT JOB,
SUBSTR(JOB, -LENGTH(JOB)) -- CLERK�� -LENGTH���� ������ ���
, SUBSTR(JOB, -LENGTH(JOB),2) -- CLERK�� -LENGTH���� �� ���� ���
, SUBSTR(JOB, -3) FROM EMP; -- CLERK�� -3���ں��� ������ ���
SELECT INSTR('HELLO, ORACLE!', 'L') AS INSTR_1 -- 'L'�� ������ġ
, INSTR('HELLO, ORACLE!', 'L',5) AS INSTR_2 -- 5��° ���ں��� 'L'�� ��ġ ��ȸ
, INSTR('HELLO, ORACLE!', 'L',2,2) AS INSTR_3 FROM DUAL; -- 2��° ���ں��� �� ��° 'L'�� �ִ� ��ġ ��ȸ
SELECT * FROM EMP WHERE INSTR(ENAME,'S')>0; -- INSTR�Լ��� ����̸��� 'S'�� �ִ� �� ���ϱ�
SELECT * FROM EMP WHERE ENAME LIKE '%S%'; -- LIKE �����ڷ� ENAME�� 'S'�� �ִ� �� ���ϱ�
-- INSTR�Լ��� LIKE������ó�� ����ϴ� ����� ���� ������ ������ ������ ���� ����