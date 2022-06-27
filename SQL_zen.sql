/* alterando tipo de dados das tabelas*/

/*tabela clients*/

alter table clients
change user_id user_id varchar(150) Primary key not null;

alter table clients
change sign_up_date sign_up_date datetime;

/*tabela professionals */

alter table professionals
change professional_user_id professional_user_id varchar(150) primary key not null;

alter table professionals
change sign_up_date sign_up_date datetime;

alter table professionals
change professional_type professional_type varchar(150);

alter table professionals
change gender gender enum('f','m','nb');

/*tabela events*/

alter table events
change session_id session_id varchar(150) primary key not null;

alter table events
change session_date session_date datetime;

alter table events
change client_user_id client_user_id varchar(150);

alter table events
change professional_user_id professional_user_id varchar(150);


/*tabela ratings*/

alter table ratings
change client_user_id client_user_id varchar(150);

alter table ratings
change professional_user_id professional_user_id varchar(150);

/* algumas consultas iniciais*/

/* total de usuarios cadastrados*/
select count(distinct user_id) as Usuarios
from clients;

/*quantas vezes cada usuario usou o a sessao de terapia*/
select distinct(count(c.user_id)) as usuarios, count(e. session_id) as sessoes
from clients c
join events e 
on c.user_id = e.client_user_id;

/*quantidade de vezes que cada profissional fez atendimento*/
select professional_user_id, count(professional_user_id) as qtde_atendimentos
from events
group by professional_user_id
order by count(professional_user_id) desc;

/*quantos profissionais diferentes estao cadastrados*/
select count(distinct(professional_user_id))
from professionals;

/* data do primeiro e ultimo cadastro de clientes*/
select max(sign_up_date) as ultimo_cadastro, min(sign_up_date) as primeiro_cadastro
from clients;

/* numero de avaliaçoes*/
select count(rating_id), value
from ratings;

/*numero de avaliaçoes por nota*/
SELECT DISTINCT
    (value) AS valor, COUNT(rating_id) AS nota_avaliaçao
FROM
    ratings
GROUP BY value;

/*quantas avaliaçoes estao visiveis e tem nota menor que 5*/
select count(rating_id)
from ratings
where value <> '5' and is_visible like '%1';

/* especialidade mais cara e mais barata*/ /* preço medio dos profisisonais*/
select avg(price) as media_de_preço, professional_type as especialidade
from professionals
group by professional_type
order by avg(price) Desc;

/*quantos profissionais na categoria gold, diamond, silver*/
select count(*)
from professionals
where is_gold like'%1';
select count(*)
from professionals
where is_diamond like'%1';
select count(*)
from professionals
where is_silver like'%1';

/*distinçao de genero dos profissionais*/
select count(gender)
from professionals
where gender like'f';

select count(gender)
from professionals
where gender like'm';

select count(gender)
from professionals
where gender like'nb';

/* data do ultimo cadastro de profissional*/
select max(sign_up_date)
from professionals;

/*quantos profissionais aceitam meia hora de consulta*/
select count(professional_user_id)
from professionals
where is_accepting_half_hour like '%1';

select count(professional_user_id)
from professionals
where is_accepting_half_hour not like '%1';

/*principais razoes de contato*/
select count(contact_reasons)
from events;

/* ansiedade*/
select count(contact_reasons)
from events
where contact_reasons like '%anxi%';

/*auto conhecimento*/
select count(contact_reasons)
from events
where contact_reasons like '%self%';

/*relacionamentos*/
select count(contact_reasons)
from events
where contact_reasons like '%relationship%';

/*conflitos familiares*/
select count(contact_reasons)
from events
where contact_reasons like '%family%';

/*relaionados a carreira*/
select count(contact_reasons)
from events
where contact_reasons like '%career%';

/*relacionados a mudanças de cidade, estado etc...*/
select count(contact_reasons)
from events
where contact_reasons like '%change%';

/* quais profissionais tiveram avaliaçao menor que 4/ qual o genero e o tipo de especialidade desses profissionais*/
select count(rating_id), gender, professional_type
from professionals p
join ratings r
on p.professional_user_id = r.professional_user_id
where r.value <4
group by gender;

/* diferença de preço com profissionais de avaliacao 5 e os outros*/
select count(r.rating_id), p.price, p.professional_type, p.professional_user_id
from professionals p
join ratings r
on p.professional_user_id = r.professional_user_id
where r.value >4
group by professional_user_id
order by price desc;

/* tipo de categorias(gold, silver, diamond) e avaliaçoes*/
select count(p.is_gold), value
from professionals p
join ratings r
on p.professional_user_id = r.professional_user_id
where p.is_gold like'%1%' and value ='5';

select count(p.is_silver), value
from professionals p
join ratings r
on p.professional_user_id = r.professional_user_id
where p.is_silver like'%1%' and value ='5';

select count(p.is_diamond), value
from professionals p
join ratings r
on p.professional_user_id = r.professional_user_id
where p.is_diamond like'%1%' and value ='5';







