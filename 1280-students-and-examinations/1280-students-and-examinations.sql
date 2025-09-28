/* Write your T-SQL query statement below */
SELECT Stu.student_id 
        ,Stu.student_name 
        ,Sub.subject_name
        ,Count(Exam.student_id) AS attended_exams
FROM Students stu
CROSS JOIN Subjects sub
LEFT JOIN Examinations exam ON Stu.student_id = Exam.student_id 
        AND Sub.subject_name = Exam.subject_name
GROUP BY Stu.student_id
        ,Stu.student_name
        ,Sub.subject_name
ORDER BY Stu.student_id
        ,Sub.subject_name;
