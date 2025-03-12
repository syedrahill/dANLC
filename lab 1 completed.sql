create database StudentManagementSystem;
use StudentManagementSystem;
-- creating table student
create table Student (
StudentID INT PRIMARY KEY ,
FIRSTNAME VARCHAR (50),
LASTNAME VARCHAR(50),
DateOfBirth date ,
gender varchar(10),
email varchar(100),
phone varchar(20));
-- creating table Course
create table Course(
CourseID INT PRIMARY KEY,
CourseTitle varchar(100),
credits int);
-- create table Instructor
create table Instructor(
InstructorID INT primary key,
FirstName varchar(50),
LastName varchar(50),
Email varchar(100));
-- create table Enrollment
create table Enrollment(
EnrollmentID int primary key ,
EnrollmentDate date,
StudentID int,
CourseID int,
InstructorID int,
foreign key(StudentID) references Student(StudentID),
foreign key  (CourseID) references Course(CourseID),
foreign key (InstructorID) references Instructor(InstructorID));
-- Create table Score
create table Score(
ScoreID int primary key,
CourseID int,
StudentID int,
DateOfExam date,
CreditObtained decimal(5,2),
foreign key (CourseID) references Course(CourseID),
foreign key (StudentID) references Student(StudentID));
-- Create table Feedback
create table Feedback(
FeedbackID int primary key,
StudentID int,
Date date,
InstructorName varchar(50),
Feedback text,
foreign key(StudentID) references Student(StudentID));



