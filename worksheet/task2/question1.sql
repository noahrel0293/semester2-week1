-- List all students who enrolled in the year 2022.
-- Expected Columns:
-- StudentId, FirstName, LastName, EnrolmentYear

CREATE TABLE 2022Students(StudentId, FirstName, LastName, EnrolmentYear);
INSERT INTO 2022Students SELECT StudentId, FirstName, LastName, EnrolmentYear FROM student.db WHERE EnrolmentYear=2022;