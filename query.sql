SELECT course_title, course_students FROM Courses 
JOIN Courses_Organizations USING(id)
JOIN Course ON Courses_Organizations.course_id = Course.id;

SELECT difficulty_type, COUNT(*) FROM DifficultyType 
JOIN Courses
ON DifficultyType.id = Courses.course_difficulty
GROUP BY difficulty_type;

SELECT course_rating, course_students FROM Courses ORDER BY course_rating ASC;