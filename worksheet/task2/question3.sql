-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments
sqlite3 student.db
SELECT department.DepartmentName, COUNT(enrolment.CourseId) AS TotalEnrolments FROM ((enrolment INNER JOIN course ON enrolment.CourseId = course.CourseId) INNER JOIN department ON course.DepartmentId = department.DepartmentId) GROUP BY department.DepartmentName;