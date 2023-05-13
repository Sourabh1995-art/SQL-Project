USE alumni;
-- Q.3)
DESC college_a_hs;
DESC college_a_se;
DESC college_a_sj;
DESC college_b_hs;
DESC college_b_se;
DESC college_b_sj;
-- Q.6)

select distinct hsdegree from College_A_HS_V order by hsdegree;
CREATE VIEW College_A_HS_V AS SELECT * FROM college_a_hs WHERE EntranceExam IS NOT NULL and length(hsdegree)>0 AND RollNo IS NOT NULL AND LastUpdate IS NOT NULL AND Name IS NOT NULL AND FatherName IS NOT NULL AND MotherName IS NOT NULL AND Batch IS NOT NULL AND Degree IS NOT NULL AND PresentStatus IS NOT NULL AND HSDegree IS NOT NULL AND Institute IS NOT NULL AND Location IS NOT NULL;
-- Q.7)
CREATE VIEW College_A_SE_V AS SELECT * FROM college_a_se WHERE Location IS NOT NULL AND RollNo IS NOT NULL AND LastUpdate IS NOT NULL AND Name IS NOT NULL AND FatherName IS NOT NULL AND MotherName IS NOT NULL AND Batch IS NOT NULL AND Degree IS NOT NULL AND PresentStatus IS NOT NULL AND Organization IS NOT NULL;
-- Q.8)
CREATE VIEW College_A_SJ_V AS SELECT * FROM college_a_sj WHERE RollNo IS NOT NULL AND LastUpdate IS NOT NULL AND FatherName IS NOT NULL AND MotherName IS NOT NULL AND Batch IS NOT NULL AND Degree IS NOT NULL AND PresentStatus IS NOT NULL AND Organization IS NOT NULL AND Designation IS NOT NULL AND Location IS NOT NULL; 
-- Q.9)
CREATE VIEW College_B_HS_V AS SELECT * FROM college_b_hs WHERE RollNo IS NOT NULL AND LastUpdate IS NOT NULL AND FatherName IS NOT NULL AND MotherName IS NOT NULL AND Branch IS NOT NULL AND Batch IS NOT NULL AND Degree IS NOT NULL AND PresentStatus IS NOT NULL AND HSDegree IS NOT NULL AND EntranceExam IS NOT NULL AND Institute IS NOT NULL AND Location IS NOT NULL; 
-- Q.10)
CREATE VIEW College_B_SE_V AS SELECT * FROM college_b_se WHERE RollNo IS NOT NULL AND Lastupdate IS NOT NULL AND Name IS NOT NULL AND FatherName IS NOT NULL AND MotherName IS NOT NULL AND Branch IS NOT NULL AND PresentStatus IS NOT NULL AND Organization IS NOT NULL AND Location IS NOT NULL;

-- Q.11) 
CREATE VIEW College_B_SJ_V AS SELECT * FROM college_b_sj WHERE RollNo IS NOT NULL AND LastUpdate IS NOT NULL AND Name IS NOT NULL AND FatherName IS NOT NULL AND MotherName IS NOT NULL AND Branch IS NOT NULL AND Batch IS NOT NULL AND Degree IS NOT NULL AND PresentStatus IS NOT NULL AND Organization IS NOT NULL AND Designation IS NOT NULL AND Location;

-- Q.12)




 





 









-- Q.16)
SELECT COUNT(*) FROM college_a_hs;
-- COUNT 1157
SELECT COUNT(*) FROM college_a_se;
-- COUNT 1016
SELECT COUNT(*) FROM college_a_sj;
 -- count 5616
 SELECT "Higher Studies" Present_status,((SELECT COUNT(*) FROM college_a_hs) / ((SELECT COUNT(*) FROM college_a_hs)+(SELECT COUNT(*) FROM college_a_se)+(SELECT COUNT(*) FROM college_a_sj)))*100 College_A_Percentages