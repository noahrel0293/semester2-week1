-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments
sqlite3 student.db
SELECT DepartmentName, COUNT(CourseId) AS TotalEnrolments FROM ((Enrolment INNER JOIN Course ON Enrolment.CourseId = Course.CourseId) INNER JOIN Department ON Enrolment.DepartmentId = Department.DepartmentId) GROUP BY DepartmentName;