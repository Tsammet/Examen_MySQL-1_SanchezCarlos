use los_Olimpicos;

-- consulta1 Consulta de Todos los Eventos en un Complejo Deportivo Específico.

Select * from eventos

-- consulta 2 Consulta de Comisarios Asignados a un Evento en Particular.

Select com.nombre, eve.nombre from comisario as com
inner join evento_comisario ec on ec.id_comisario = com.id_comisario 
inner join eventos as eve on eve.id_evento = ec.id_evento 


-- consulta 3 Consulta de Todos los Eventos en un Rango de Fechas.

select * from eventos
where date(fecha) BETWEEN '2023-05-12' and '2023-12-31'

-- Consulta 4 Consulta del Número Total de Comisarios Asignados a Eventos.

Select sum(co.id_comisario) from comisario as co
inner join evento_comisario ec on ec.id_comisario = co.id_comisario 
inner join eventos as eve on eve.id_evento = ec.id_evento 


-- Consulta 5  Consulta de Complejos Polideportivos con Área Total Ocupada Superior a un Valor Específico.





-- consulta 6 Consulta de Eventos con Número de Participantes Mayor que la Media.

select eve.nombre, eve.num_participantes  from eventos as eve
where eve.num_participantes >(SELECT avg(ev.num_participantes) from eventos as ev)


-- Consulta 7 Consulta de Equipamiento Necesario para un Evento Específico.

Select DISTINCT  equ.nombre_equipos from equipamento as equ
inner join evento_equipo as eq on equ.id_equipamento = eq.id_equipamiento 
where eq.id_equipamiento  = 5 or eq.id_equipamiento = 6



-- Consulta 8 Consulta de Eventos Celebrados en Complejos Deportivos con Jefe de Organización Específico.



-- Consulta 9 Consulta de Complejos Polideportivos sin Eventos Celebrados.

Select * from complejo_polideportivo as cp
left join evento_complejo_poli as ecp on cp.id_complejo_polideportivo = ecp.id_complejo
where ecp.id_evento_complejo is null


-- Consulta 10 Consulta de Comisarios que Actúan como Jueces en Todos los Eventos.