CREATE DATABASE college_db;
USE college_db;
CREATE TABLE Student (
    VTU_Number VARCHAR(20) PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(50),
    Phone VARCHAR(15),
    Department VARCHAR(30)
);
CREATE TABLE Course (
    Course_Code VARCHAR(10) PRIMARY KEY,
    Course_Name VARCHAR(50),
    Faculty_Id VARCHAR(20),
    Student_ID VARCHAR(20),
    Faculty_Email VARCHAR(50),
    FOREIGN KEY (Student_ID) REFERENCES Student(VTU_Number)
);
INSERT INTO Student VALUES
('1VTU21CS001','Amit Kumar','amit@gmail.com','9876543210','CSE'),
('1VTU21CS002','Bhavya Rao','bhavya@gmail.com','9876543211','CSE'),
('1VTU21EC003','Charan','charan@gmail.com','9876543212','ECE'),
('1VTU21ME004','Deepak','deepak@gmail.com','9876543213','ME'),
('1VTU21CS005','Esha','esha@gmail.com','9876543214','CSE');
INSERT INTO Course VALUES
('CS101','DBMS','F001','1VTU21CS001','dbms@college.com'),
('CS102','OS','F002','1VTU21CS002','os@college.com'),
('EC101','Signals','F003','1VTU21EC003','signals@college.com'),
('ME101','Thermodynamics','F004','1VTU21ME004','thermo@college.com'),
('CS103','CN','F005','1VTU21CS005','cn@college.com');
SELECT * FROM Student;
SELECT * FROM Course;
SELECT * FROM Student
ORDER BY VTU_Number ASC;
SELECT * FROM Student
WHERE Department = 'CSE';
