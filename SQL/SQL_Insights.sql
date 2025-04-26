create database students_performance;
use students_performance;
select * from cleaned_student_data;

# gender performs better on average
SELECT gender, 
       ROUND(AVG(math_score), 2) AS avg_math,
       ROUND(AVG(reading_score), 2) AS avg_reading,
       ROUND(AVG(writing_score), 2) AS avg_writing
FROM cleaned_student_data
GROUP BY gender;

#Top performing students from low-income lunch group

SELECT *
FROM cleaned_student_data
WHERE lunch = 'free/reduced'
AND math_score > (
    SELECT AVG(math_score)
    FROM cleaned_student_data
);

#Compare average scores by parental education level
SELECT parental_level_of_education,
       ROUND(AVG(math_score), 2) AS avg_math,
       ROUND(AVG(reading_score), 2) AS avg_reading,
       ROUND(AVG(writing_score), 2) AS avg_writing
FROM cleaned_student_data
GROUP BY parental_level_of_education
ORDER BY avg_math DESC;

#test preparation course is effective
SELECT test_preparation_course,
       COUNT(*) AS total_students,
       ROUND(AVG(math_score), 2) AS avg_math_score,
       ROUND(AVG(reading_score), 2) AS avg_reading_score,
       ROUND(AVG(writing_score), 2) AS avg_writing_score
FROM students_performance.cleaned_student_data
GROUP BY test_preparation_course;

# Analysis of low performance students
WITH low_performance_students AS (
    SELECT *
    FROM cleaned_student_data
    WHERE math_score < (SELECT AVG(math_score) FROM cleaned_student_data)
)
SELECT  distinct  parental_level_of_education,
       test_preparation_course,
       lunch,
       COUNT(*) AS low_performers,
       ROUND(AVG(math_score), 2) AS avg_math_score
FROM low_performance_students
GROUP BY parental_level_of_education, test_preparation_course, lunch
ORDER BY avg_math_score ,low_performers ASC;
