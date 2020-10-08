1번
SELECT NAME, DATE_FORMAT(debut, '%Y-%M-%D') as debutDate FROM girl_group
    WHERE debut BETWEEN '2009-01-01' AND '2009-12-31';

2번
SELECT g.name AS name,
    date_format(g.debut, '%Y-%M-%D') AS debuDate,
    s.title AS songTitle
	FROM girl_group AS g
	JOIN song AS s ON s.sid = g.hit_song_id
    where debut BETWEEN '2009-01-01' AND '2009-12-31'
    ORDER BY debut;

3번
SELECT continent, COUNT(*) AS countCont, round(SUM(gnp)) AS sumCont, 
round(AVG(gnp)) AS avgCont FROM country 
GROUP BY continent;

4번
SELECT con.continent, con.name, cit.name, cit.population
	FROM city AS cit
	inner join country AS con
	ON cit.countrycode = con.code
	WHERE con.continent = 'asia'
	ORDER BY cit.population desc
	LIMIT 10

5번
SELECT lng.language, cit.name, cit.population
FROM	city AS cit
INNER JOIN countrylanguage AS lng
ON lng.countrycode = cit.countrycode
WHERE lng.isofficial = 'T'
ORDER BY cit.population DESC
LIMIT 10