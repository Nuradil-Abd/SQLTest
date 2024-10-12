-------- ---------------------------------- --------------------------
create table groups
(
    id         serial primary key,
    group_name varchar(50)
);
-------- ---------------------------------- --------------------------
create table courses
(
    id          serial primary key,
    course_name varchar(50),
    start_date  varchar(50),
    groups_id   int references groups (id)
);
-------- ------------------------------------------------------------
create table lessons
(
    id          serial primary key,
    lesson_name varchar(50),
    course_id   int references courses (id)
);
-------- ------------------------------------------------------------
create table mentors
(
    id             serial primary key,
    first_name     varchar(50),
    last_name      varchar(50),
    gender         varchar(50),
    email          varchar(50),
    specialization varchar(50),
    experience     int,
    course_id      int references courses (id)
);

-------- ------------------------------------------------------------
create table students
(
    id            serial primary key,
    first_name    varchar(50),
    last_name     varchar(50),
    gender        varchar(50),
    email         varchar(50),
    date_of_birth date,
    group_id      int references groups (id)
);
-------- ------------------------------------------------------------
insert into groups(group_name)
values ('Java 9'),
       ('JS 9'),
       ('Java 12'),
       ('JS 12'),
       ('Java 13'),
       ('JS 13');
-------- ------------------------------------------------------------
insert into courses (course_name, start_date, groups_id)
values ('Java 9 core', '2023-01-03', 1),
       ('JS 9 core', '2023-01-03', 2),
       ('Java 12 core', '2023-10-03', 3),
       ('JS 12 core', '2023-10-03', 4),
       ('Java 13 core', '2024-01-08', 5),
       ('JS 13 core', '2024-01-08', 6),
       ('Technical English', '2024-01-08', 1),
       ('Python', '2024-01-08', 6);

-------- ---------------------------------- --------------------------
insert into lessons(lesson_name, course_id)
values ('Loops', 1),
       ('HTML', 2),
       ('Methods', 3),
       ('CSS', 4),
       ('Collections', 5),
       ('React', 6);
-------- ---------------------------------- ---------------------------------- ---------------------------------- --------------------------
insert into mentors (first_name, last_name, gender, email, specialization, experience, course_id)
values ('Datka', 'Mamatzhanova', 'Female', 'datka@gmail.com', 'java', 2, 1),
       ('Ulan', 'Kubanychbekov', 'Male', 'ulan@gmail.com', 'java', 3, 3),
       ('Aizat', 'Duisheeva', 'Female', 'aizat@gmail.com', 'java', 1, 5),
       ('Elizar', 'Aitbek uulu', 'Male', 'elizar@gmail.com', 'js', 1, 2),
       ('Aziat', 'Abdimalikov', 'Male', 'aziat@gmail.com', 'js', 1, 4),
       ('Alisher', 'Jumanov', 'Male', 'alisher@gmail.com', 'js', 1, 6);
-------- ---------------------------------- ---------------------------------- ---------------------------------- --------------------------

-------- ---------------------------------- ---------------------------------- ---------------------------------- --------------------------
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (1, 'Knox', 'Jacquot', 'kjacquot0@addthis.com', 'Male', '2004-04-12', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (2, 'Dewain', 'Hunt', 'dhunt1@trellian.com', 'Male', '2003-04-13', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (3, 'Jarrett', 'Iianon', 'jiianon2@chronoengine.com', 'Male', '2005-05-05', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (4, 'Merry', 'Niezen', 'mniezen3@canalblog.com', 'Male', '1999-04-03', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (5, 'Nollie', 'Pellingar', 'npellingar4@usgs.gov', 'Female', '2003-05-06', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (6, 'Eveleen', 'Moukes', 'emoukes5@amazon.co.uk', 'Female', '1996-03-03', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (7, 'Nollie', 'Becker', 'nbecker6@is.gd', 'Male', '1994-02-04', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (8, 'Nadine', 'Robilart', 'nrobilart7@walmart.com', 'Female', '2000-06-06', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (9, 'Dex', 'Prugel', 'dprugel8@arizona.edu', 'Male', '2001-03-04', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (10, 'Phyllis', 'Baroche', 'pbaroche9@state.gov', 'Female', '2004-04-04', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (11, 'Bernadette', 'Dulson', 'bdulsona@altervista.org', 'Female', '2004-04-04', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (12, 'Earlie', 'Pledge', 'epledgeb@jimdo.com', 'Male', '1993-12-04', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (13, 'Luigi', 'Standish', 'lstandishc@army.mil', 'Male', '1998-11-13', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (14, 'Cody', 'McLeoid', 'cmcleoidd@yahoo.com', 'Male', '2000-10-10', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (15, 'Heall', 'Dolligon', 'hdolligone@squidoo.com', 'Male', '2003-09-09', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (16, 'Isiahi', 'Somerscales', 'isomerscalesf@eepurl.com', 'Male', '1995-05-03', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (17, 'Matthieu', 'Spolton', 'mspoltong@so-net.ne.jp', 'Male', '1995-03-30', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (18, 'Esme', 'Brockway', 'ebrockwayh@hexun.com', 'Female', '1997-08-08', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (19, 'Erroll', 'Cutforth', 'ecutforthi@wisc.edu', 'Male', '2002-03-30', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (20, 'Gordon', 'Thieme', 'gthiemej@japanpost.jp', 'Male', '1994-04-04', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (21, 'Dom', 'Arnecke', 'darneckek@google.fr', 'Male', '2000-03-03', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (22, 'Raven', 'Yarrall', 'ryarralll@vimeo.com', 'Female', '2009-05-05', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (23, 'Emery', 'McSporon', 'emcsporonm@reverbnation.com', 'Male', '1990-12-20', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (24, 'Der', 'Caville', 'dcavillen@csmonitor.com', 'Male', '2003-03-20', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (25, 'Erich', 'Lorroway', 'elorrowayo@bizjournals.com', 'Male', '2000-08-07', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (26, 'Edan', 'Brayne', 'ebraynep@prweb.com', 'Male', '2008-12-23', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (27, 'Garald', 'Puddle', 'gpuddleq@taobao.com', 'Male', '1990-03-03', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (28, 'Orelee', 'Hoggan', 'ohogganr@e-recht24.de', 'Female', '1999-03-29', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (29, 'Dion', 'Kepp', 'dkepps@boston.com', 'Female', '2000-12-13', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (30, 'Winna', 'Ganders', 'wganderst@artisteer.com', 'Female', '2001-11-11', 6);



select g.group_name, count(s.id) from groups g inner join students s on g.id = s.group_id
    group by g.group_name having count(s.id) > 4;

select s.id,s.first_name,s.gender , g .group_name from groups g inner join students s on g.id = s.group_id
    where g.id = 4 order by s.first_name desc;

--1. Вывести все курсы

    select * from courses;

--2. Вывести  все уроки курса  " Technical English"
select * from courses c where c.course_name ilike 'Technical English';

--3 Вывести количество всех студентов курса id 4

select count(s.id)from courses c
    inner join groups g on g.id = c.groups_id
        inner join students s on g.id = s.group_id
            where c.id = 4;

--4 Вывести имя, почту, специализацию ментора и название курса, где курс айди равен 2
select m.first_name , m.email, m.specialization, c.id from courses c inner join mentors m
    on c.id = m.course_id where course_id = 2;

--5 Посчитать сколько менторов в каждом курсе
select c.course_name, count(m.id) from courses c inner join mentors m on c.id = m.course_id group by c.course_name;

--6 Сгруппируйте и посчитайте менторов в каждом курсе и выведите только те курсы, где курс больше 2 менторов
select course_name, count (mentors.id) from  courses c inner join  mentors on c.id = mentors.course_id
        group by course_name  having count(mentors.id) >= 2;

--7. Вывести название, дату и полное имя ментора, все курсы которые начинаются с 2020 1 1 по 2023 3 3

select c.course_name,m.first_name,m.last_name, c.start_date from courses c inner join mentors m on c.id = m.course_id
        where c.start_date between '2020-01-01' and '2023-03-03';

--8. Вывести имя, почту, возраст студентов курса Java 13 core

select s.first_name,s.last_name,s.date_of_birth,course_name from courses c
    inner join groups g on c.groups_id = g.id
        inner join students s on g.id = s.group_id
            where c.course_name ilike 'Java 13 core';
-- 9. Вывести тот курс где нет ментора

select * from courses c
    inner join  mentors m on c.id = m.course_id
        where  m.id is  null;

select * from courses c
        inner join  lessons l on c.id = l.course_id
            where  l.id is  null;







