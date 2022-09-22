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




