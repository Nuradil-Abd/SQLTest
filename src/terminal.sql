❯ psql lms2
psql (14.13 (Homebrew))
Type "help" for help.

    lms2=# create table students(
                                    lms2(# id serial primary key,
                                    lms2(# name varchar not null,
                                    lms2(# email varchar check ( email like '%.com'),
    lms2(# age int check( age > 0));
    CREATE TABLE
    lms2=#
    lms2=# insert into students ( name ,email,age)
    lms2-# values
    lms2-# ('Atai', 'Atai@gmail.com', 19),
    lms2-# ('Adilet', 'adi@gmail.com', 20);
    INSERT 0 2
    lms2=# select * students;
    ERROR:  syntax error at or near "students"
    LINE 1: select * students;
    ^
    lms2=# select * from students;
    id |  name  |     email      | age
----+--------+----------------+-----
    1 | Atai   | Atai@gmail.com |  19
    2 | Adilet | adi@gmail.com  |  20
              (2 rows)

    lms2=#
    lms2=#
    lms2=# create table animals (
                                    lms2(# id serial primary key,
                                    lms2(# name varchar(15) not null,
    lms2(# habital varchar (20));
    CREATE TABLE
    lms2=# insort into animals ( name, habital)
    lms2-# ;
    ERROR:  syntax error at or near "insort"
    LINE 1: insort into animals ( name, habital)
    ^
    lms2=# insert into animals ( name, habital)
    lms2-# values
    lms2-# ('Lion','Africa'),
    lms2-# ('Kenguru','Australia');
    INSERT 0 2
    lms2=# select * from animals;
    id |  name   |  habital
----+---------+-----------
    1 | Lion    | Africa
    2 | Kenguru | Australia
              (2 rows)

    lms2=# create table cars(
                                lms2(# id serial primary key,
                                lms2(# brand varchar not null,
                                lms2(# date_of_release date not null);
    CREATE TABLE
    lms2=# insert into cars(brand, date_of_release)
    lms2-# values
    lms2-# ('BMW','2022-01-05'),
    lms2-# ('Chevrolet','2019-03-12');
    INSERT 0 2
    lms2=# select * from cars;
    id |   brand   | date_of_release
----+-----------+-----------------
    1 | BMW       | 2022-01-05
    2 | Chevrolet | 2019-03-12
              (2 rows)

    lms2=# create table gadgets(
                                   lms2(# id serial primary key,
                                   lms2(# name varchar not null,
                                   lms2(# model varchar check (model ~ '^(?=.*\d).*'),
    lms2(# date_of_release date);
    CREATE TABLE
    lms2=# insert into gadgets (name,model,date_of_release)
    lms2-# values
    lms2-# ('Apple','macBook M3 pro','2024-01-05'),
    lms2-# ('Mi','MiBand 6 ','2021-03-07');
    INSERT 0 2
    lms2=# select * from gadgets;
    id | name  |     model      | date_of_release
----+-------+----------------+-----------------
    1 | Apple | macBook M3 pro | 2024-01-05
    2 | Mi    | MiBand 6       | 2021-03-07
              (2 rows)

    lms2=# create table countries (
                                             lms2(# id serial  primary key,
lms2(# country_name varchar not null,
lms2(# country_code varchar not null);
CREATE TABLE
    lms2=# create table cities (
                                   lms2(# id serial primary key,
                                   lms2(# city_name varchar not null,
                                   lms2(# country_id int not null,
                                   lms2(# foreign key (country_id) references countries(id));
    CREATE TABLE
    lms2=# insert into countries (country_name,country_code)
    lms2-# values ('Kyrgystan','KG'),
    lms2-# ('Kazahstan','KZ');
    INSERT 0 2
    lms2=# insert into cities (city_name, country_id)
    lms2-# values ('Bishkek', 1),
    lms2-# ('Tokmok',1),
    lms2-# ('Astana',2);
    INSERT 0 3
    lms2=# select * from countries;
    id | country_name | country_code
----+--------------+--------------
    1 | Kyrgystan    | KG
    2 | Kazahstan    | KZ
(2 rows)

    lms2=# select * from cities;
    id | city_name | country_id
----+-----------+------------
    1 | Bishkek   |          1
    2 | Tokmok    |          1
    3 | Astana    |          2
(3 rows)
    lms2=# select c.country_code, ci.city_name from countries c
    lms2-# join cities ci
    lms2-# on ci.country_id = c.id;
    country_code | city_name
--------------+-----------
    KG           | Bishkek
    KG           | Tokmok
    KZ           | Astana
(3 rows)
    lms2=# create table nationality (
                                        lms2(# id serial primary key,
                                        lms2(# name varchar not null,
                                        lms2(# continent varchar);
    CREATE TABLE
    lms2=# create table food (
                                 lms2(# id serial primary key,
                                 lms2(# name varchar not null,
                                 lms2(# nationality_id int not null,
                                 lms2(# foreign key (nationality_id) references nationality(id));
    CREATE TABLE

    lms2=# insert into nationality ( name,continent)
    lms2-# values
    lms2-# ('Italian','Europe'),
    lms2-# ('Japanes','Asia'),
    lms2-# ('Indian','Asia');
    INSERT 0 3
    lms2=#
    lms2=# insert into food (name, nationality_id)
    lms2-# values
    lms2-# ('Sushi',2),
    lms2-# ('Pizza',1),
    lms2-# ('Curry',3);
    INSERT 0 3
    lms2=#
    lms2=# select n.name,f.name from nationality n join food f
    lms2-# on n.id = f.nationality_id;
    name   | name
---------+-------
    Japanes | Sushi
    Italian | Pizza
    Indian  | Curry
(3 rows)




