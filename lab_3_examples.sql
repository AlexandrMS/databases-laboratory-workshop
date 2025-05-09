USE [�������_��_��������];

/* ������������ 3. ������� */
/* ������ 1:
������� ������ �����, ������� ������� ������ 1 ���. ��. ��
*/
SELECT ��������, �������, �������, ���������, ���������
FROM 
	������ 
WHERE 
	������� > 1000000 

/* ������ 2:
������� ������ �����, ��������� ������� �� ������ 1 ���. ���.
*/
SELECT ��������, �������, �������, ���������, ���������
FROM
	������
WHERE
	��������� !> 1000000

/* ������ 3:
������� ������ ����������� �����
*/
SELECT ��������, �������, �������, ���������, ���������
FROM
	������
WHERE 
	���������='������'

/* ������ 4:
������� ������ ���� �����, ����� �����������
*/
SELECT ��������, �������, �������, ���������, ���������
FROM 
	������
WHERE
	��������� != '������'


/* ������ 5:
������� ������ �����, ��������� ������� ������ 1 ���. ���., � ������� ������ 100 ���. ��. ��
*/ 
SELECT ��������, �������, �������, ���������, ���������
FROM
	������
WHERE
	(���������>1000000)AND(�������<100000)

/* ������ 6:
������� ������ �����, ������� ��������� � ������ � �� ��������� ������ 10 ���. ���., ��� ��������� � ����, 
� ��������� ������ 50 ���. ���
*/
SELECT ��������, �������, �������, ���������, ���������
FROM
	������
WHERE
	(���������='������')AND(���������>10000000)
	OR
	(���������='����')AND(���������>50000000)

/* ������ 7:
������� ������ �����, ��������� ������� �� 10 �� 100 ���. ���., � ������� �� 100 �� 200 ���. ��. ��
*/
SELECT ��������, �������, �������, ���������, ���������
FROM 
	������
WHERE
	(��������� BETWEEN 10000000 AND 100000000)
	AND 
	(������� >= 100000) AND (������� <= 200000)

/* ������ 8: 
������� ��������������� � ���������� ������� ������ ����� �� ������ �� ��������
*/
SELECT ��������, �������, �������, ���������, ���������
FROM 
	������
WHERE
	�������� BETWEEN '�����' AND '�������'
ORDER BY 
	��������

/* ������ 9: 
������� ������ �����, �������� ������� ���������� � ����� �ѻ
*/
SELECT ��������, �������, �������, ���������, ���������
FROM	
	������
WHERE
	�������� LIKE 'C%'

/* ������ 10: 
������� ������ �����, � �������� ������� ������ ����� � ��, � ��������� � ��
*/ 
SELECT ��������, �������, �������, ���������, ���������
FROM 
	������
WHERE 
	�������� LIKE '_a%�'

/* ������ 11:
������� ������ �����, � �������� ������� ������ ����� � ��, �� ��� ��
*/
SELECT ��������, �������, �������, ���������, ���������
FROM 
	������
WHERE 
	�������� LIKE '__[���]%'

/* ������ 12:
������� ������ �����, �������� ������� ���������� � ����� �� ��� �� �û
*/ 
SELECT ��������, �������, �������, ���������, ���������
FROM 
	������
WHERE
	�������� LIKE '[�-�]%'

/* ������ 13:
������� ������ �����, �������� ������� �� ���������� � ����� �� ��� �� �û ��� � ����� �ѻ
*/
SELECT ��������, �������, �������, ���������, ���������
FROM 
	������
WHERE 
	�������� LIKE '[^�-�,^�]%'

/* ������ 14:
������� ������ �����, ������� ������� �� ������� � ����
*/
SELECT ��������, �������, �������, ���������, ���������
FROM 
	������
WHERE 
	������� IS NULL

/* ������ 15:
������� ������ �����������, ��������� � ����������� �����
*/ 
SELECT ��������, �������, �������, ���������, ���������
FROM 
	������
WHERE 
	��������� IN ('������','����','������')