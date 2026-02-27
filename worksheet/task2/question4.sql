-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName
SELECT enrolment.StudentId, student.FirstName, student.LastName, course.CourseName FROM ((enrolment INNER JOIN student ON enrolment.StudentId = student.StudentId) INNER JOIN course ON enrolment.CourseId = course.CourseId);