#1º encontrar crime

SELECT *
FROM crime_scene_report 
WHERE 
	city = 'SQL City'
	and 
	type = 'murder';



#2º encontrar testemunhas
2.1 TESTEMUNHA 1

SELECT * FROM person 
WHERE address_street_name = 'Northwestern Dr' 
ORDER BY address_number DESC LIMIT 1;


#2.2 TESTEMUNHA 2
SELECT * FROM person 
WHERE name like '%Annabel%'
AND address_street_name = 'Franklin Ave';



#3º ver depoimento das testemunhas

SELECT *
FROM interview
WHERE person_id = '14887'
OR person_id = '16371';


#4º encontrando suspeitos

SELECT
get_fit_now_member.id as member_id, person.name as name, membership_status as membership,
person.id as id
FROM 
	get_fit_now_member
JOIN
	person
	
	ON get_fit_now_member.person_id = person.id

WHERE 
	member_id like '48Z%'
              


#5º SUSPEITO QUE BATE COM AS DESCRIÇÕES
SELECT person.name, drivers_license.plate_number, person.id

FROM person
JOIN drivers_license
	ON person.license_id = drivers_license.id 
	
WHERE
	plate_number like '%H42W%'
	AND
		person.id = '67318' 
		OR
		person.id = '28819'
    

#6º CHECANDO SE ELE ESTAVA NA ACADEMIA NO DIA 09/01

SELECT check_in_date

FROM get_fit_now_check_in
	
WHERE
	membership_id = '48Z55'
	

#7º PEGANDO DEPOIMENTO DO SUSPEITO

SELECT *

FROM interview
	
WHERE
	person_id = '67318'


#8º JEREMY FOI CONTRATADO PARA O ASSASSINATO
    PROCUTANDO MANDANTES DO CRIME

SELECT person.id as person_id, height, hair_color as hair, car_make, car_model, name, ssn

FROM drivers_license
JOIN person
	ON person.license_id = drivers_license.id
	
WHERE
	car_make = 'Tesla'
	AND
	hair = 'red'
	AND
	gender = 'female'


#9º COMPARANDO AS RIQUEZAS DAS SUSPEITAS

SELECT *

FROM income

WHERE
	ssn = '961388910'
	OR
	ssn = '337169072'
	OR
	ssn = '987756388'

#REGINA GEORGE NÃO TEM DADOS DE INCOME
#RED E MIRANDA TEM INCOMES ACIMA DA MÉDIA


#10º CHECANDO QUEM ESTAVA NA ORQUESTRA SINFONICA

SELECT person_id, event_name, date, name

FROM person
JOIN facebook_event_checkin
	ON person_id = person.id
	
WHERE
	person_id = '78881'
	OR
	person_id = '99716'
	

#11º VERIFICANDO NO JOGO SE ELA É MESMO A RESPONSÁVEL

INSERT INTO solution VALUES (1, 'Miranda Priestly');
        
        SELECT value FROM solution;
