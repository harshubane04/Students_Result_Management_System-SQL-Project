CREATE DATABASE student_result_management;

-- STUDENTS DATA

CREATE TABLE Students (
student_id int primary key auto_increment,
name varchar(50),
gender varchar(10),
class varchar(10),
age int);

INSERT INTO Students (name, gender, class, age) VALUES
('Aarav Mehta', 'Male', '10A', 15),
('Priya Sharma', 'Female', '10A', 14),
('Rahul Verma', 'Male', '10A', 15),
('Sneha Patil', 'Female', '10B', 14),
('Rohit Gupta', 'Male', '10B', 15),
('Neha Joshi', 'Female', '10A', 15),
('Ankit Desai', 'Male', '10B', 14),
('Kavya Nair', 'Female', '10C', 14),
('Aditya Rao', 'Male', '10C', 15),
('Isha Kulkarni', 'Female', '10C', 15),
('Manav Tiwari', 'Male', '10A', 15),
('Riya Sen', 'Female', '10A', 14),
('Tanishq Jain', 'Male', '10B', 15),
('Divya Reddy', 'Female', '10B', 14),
('Vivek Yadav', 'Male', '10B', 15),
('Sanya Kapoor', 'Female', '10C', 15),
('Omkar Shetty', 'Male', '10A', 15),
('Meera Das', 'Female', '10B', 14),
('Harsh Vora', 'Male', '10C', 15),
('Pooja Mishra', 'Female', '10C', 14),
('Arjun Singh', 'Male', '10A', 15),
('Diya Patel', 'Female', '10B', 14),
('Karan Chauhan', 'Male', '10B', 15),
('Shruti Nair', 'Female', '10C', 14),
('Rakesh Iyer', 'Male', '10C', 15),
('Lavanya Ghosh', 'Female', '10A', 14),
('Nikhil Menon', 'Male', '10B', 15),
('Priti Sahu', 'Female', '10C', 15),
('Dev Sharma', 'Male', '10A', 14),
('Aditi Deshmukh', 'Female', '10B', 15);

-- SUBJECTS DATA

CREATE TABLE Subjects (
subject_id int primary key auto_increment,
subject_name varchar(50));
    
INSERT INTO Subjects (subject_name) VALUES
('Math'),
('Science'),
('English'),
('History'),
('Computer'),
('Geography');

-- Marks Data

CREATE TABLE Marks (
mark_id int primary key auto_increment,
student_id int,
subject_id int,
marks_obtained int,
foreign key (student_id) 
references Students(student_id),
foreign key (subject_id) 
references Subjects(subject_id));

INSERT INTO Marks (student_id, subject_id, marks_obtained) VALUES
(1,1,85),(1,2,78),(1,3,92),(1,4,80),(1,5,89),(1,6,75),
(2,1,75),(2,2,82),(2,3,88),(2,4,79),(2,5,90),(2,6,70),
(3,1,60),(3,2,70),(3,3,72),(3,4,68),(3,5,65),(3,6,58),
(4,1,92),(4,2,89),(4,3,94),(4,4,90),(4,5,96),(4,6,85),
(5,1,55),(5,2,60),(5,3,58),(5,4,62),(5,5,57),(5,6,54),
(6,1,80),(6,2,84),(6,3,86),(6,4,83),(6,5,82),(6,6,80),
(7,1,72),(7,2,75),(7,3,70),(7,4,68),(7,5,74),(7,6,69),
(8,1,90),(8,2,85),(8,3,88),(8,4,92),(8,5,91),(8,6,89),
(9,1,65),(9,2,70),(9,3,68),(9,4,66),(9,5,72),(9,6,64),
(10,1,88),(10,2,90),(10,3,85),(10,4,87),(10,5,92),(10,6,84),
(11,1,77),(11,2,79),(11,3,80),(11,4,82),(11,5,81),(11,6,75),
(12,1,69),(12,2,72),(12,3,74),(12,4,70),(12,5,73),(12,6,71),
(13,1,90),(13,2,91),(13,3,93),(13,4,88),(13,5,95),(13,6,89),
(14,1,81),(14,2,83),(14,3,85),(14,4,80),(14,5,84),(14,6,82),
(15,1,55),(15,2,59),(15,3,62),(15,4,61),(15,5,60),(15,6,58),
(16,1,92),(16,2,93),(16,3,94),(16,4,91),(16,5,95),(16,6,90),
(17,1,73),(17,2,76),(17,3,78),(17,4,79),(17,5,77),(17,6,75),
(18,1,84),(18,2,86),(18,3,83),(18,4,82),(18,5,85),(18,6,80),
(19,1,66),(19,2,69),(19,3,71),(19,4,67),(19,5,72),(19,6,70),
(20,1,91),(20,2,89),(20,3,93),(20,4,92),(20,5,94),(20,6,90),
(21,1,79),(21,2,82),(21,3,80),(21,4,81),(21,5,78),(21,6,76),
(22,1,87),(22,2,88),(22,3,90),(22,4,85),(22,5,91),(22,6,86),
(23,1,58),(23,2,61),(23,3,63),(23,4,60),(23,5,59),(23,6,57),
(24,1,93),(24,2,94),(24,3,96),(24,4,92),(24,5,95),(24,6,91),
(25,1,70),(25,2,72),(25,3,74),(25,4,71),(25,5,73),(25,6,70),
(26,1,89),(26,2,91),(26,3,87),(26,4,88),(26,5,90),(26,6,85),
(27,1,68),(27,2,70),(27,3,69),(27,4,65),(27,5,67),(27,6,66),
(28,1,85),(28,2,88),(28,3,84),(28,4,86),(28,5,87),(28,6,83),
(29,1,79),(29,2,81),(29,3,83),(29,4,80),(29,5,82),(29,6,78),
(30,1,94),(30,2,95),(30,3,96),(30,4,93),(30,5,97),(30,6,92);

# QUERIES

-- 1. Display all student details
select * from Students;

-- 2. Show all subjects 
select * from Subjects;

-- 3. Show all marks 
select * from Marks;

-- 4. Find names of all students in Class 10
select name 
from Students
where class = 10;

-- 5. List all female students
select student_id, name, class 
from Students 
where gender = 'Female';

-- 6. Show subjects with "Science" in their name
select * 
from Subjects 
where subject_name 
like '%Science%';

-- 7. Count total number of students
select count(*) as total_students 
from Students;

-- 8. Count how many subjects are there
select count(subject_id) as total_subjects 
from Subjects;

-- 9. Show marks of a specific student (eg:- student_id = 1)
select * 
from Marks 
where student_id = 1;

-- 10. Find average marks of each student
select student_id, avg(marks_obtained) as avg_marks
from Marks
group by student_id;

-- 11. Calculate total marks per student
select student_id, sum(marks_obtained) as total_marks
from Marks
group by student_id;

-- 12. Display student names with their total marks
select s.name, sum(m.marks_obtained) as total_marks
from Students as s
join Marks as m 
on s.student_id = m.student_id
group by s.name;

-- 13. Show top 5 students by total marks
select s.name, sum(m.marks_obtained) as total_marks
from Students as s
join Marks as m 
on s.student_id = m.student_id
group by s.name
order by total_marks desc
limit 5;

-- 14. Show average marks for each subject
select sub.subject_name, round(avg(m.marks_obtained), 2) as avg_marks
from Marks as m
join Subjects as sub 
on m.subject_id = sub.subject_id
group by sub.subject_name;

-- 15. Show students who scored above 90 in any subject
select distinct s.name, m.marks_obtained
from Students as s
join Marks as m
on s.student_id = m.student_id
where m.marks_obtained > 90;

-- 16. Find students who scored below 50 in any subject
select distinct s.name
from Students as s
join Marks as m 
on s.student_id = m.student_id
where m.marks_obtained < 50;

-- 17. Show student name, subject, and marks 
select s.name, sub.subject_name, m.marks_obtained
from Students as s
join Marks as m 
on s.student_id = m.student_id
join Subjects as sub 
on m.subject_id = sub.subject_id
order by s.name;

-- 18. Find highest marks in each subject
select sub.subject_name, max(m.marks_obtained) as highest_marks
from Marks as m
join Subjects as sub 
on m.subject_id = sub.subject_id
group by sub.subject_name;

-- 19. Find lowest marks in each subject
select sub.subject_name, min(m.marks_obtained) as lowest_marks
from Marks as m
join Subjects as sub 
on m.subject_id = sub.subject_id
group by sub.subject_name;

-- 20. Show average marks per class
select s.class, round(avg(m.marks_obtained),2) as class_avg
from Students as s
join Marks as m 
on s.student_id = m.student_id
group by s.class;

-- 21. Find total number of male and female students
select gender, count(*) as count
from Students
group by gender;

-- 22. Find subject with the highest average marks
select sub.subject_name, avg(m.marks_obtained) as avg_marks
from Marks as m
join Subjects as sub 
on m.subject_id = sub.subject_id
group by sub.subject_name
order by avg_marks desc
limit 1;

-- 23. Show students who scored above the class average
select s.name, avg(m.marks_obtained) as avg_marks
from Students as s
join Marks as m 
on s.student_id = m.student_id
group by s.name
having avg_marks > (select avg(marks_obtained) from Marks);

-- 24. Find students who failed in any subject (<40 marks)
select distinct s.name
from Students as s
join Marks as m 
on s.student_id = m.student_id
where m.marks_obtained < 40;

-- 25. Show number of students in each class
select class, count(student_id) as total_students
from Students
group by class;




















































































