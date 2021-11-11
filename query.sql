SELECT course_title, students_enrolled FROM Students
JOIN Courses_Organizations USING(course_number)
JOIN Course USING(course_id);

SELECT type_name, COUNT(*) FROM DifficultyType
JOIN Courses_Organizations
ON DifficultyType.type_id = Courses_Organizations.course_difficulty
GROUP BY type_name;

SELECT rating_value, students_enrolled FROM Courses_Organizations
JOIN Ratings USING(course_number)
JOIN Students USING(course_number)
ORDER BY rating_value ASC;