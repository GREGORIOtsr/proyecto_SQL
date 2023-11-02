-- Ver profesor con terminal, campus, fecha de inicio y total de alumnos.
SELECT
	p.nombre AS nombre_profesor,
	v.nombre AS vertical,
	c.nombre AS campus,
	pr.fecha_inicio,
	COUNT(a.id) AS total_alumnos
FROM alumnos AS a
INNER JOIN vertical AS v ON a.id_vertical = v.id
INNER JOIN profesor AS p ON v.id_profesor = p.id
INNER JOIN promocion AS pr ON v.id_promocion = pr.id
INNER JOIN campus AS c ON pr.id_campus = c.id
WHERE p.id = '7'
GROUP BY 1, 2, 3, 4;