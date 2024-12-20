create database car_project;
use car_project;
-- 1ST QUERY READ DATA FROM THE TABLE --
SELECT * FROM CAR_DEKHO;
-- 2ND QUERY TOTAL CARS :TO GET A COUNT OF TOTAL CARS--
SELECT COUNT(*) FROM CAR_DEKHO; 
-- 3RD QUERY: THE MANAGER ASKED THE EMPLOYEE HOW MANY CARS WAS  AVAILABLE IN 2023--
SELECT COUNT(*) FROM CAR_DEKHO WHERE YEAR=2023;
-- 4TH QUERY: THE MANAGER ASKED THE EMPLOYEE HOW MANY CARS WAS AVAILABLE IN 2020,21,22?--
SELECT COUNT(*) FROM CAR_DEKHO WHERE YEAR IN (2020,2021,2022,2023);-- SHOW THE TOTAL NO OF ABOVE YEARS--
-- FOR GETTING THE COUNT OF EVERY YEAR SEPERATELY WE USE GROUP BY--
SELECT COUNT(*) FROM CAR_DEKHO WHERE YEAR IN(2020,2021,2022,2023) GROUP BY YEAR;
-- 5TH SHOW THE TOTAL NUMBER OF CARS COUNT--
SELECT YEAR,COUNT(*) FROM CAR_DEKHO GROUP BY YEAR;
-- 6TH HOW MANY DIESEL CARS WAS AVAILABLE IN 2020--
SELECT FUEL, COUNT(*) FROM CAR_DEKHO WHERE FUEL='DIESEL' AND YEAR=2020;
-- 7TH HOW MANY PAETROL CAR WAS AVAILABLE IN 2020--
SELECT FUEL, COUNT(*) FROM CAR_DEKHO WHERE FUEL='PETROL' AND YEAR=2020;
-- 8TH PRINT ALL THE FUEL CARS COME BY ALL YEAR ASC--
SELECT FUEL,YEAR, COUNT(*) FROM CAR_DEKHO group by FUEL,YEAR ORDER BY YEAR ASC ; 
-- 9TH WHICH YEAR HAD MORE THAN 100 CARS--
SELECT YEAR,COUNT(*) FROM CAR_DEKHO GROUP BY YEAR HAVING COUNT(*)>100;
-- ALL CARS COUNT  DETAILS BETWEEN 2015 TO 2023--
SELECT COUNT(*) FROM CAR_DEKHO WHERE YEAR BETWEEN 2015 AND 2023;
-- ALL CARS COMPLETE DETAILS  DETAILS BETWEEN 2015 TO 2023 --
SELECT * FROM CAR_DEKHO WHERE YEAR BETWEEN 2015 AND 2023;
-- END--




 