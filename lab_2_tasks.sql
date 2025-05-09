USE [�������_��_��������];

/* ������������ 2. ������� */

/* 1. ������� ���, ������������� � ���� �������� ���� ����������. */
SELECT �������, ���, ��������, �������������, ����_��������
FROM ���������

/* 2. ������� ����������� ���� �� ���������� �������, ������� �������� ����������
�� ���������� � ����: ������� ���� �������� ������� ������ � 1974�. */

SELECT ������� + ' ' + ��� + ' ' + �������� + ' ������� ������ � ' + CONVERT(nvarchar, ���_����������_������) AS '� ���������� ������'
FROM ��������� 

/* 3. ������� ��� ���������� � ����������� ���� ������ 5 ��� ����� ���������� ������� */
 SELECT �������, ���, ��������,[����� 5 ��� ����� ���������� ������] = ���_����������_������ + 5
 FROM ��������� 

 /* 4. ������� ������ ����� ���������� ������, ����� ��������� */
 SELECT DISTINCT ���_����������_������
 FROM ��������� 

 /* 5. ������� ������ ����������, ��������������� �� �������� ���� ��������. */
 SELECT * 
 FROM ���������
 ORDER BY ����_�������� DESC 

 /* 6. ������� ������ ����������, ��������������� � �������� ���������� �������
�������������, �� �������� ���� ���������� ������, � � ���������� ������� ���. */
SELECT * 
FROM ���������
ORDER BY 
	������������� DESC, ���_����������_������ DESC, ������� ASC 

/*  7. ������� ������ ������ �� ������ ����������, ���������������� � �������� ���������� ������� ��� */
SELECT TOP 1  
* 
FROM ���������
ORDER BY 
	������� DESC 

/* 9. ������� ������� ���������, ������� ������ ���� ������� ������ */
SELECT TOP 1
	�������
FROM ���������
ORDER BY 
	���_����������_������ ASC 

/* 10. ������� �� ������� ����������, ��������������� �� ����������� ���� ���������� ������, ������ ����������, � ������� ��� ���������� ������ � ���� �� ������ ���� �
��������������� �������. */SELECT TOP 4 WITH TIES*FROM ���������ORDER BY 
	���_����������_������ ASC 

/* 11. . �������, ������� � ��������, ������ ����������, ��������������� �� ����������� ���� ��������. */
SELECT 
	* 
FROM 
	���������
ORDER BY 
	����_�������� ASC
	OFFSET 9 ROWS 

/* 12. ������� ������� � ������� ������ �� ������ ����������, ���������������� � ���������� ������� ��� */
SELECT 
	*
FROM 
	���������
ORDER BY 
	�������
	OFFSET 8 ROWS
	FETCH NEXT 2 ROWS ONLY



