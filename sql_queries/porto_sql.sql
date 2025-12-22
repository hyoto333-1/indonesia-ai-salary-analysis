#Buat database porto_data
CREATE DATABASE porto_data;
 
USE porto_data;
 
#Menampilkan tabel ai_data_salary yang diimport dari exel
SELECT * FROM ai_data_salary;
 
# Analisis Kompensasi Peran (Aggregation)
SELECT 
	job_title, 
	AVG(salary) AS avg_salary, 
	COUNT(*) AS total_workers
FROM ai_data_salary
GROUP BY job_title
ORDER BY avg_salary DESC;

# Analisis Korelasi Pendidikan & Gaji (Sorting & Logic)
SELECT 
	education, 
	MIN(salary) AS min_salary, 
	AVG(salary) AS avg_salary, 
	MAX(salary) AS max_salary
FROM ai_data_salary
GROUP BY education
ORDER BY avg_salary DESC;
 
# Deep Dive: Top Talent di Hub Utama (Filtering)
SELECT job_title, location, years_experience, salary
FROM ai_data_salary
WHERE location IN ('Jakarta', 'Depok') 
	AND salary > 6000000
ORDER BY salary DESC;
 