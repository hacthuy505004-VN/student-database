CREATE TABLE Students (
    student_id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(100),
    email NVARCHAR(100)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY IDENTITY,
    course_name NVARCHAR(100)
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY IDENTITY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
