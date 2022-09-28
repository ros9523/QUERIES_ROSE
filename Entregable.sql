CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" int,
  "rol_id" uuid NOT NULL
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "users_id" uuid,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "level" varchar NOT NULL,
  "teacher" varchar,
  "categories_id" uuid  NOT NULL,
);

CREATE TABLE "courses_videos" (
  "id" uuid PRIMARY key,
  "title" varchar,
  "url" varchar,
  "course_id" uuid  NOT NULL
);

CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "roles" (
  "id" uuid PRIMARY KEY,
  "name" varchar
);

ALTER TABLE "courses" ADD FOREIGN KEY ("users_id") REFERENCES "users" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("categories_id") REFERENCES "categories" ("id");

ALTER TABLE "courses_videos" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("rol_id") REFERENCES "roles" ("id");


insert into users (
id,
name,
email, 
password,
age,
rol_id 
)
values (
'674427e4-6c47-4bbb-9ef4-adcc8dede078',
 'Rose Diaz',
 'rofi@gmail.com',
 '123456',
 27,
'bbdae552-12be-4f3d-968f-3742736c2eb1'
 ), 
 
 (
 '9ea65b66-b9fc-43e1-bc86-baef88e98289',
 'Blanca Diaz',
 'blank@gmail.com',  
  '457456',
  27,
 'a9f65662-c7bc-4a00-9255-72b7f8a5d8e5'
  );  
 
insert into courses (
  id, 
  users_id,
  title,
  description, 
  level,
  teacher,
  categories_id 
)
values(
'0d4aad2e-eef3-4136-890e-1aafe8b3cccb',
'674427e4-6c47-4bbb-9ef4-adcc8dede078',
'English',
'Here you will learn basic communication',
'Beginner',
'Ivonne Blanco',
'313959c8-f124-484f-bae1-f4c7cfe94922'
 ),
 (
 'd30384f7-33cb-40a7-a78a-7f39e84831b9',
 '9ea65b66-b9fc-43e1-bc86-baef88e98289',
 'Coding',
 'Javascript foundation', 
 'Beginner',
 'Brian Lopez',
 '8003d9f4-6b41-4f8a-83b7-15d0b71b66de'
 );
 
insert into courses_videos (
id,
title,
url,
course_id)
values(
'59ce6080-1cff-49a6-b3bc-4acc443e5de7',
'Basic English',
'https://www.youtube.com/watch?v=juKd26qkNAw',
'0d4aad2e-eef3-4136-890e-1aafe8b3cccb'
),
(
'ffa843f2-16f5-4296-9514-e484c381ff68', 
'variable, arrays and object',
'https://www.youtube.com/watch?v=z95mZVUcJ-E',
'd30384f7-33cb-40a7-a78a-7f39e84831b9'
);

insert into categories (
id,
name
)
values(
'313959c8-f124-484f-bae1-f4c7cfe94922',
'Education'
),
(	'8003d9f4-6b41-4f8a-83b7-15d0b71b66de',
	'Education'
)

insert into roles (
id,
name 
)
values(
'bbdae552-12be-4f3d-968f-3742736c2eb1',
'student'
),
(
'a9f65662-c7bc-4a00-9255-72b7f8a5d8e5',
'teacher'
);


create view view_course_information as select users.name, email, password , age, roles.name as roles_course ,title as name_course, description as course_description, level, teacher from users inner join roles on rol_id = roles.id inner join courses
on users_id=users.id inner join categories on categories_id=categories.id;

select * from view_course_information;