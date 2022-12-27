DROP TABLE traffic_accident;

-- ���� 12-8
CREATE TABLE traffic_accident (
    year              NUMBER       NOT NULL,  -- ����
    trans_type        VARCHAR2(30) NOT NULL,  -- �������
    total_acct_num    NUMBER,                 -- ���߻��Ǽ�
    death_person_num  NUMBER                  -- ����ڼ�   
);

ALTER TABLE traffic_accident
ADD CONSTRAINTS traffic_accident_pk PRIMARY KEY (year, trans_type);

insert into traffic_accident values(1980,'�ڵ���',120182,5608);
insert into traffic_accident values(1981,'�ڵ���',123373,5804);
insert into traffic_accident values(1982,'�ڵ���',141128,6110);
insert into traffic_accident values(1983,'�ڵ���',170026,6834);
insert into traffic_accident values(1984,'�ڵ���',134335,7468);
insert into traffic_accident values(1985,'�ڵ���',146836,7522);
insert into traffic_accident values(1986,'�ڵ���',153777,7702);
insert into traffic_accident values(1987,'�ڵ���',175661,7206);
insert into traffic_accident values(1988,'�ڵ���',225062,11563);
insert into traffic_accident values(1989,'�ڵ���',255787,12603);
insert into traffic_accident values(1990,'�ڵ���',255303,12325);
insert into traffic_accident values(1991,'�ڵ���',265964,13429);
insert into traffic_accident values(1992,'�ڵ���',257194,11640);
insert into traffic_accident values(1993,'�ڵ���',260921,10402);
insert into traffic_accident values(1994,'�ڵ���',266107,10087);
insert into traffic_accident values(1995,'�ڵ���',248865,10323);
insert into traffic_accident values(1996,'�ڵ���',265052,12653);
insert into traffic_accident values(1997,'�ڵ���',246452,11603);
insert into traffic_accident values(1998,'�ڵ���',239721,9057);
insert into traffic_accident values(1999,'�ڵ���',275938,9353);
insert into traffic_accident values(2000,'�ڵ���',290481,10236);
insert into traffic_accident values(2001,'�ڵ���',260579,8097);
insert into traffic_accident values(2002,'�ڵ���',231026,7222);
insert into traffic_accident values(2003,'�ڵ���',240832,7212);
insert into traffic_accident values(2004,'�ڵ���',220755,6563);
insert into traffic_accident values(2005,'�ڵ���',214171,6376);
insert into traffic_accident values(2006,'�ڵ���',213745,6327);
insert into traffic_accident values(2007,'�ڵ���',211662,6166);
insert into traffic_accident values(2008,'�ڵ���',215822,5870);
insert into traffic_accident values(2009,'�ڵ���',231990,5838);
insert into traffic_accident values(2010,'�ڵ���',226878,5505);
insert into traffic_accident values(2011,'�ڵ���',221711,5229);
insert into traffic_accident values(2012,'�ڵ���',223656,5392);
insert into traffic_accident values(2013,'�ڵ���',215354,5092);
insert into traffic_accident values(2014,'�ڵ���',223552,4762);
insert into traffic_accident values(2015,'�ڵ���',232035,4621);
insert into traffic_accident values(2016,'�ڵ���',220917,4292);
insert into traffic_accident values(1980,'ö��',2136,778);
insert into traffic_accident values(1981,'ö��',1894,858);
insert into traffic_accident values(1982,'ö��',1849,755);
insert into traffic_accident values(1983,'ö��',1932,714);
insert into traffic_accident values(1984,'ö��',1816,755);
insert into traffic_accident values(1985,'ö��',1811,738);
insert into traffic_accident values(1986,'ö��',1845,689);
insert into traffic_accident values(1987,'ö��',1739,717);
insert into traffic_accident values(1988,'ö��',1847,697);
insert into traffic_accident values(1989,'ö��',1812,693);
insert into traffic_accident values(1990,'ö��',1707,606);
insert into traffic_accident values(1991,'ö��',1813,588);
insert into traffic_accident values(1992,'ö��',1694,522);
insert into traffic_accident values(1993,'ö��',1611,573);
insert into traffic_accident values(1994,'ö��',1541,478);
insert into traffic_accident values(1995,'ö��',1344,366);
insert into traffic_accident values(1996,'ö��',1051,352);
insert into traffic_accident values(1997,'ö��',937,337);
insert into traffic_accident values(1998,'ö��',956,349);
insert into traffic_accident values(1999,'ö��',761,314);
insert into traffic_accident values(2000,'ö��',640,252);
insert into traffic_accident values(2001,'ö��',571,245);
insert into traffic_accident values(2002,'ö��',599,265);
insert into traffic_accident values(2003,'ö��',743,503);
insert into traffic_accident values(2004,'ö��',596,243);
insert into traffic_accident values(2005,'ö��',386,201);
insert into traffic_accident values(2006,'ö��',329,171);
insert into traffic_accident values(2007,'ö��',429,192);
insert into traffic_accident values(2008,'ö��',408,159);
insert into traffic_accident values(2009,'ö��',382,161);
insert into traffic_accident values(2010,'ö��',317,135);
insert into traffic_accident values(2011,'ö��',277,124);
insert into traffic_accident values(2012,'ö��',250,108);
insert into traffic_accident values(2013,'ö��',232,96);
insert into traffic_accident values(2014,'ö��',209,80);
insert into traffic_accident values(2015,'ö��',138,76);
insert into traffic_accident values(2016,'ö��',123,62);
insert into traffic_accident values(1980,'����ö',7,4);
insert into traffic_accident values(1981,'����ö',15,7);
insert into traffic_accident values(1982,'����ö',8,4);
insert into traffic_accident values(1983,'����ö',9,5);
insert into traffic_accident values(1984,'����ö',13,9);
insert into traffic_accident values(1985,'����ö',12,3);
insert into traffic_accident values(1986,'����ö',17,12);
insert into traffic_accident values(1987,'����ö',31,9);
insert into traffic_accident values(1988,'����ö',62,15);
insert into traffic_accident values(1989,'����ö',34,11);
insert into traffic_accident values(1990,'����ö',33,15);
insert into traffic_accident values(1991,'����ö',34,20);
insert into traffic_accident values(1992,'����ö',29,17);
insert into traffic_accident values(1993,'����ö',20,11);
insert into traffic_accident values(1994,'����ö',18,12);
insert into traffic_accident values(1995,'����ö',19,12);
insert into traffic_accident values(1996,'����ö',29,18);
insert into traffic_accident values(1997,'����ö',27,18);
insert into traffic_accident values(1998,'����ö',48,24);
insert into traffic_accident values(1999,'����ö',54,35);
insert into traffic_accident values(2000,'����ö',48,28);
insert into traffic_accident values(2001,'����ö',60,40);
insert into traffic_accident values(2002,'����ö',56,36);
insert into traffic_accident values(2003,'����ö',103,256);
insert into traffic_accident values(2004,'����ö',88,51);
insert into traffic_accident values(2005,'����ö',92,55);
insert into traffic_accident values(2006,'����ö',79,44);
insert into traffic_accident values(2007,'����ö',83,59);
insert into traffic_accident values(2008,'����ö',63,39);
insert into traffic_accident values(2009,'����ö',60,34);
insert into traffic_accident values(2010,'����ö',17,9);
insert into traffic_accident values(2011,'����ö',0,0);
insert into traffic_accident values(2012,'����ö',0,0);
insert into traffic_accident values(2013,'����ö',0,0);
insert into traffic_accident values(2014,'����ö',0,0);
insert into traffic_accident values(2015,'����ö',0,0);
insert into traffic_accident values(2016,'����ö',0,0);
insert into traffic_accident values(1980,'����',255,147);
insert into traffic_accident values(1981,'����',336,123);
insert into traffic_accident values(1982,'����',301,42);
insert into traffic_accident values(1983,'����',300,74);
insert into traffic_accident values(1984,'����',486,143);
insert into traffic_accident values(1985,'����',408,242);
insert into traffic_accident values(1986,'����',429,175);
insert into traffic_accident values(1987,'����',533,477);
insert into traffic_accident values(1988,'����',438,309);
insert into traffic_accident values(1989,'����',479,194);
insert into traffic_accident values(1990,'����',515,154);
insert into traffic_accident values(1991,'����',555,153);
insert into traffic_accident values(1992,'����',476,195);
insert into traffic_accident values(1993,'����',529,430);
insert into traffic_accident values(1994,'����',699,209);
insert into traffic_accident values(1995,'����',709,190);
insert into traffic_accident values(1996,'����',661,147);
insert into traffic_accident values(1997,'����',840,227);
insert into traffic_accident values(1998,'����',772,143);
insert into traffic_accident values(1999,'����',849,164);
insert into traffic_accident values(2000,'����',634,149);
insert into traffic_accident values(2001,'����',610,174);
insert into traffic_accident values(2002,'����',557,185);
insert into traffic_accident values(2003,'����',531,119);
insert into traffic_accident values(2004,'����',804,205);
insert into traffic_accident values(2005,'����',658,186);
insert into traffic_accident values(2006,'����',657,134);
insert into traffic_accident values(2007,'����',566,136);
insert into traffic_accident values(2008,'����',948,116);
insert into traffic_accident values(2009,'����',1815,148);
insert into traffic_accident values(2010,'����',1627,170);
insert into traffic_accident values(2011,'����',1809,158);
insert into traffic_accident values(2012,'����',1573,122);
insert into traffic_accident values(2013,'����',1093,101);
insert into traffic_accident values(2014,'����',1330,467);
insert into traffic_accident values(2015,'����',2101,100);
insert into traffic_accident values(2016,'����',2307,118);
insert into traffic_accident values(1980,'�װ���',4,17);
insert into traffic_accident values(1981,'�װ���',2,0);
insert into traffic_accident values(1982,'�װ���',0,0);
insert into traffic_accident values(1983,'�װ���',5,276);
insert into traffic_accident values(1984,'�װ���',1,5);
insert into traffic_accident values(1985,'�װ���',1,2);
insert into traffic_accident values(1986,'�װ���',1,3);
insert into traffic_accident values(1987,'�װ���',1,115);
insert into traffic_accident values(1988,'�װ���',2,3);
insert into traffic_accident values(1989,'�װ���',3,94);
insert into traffic_accident values(1990,'�װ���',1,2);
insert into traffic_accident values(1991,'�װ���',3,0);
insert into traffic_accident values(1992,'�װ���',3,1);
insert into traffic_accident values(1993,'�װ���',3,73);
insert into traffic_accident values(1994,'�װ���',2,0);
insert into traffic_accident values(1995,'�װ���',0,0);
insert into traffic_accident values(1996,'�װ���',2,1);
insert into traffic_accident values(1997,'�װ���',4,232);
insert into traffic_accident values(1998,'�װ���',3,0);
insert into traffic_accident values(1999,'�װ���',3,12);
insert into traffic_accident values(2000,'�װ���',3,0);
insert into traffic_accident values(2001,'�װ���',5,9);
insert into traffic_accident values(2002,'�װ���',4,1);
insert into traffic_accident values(2003,'�װ���',5,1);
insert into traffic_accident values(2004,'�װ���',3,2);
insert into traffic_accident values(2005,'�װ���',10,5);
insert into traffic_accident values(2006,'�װ���',6,1);
insert into traffic_accident values(2007,'�װ���',8,4);
insert into traffic_accident values(2008,'�װ���',6,3);
insert into traffic_accident values(2009,'�װ���',13,14);
insert into traffic_accident values(2010,'�װ���',7,1);
insert into traffic_accident values(2011,'�װ���',14,14);
insert into traffic_accident values(2012,'�װ���',9,6);
insert into traffic_accident values(2013,'�װ���',13,12);
insert into traffic_accident values(2014,'�װ���',5,6);
insert into traffic_accident values(2015,'�װ���',11,3);
insert into traffic_accident values(2016,'�װ���',18,17);

commit;

-- ���� 12-9
SELECT CASE WHEN year BETWEEN 1980 AND 1989 THEN '1980���'
            WHEN year BETWEEN 1990 AND 1999 THEN '1990���'
            WHEN year BETWEEN 2000 AND 2009 THEN '2000���'
            WHEN year BETWEEN 2010 AND 2019 THEN '2010���'
       END AS YEARS
      ,trans_type
      ,SUM(total_acct_num)   AS ���Ǽ�
      ,SUM(death_person_num) AS ����ڼ�
FROM traffic_accident
WHERE 1=1
GROUP BY CASE WHEN year BETWEEN 1980 AND 1989 THEN '1980���'
              WHEN year BETWEEN 1990 AND 1999 THEN '1990���'
              WHEN year BETWEEN 2000 AND 2009 THEN '2000���'
              WHEN year BETWEEN 2010 AND 2019 THEN '2010���'
         END, trans_type
ORDER BY 1, 2;


-- ���� 12-10
SELECT trans_type
      ,SUM(CASE WHEN year BETWEEN 1980 AND 1989 THEN total_acct_num ELSE 0 END) "1980���"
      ,SUM(CASE WHEN year BETWEEN 1990 AND 1999 THEN total_acct_num ELSE 0 END) "1990���"
      ,SUM(CASE WHEN year BETWEEN 2000 AND 2009 THEN total_acct_num ELSE 0 END) "2000���"
      ,SUM(CASE WHEN year BETWEEN 2010 AND 2019 THEN total_acct_num ELSE 0 END) "2010���"
FROM traffic_accident
WHERE 1=1
GROUP BY trans_type
ORDER BY trans_type;

-- ���� 12-11
SELECT a.*
 FROM traffic_accident a
     ,( SELECT trans_type
              ,MAX(death_person_num) death_per
          FROM traffic_accident
         GROUP BY trans_type
      ) B
WHERE a.trans_type       = b.trans_type
  AND a.death_person_num = b.death_per;