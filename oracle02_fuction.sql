/*=====================================================
SQL(structured query language)�Լ�
1. �������Լ� : �� �ϳ��� �ϳ��� ����� ����Ѵ�
              (�����Լ�, �����Լ�, ��¥�Լ�, ��ȯ�Լ�, �Ϲ��Լ�)
2. �������Լ� : �� �������� �ϳ��� ����� ����Ѵ�
               (�հ�, ���, �ִ�, �ּ�, ����)  
====================================================== 
--SELECT�������� �ݵ�� ���̺���� ����ؾ� �Ѵ�.
--�׷��� SELECT���� ���̳� Ư���Լ��� �̿��ؼ� ������� �����ö�
-- ����� �� �ִ� DUAL�̶�� ���̺��� �����ϰ� �ִ�. */


SELECT 3+1
FROM dual;

SELECT sysdate
FROM dual;

SELECT max(10)
FROM dual;

--2��° �ε������� 3�� ī��Ʈ
SELECT substr('korea',2,3)
FROM dual;

/*----------------------------
���� �Լ�
*-----------------------------
--�ܾ��� ù���ڸ� �빮�ڷ� �������ִ� �Լ�--

SELECT initcap('korea hello')
FROM dual;

--��� ���ڸ� �빮�ڷ� ������ �ִ� �Լ��̴�.

SELECT upper('korea')    /* java: toUpperCase() */
FROM dual;

SELECT first_name, upper(first_name),
    last_name, upper(last_name)
FROM employees;

--��� ���ڸ� �ҹ��ڷ� �������ִ� �Լ��̴�.
SELECT lower('KOREA') /*java: toLowerCase()*/
FROM dual;

SELECT first_name, lower(first_name),
    last_name, lower(last_name)
FROM employees;

--employees���̺� first_name���� ��ҹ��� ���о���
--'Ja'�� ������ �� first_name, salary�� ����϶�.
SELECT first_name, salary
FROM employees
WHERE upper(first_name) LIKE upper('%ja%');

--������ ���̸� �������ִ� �Լ�
SELECT length('korea')
FROM dual;      --5

SELECT length('�ѱ�')
FROM dual;          --2

--������ ���̸� ����Ʈ�� ���ؼ� �������ִ� �Լ�
SELECT lengthb('korea')
FROM dual;      --5

SELECT lengthb('�ѱ�')
FROM dual;      --6:�ѱ��� �ѱ��ڴ� 3����Ʈ ����

CREATE TABLE user1(
 data varchar2(5)
 );
 
 SELECT*FROM user1;

--ORA-12899: value too large for column "HR"."USER1"."DATA" (actual: 11, maximum: 5)
 INSERT INTO user1(data)
 VALUES('south korea');
 
 --ORA-12899: value too large for column "HR"."USER1"."DATA" (actual: 6, maximum: 5)
 -- data varchar2�� 5�ε� ����Ʈ�� 5�� �ʰ��ϴϱ� ������ �ߴ� ��
 INSERT INTO user1(data)
 VALUES('�ѱ�');