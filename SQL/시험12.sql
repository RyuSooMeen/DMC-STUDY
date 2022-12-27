-- 9��
select * from dept_master;
select * from emp_master;

-- 1. ������� ������� ��ȸ
SELECT emp_name, gender, age, hire_date from emp_master
where emp_name = '�������';

-- 2. �ּ� �ձ�, ��ȸ : �����, ����, ����, �Ի�����, �μ���, �ּ�
SELECT e.emp_name, e.gender, e.age, e.hire_date, d.dept_name, a.city || ' ' || a.gu || ' ' || a.address_name
    FROM emp_master e
  LEFT JOIN dept_master d
    ON e.dept_id = d.dept_id
  FULL OUTER JOIN address_master a
    ON e.address_id = a.address_id
order by e.age desc;

-- 3. ����� ���� �μ�����, ��ȸ : �μ���
-- JOIN ���
SELECT d.dept_name FROM dept_master d
LEFT JOIN emp_master e
ON d.dept_id = e.dept_id
WHERE emp_id is null;

SELECT * FROM dept_master d
LEFT JOIN emp_master e
ON d.dept_id = e.dept_id;

--���� ���� ���
SELECT d.dept_name FROM dept_master d
WHERE d.dept_id not in (SELECT e.dept_id FROM emp_master e 
where d.dept_id = e.dept_id);

-- �� �ٸ� Ǯ��
SELECT dept_name FROM dept_master
WHERE dept_id = 
(SELECT dept_id FROM dept_master
MINUS
SELECT dept_id FROM emp_master);

-- 12��
select * from lotto_detail;
select * from lotto_master;
--1. ��÷�ݺ� �ο��� 
SELECT TO_CHAR(m.draw_date,'YYYY') AS YEAR,sum(case when d.win_money < 1000000000 then d.win_person_no else 0 end) AS LESS_THAN_10��,
sum(case when 1000000000 <= d.win_money and d.win_money < 3000000000 then d.win_person_no else 0 end) AS LESS_THAN_30��,
sum(case when 3000000000 <= d.win_money and d.win_money < 5000000000 then d.win_person_no else 0 end) AS LESS_THAN_50��,
sum(case when 5000000000 <= d.win_money and d.win_money < 10000000000 then d.win_person_no else 0 end) AS LESS_THAN_100��,
sum(case when d.win_money >= 10000000000 then d.win_person_no else 0 end) AS MORE_THAN_100��,
sum (d.win_person_no) AS ALL_PEOPLE
FROM lotto_detail d, lotto_master m
where d.seq_no = m.seq_no
GROUP by TO_CHAR(m.draw_date,'YYYY')
order by TO_CHAR(m.draw_date,'YYYY');

-- 2. 1�, 50���̻�
SELECT m.draw_date, m.seq_no, d.rank_no, d.win_money
,num1||', '||num2||', '||num3||', '||num4||', '||num5||', '||num6 as LOTTO_NUM, m.bonus
FROM lotto_detail d, lotto_master m
where d.seq_no = m.seq_no and d.rank_no = 1 and win_money > 5000000000
order by d.win_money desc;

---
select * from fine_dust;
select * from fine_dust_standard;
-- 3. ����, �������� �ʹ̼����� �ִ� �ּ�,���, ��� ����, ����ʹ̼����� ��������
SELECT a.months, a.GU,
a.pm10_max, a.pm10_min, a.pm25_max, a.pm25_min, a.pm10_avg, a.pm25_avg
,( SELECT s.std_name
           FROM fine_dust_standard s
          WHERE s.org_name = 'WHO'
            AND a.pm10_avg BETWEEN s.pm10_start
                               AND s.pm10_end
  ) "�̼����� ����"
,( SELECT s.std_name
           FROM fine_dust_standard s
          WHERE s.org_name = 'WHO'
            AND a.pm25_avg BETWEEN s.pm25_start
                               AND s.pm25_end
  ) "�ʹ̼����� ����"
FROM ( -- ����� �̼����� �� ��������
       SELECT TO_CHAR(d.mea_date,'YYYY-MM') months
             ,d.gu_name GU
             ,max(d.PM10) pm10_max
             ,min(d.PM10) pm10_min
             ,max(d.PM25) pm25_max
             ,min(d.PM25) pm25_min
             ,ROUND(AVG(d.pm10),0) pm10_avg
             ,ROUND(AVG(d.pm25),0) pm25_avg
        FROM fine_dust d
       WHERE d.pm10 > 0
         AND d.pm25 > 0 
       GROUP BY TO_CHAR(d.mea_date,'YYYY-MM'), d.gu_name
     ) a
ORDER BY a.pm10_avg desc, a.pm25_avg desc;

---
select * from traffic_accident;
-- 4. ������ܺ� ��� �Ǽ�
SELECT trans_type
      ,SUM(CASE WHEN year BETWEEN 1980 AND 1989 THEN total_acct_num ELSE 0 END) "1980��� ��� ��"
      ,SUM(CASE WHEN year BETWEEN 1980 AND 1989 THEN death_person_num ELSE 0 END) "1980��� ����� ��"
      ,round(SUM(CASE WHEN year BETWEEN 1980 AND 1989 THEN death_person_num ELSE 0 END)/SUM(CASE WHEN year BETWEEN 1980 AND 1989 THEN total_acct_num ELSE 0 END)*100,2) "1980��� ����� ����(%)"
      
      ,SUM(CASE WHEN year BETWEEN 1990 AND 1999 THEN total_acct_num ELSE 0 END) "1990��� ��� ��"
      ,SUM(CASE WHEN year BETWEEN 1990 AND 1999 THEN death_person_num ELSE 0 END) "1990��� ����� ��"
      ,round(SUM(CASE WHEN year BETWEEN 1990 AND 1999 THEN death_person_num ELSE 0 END)/SUM(CASE WHEN year BETWEEN 1990 AND 1999 THEN total_acct_num ELSE 0 END)*100,2) "1990��� ����� ����(%)"
      
      ,SUM(CASE WHEN year BETWEEN 2000 AND 2009 THEN total_acct_num ELSE 0 END) "2000��� ��� ��"
      ,SUM(CASE WHEN year BETWEEN 2000 AND 2009 THEN death_person_num ELSE 0 END) "2000��� ����� ��"
      ,round(SUM(CASE WHEN year BETWEEN 2000 AND 2009 THEN death_person_num ELSE 0 END)/SUM(CASE WHEN year BETWEEN 2000 AND 2009 THEN total_acct_num ELSE 0 END)*100,2) "2000��� ����� ����(%)"
      
      ,SUM(CASE WHEN year BETWEEN 2010 AND 2016 THEN total_acct_num ELSE 0 END) "2010��� ��� ��"
      ,SUM(CASE WHEN year BETWEEN 2010 AND 2016 THEN death_person_num ELSE 0 END) "2010��� ����� ��"
      ,round(SUM(CASE WHEN year BETWEEN 2010 AND 2016 THEN death_person_num ELSE 0 END)/SUM(CASE WHEN year BETWEEN 2010 AND 2016 THEN total_acct_num ELSE 0 END)*100,2) "2010��� ����� ����(%)"
      
      ,round((SUM(CASE WHEN year BETWEEN 1990 AND 1999 THEN total_acct_num ELSE 0 END)-SUM(CASE WHEN year BETWEEN 1980 AND 1989 THEN total_acct_num ELSE 0 END))/SUM(CASE WHEN year BETWEEN 1980 AND 1989 THEN total_acct_num ELSE 0 END)*100,2) "1990�� ������ ������(%)"
      ,round((SUM(CASE WHEN year BETWEEN 2000 AND 2009 THEN total_acct_num ELSE 0 END)-SUM(CASE WHEN year BETWEEN 1990 AND 1999 THEN total_acct_num ELSE 0 END))/SUM(CASE WHEN year BETWEEN 1990 AND 1999 THEN total_acct_num ELSE 0 END)*100,2) "2000�� ������ ������(%)"
      ,round((SUM(CASE WHEN year BETWEEN 2010 AND 2016 THEN total_acct_num ELSE 0 END)-SUM(CASE WHEN year BETWEEN 2000 AND 2009 THEN total_acct_num ELSE 0 END))/SUM(CASE WHEN year BETWEEN 2000 AND 2009 THEN total_acct_num ELSE 0 END)*100,2) "2010�� ������ ������(%)"
FROM traffic_accident
GROUP BY trans_type;

