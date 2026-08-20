create table students(
    s_id int primary key ,
    s_name varchar(50)  not null ,
    s_age int   not null,
    department_id int not null,
    s_marks decimal(10,2),
    foreign key (department_id) references departments(department_id)

);

create table departments(
    department_id int primary key,
    department_name varchar(50) not null
);

create table courses(
    course_id int primary key,
    course_name varchar(50) not null,
    credits int not null,
    department_id int not null,
    foreign key (department_id) references departments(department_id)
);

insert into departments (department_id, department_name) values
(1, 'Chemistry'),
(2, 'Artificial Intelligence'),
(3, 'Computer Science'),
(4,'Mechanical'),
(5,'Electronics');

insert into courses (course_id, course_name, credits, department_id) values
(1, 'Organic Chemistry', 3, 1),
(2, 'Inorganic Chemistry', 3, 1),
(3, 'Machine Learning', 4, 2),
(4, 'Deep Learning', 4, 2),
(5, 'Data Structures', 3, 3),
(6, 'Algorithms', 3, 3),
(7,'Thermodynamics',3,4),
(8,'Fluid Mechanics',3,4),
(9,'Digital Electronics',3,5),
(10,'Analog Electronics',3,5);

insert into students (s_id, s_name, s_age, department_id, s_marks) values
(1, 'Prajwal', 20, 1, 95),
(2, 'Panish', 21, 2, 90.0),
(3, 'Suhan', 22, 3, 92.0),
(4, 'David', 23, 4, 88.5),
(5, 'John', 24, 5, 79.0);

INSERT INTO students (s_id, s_name, s_age, department_id, s_marks) VALUES
(6, 'Ananya', 20, 1, 91.0),
(7, 'Rahul', 21, 2, 87.5),
(8, 'Sneha', 20, 3, 94.0),
(9, 'Arjun', 22, 4, 82.0),
(10, 'Meera', 21, 5, 89.5);

select * from students;
select * from departments;
select * from courses;
select s_name,s_marks from students;
select s_name,s_marks from students
where s_marks > 90;

select s_name,s_marks from students
where s_marks > 90
order by s_marks desc
limit 3;


select count(*) as total_students from students;
#Count(*) counts the total rows in the students table and we assign a resulting table as total_students using as

select avg(s_marks) as average_marks from students;
#AVg used to find average of s_marks column

select max(s_marks) as highest_marks from students;
#Max used to find maximum value of s_marks column

select min(s_marks) as lowest_marks from students;
#Min used to find minimum value of s_marks column

select sum(s_marks) as total_marks from students;
#Sum used to find total of s_marks column

SELECT d.department_name, COUNT(*) AS student_count
FROM students s
JOIN departments d
ON s.department_id = d.department_id
GROUP BY d.department_id, d.department_name;

select d.department_name,avg(s.s_marks) as average_marks from students s
join departments d
on s.department_id=d.department_id
group by d.department_id,d.department_name;




