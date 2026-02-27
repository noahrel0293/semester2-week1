-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed
SELECT enrolment.StudentId, student.FirstName, student.LastName, SUM(course.Credits) AS TotalCreditsPassed FROM ((enrolment INNER JOIN student ON enrolment.StudentId = student.StudentId) INNER JOIN course ON enrolment.CourseId = course.CourseId) WHERE enrolment.Grade >= 40 GROUP BY student.StudentId;