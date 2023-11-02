-- Ver todos los alumnos aptos para un proyecto
SELECT
	a.nombre AS nombre_alumno,
	p.nombre AS proyecto,
	n.nota
FROM alumnos AS a
INNER JOIN notas AS n ON a.id = n.id_alumno
INNER JOIN proyectos AS p ON n.id_proyecto = p.id
WHERE p.nombre = 'Proyecto_BBDD' AND n.nota = 'Apto'
GROUP BY 1, 2, 3;
