-- List all students who enrolled in the year 2022.
-- Expected Columns:
-- StudentId, FirstName, LastName, EnrolmentYear

sqlite3 student.db
SELECT StudentId, FirstName, LastName, EnrolmentYear FROM student WHERE EnrolmentYear=2022;