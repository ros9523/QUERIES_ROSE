
CREATE TABLE "todos" (
  "id" serial PRIMARY KEY,
  "task" varchar(100) NOT NULL,
  "description" text NOT NULL,
  "is_completed" boolean DEFAULT false,
  "deadline" timestamp NOT NULL,
  "category" varchar(20),
  "created_at" timestamp DEFAULT 'now()',
  "updated_at" timestamp DEFAULT 'now()'
);

insert into todos (
task,
description,
deadline,
category
) values (
'lavar los platos',
'lavarlos con jabon',
'2022-07-31',
'house task'
),
(
'limpiar la casa',
'trapear y barrer',
'2022-08-20',
'house task'
),
(
'terminar proyecto',
'hacer el crud',
'2022-07-22',
'academlo'
),
(
'hacer la comida para mis amigos',
'Carnita asada',
'2022-07-25',
'fun'
)

select * from todos t  

select * from todos t where is_completed = true




