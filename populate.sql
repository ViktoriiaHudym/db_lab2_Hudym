INSERT INTO Certification(certificate_name) 
VALUES
('COURSE'),
('SPECIALIZATION'),
('PROFESSIONAL CERTIFICATE');

INSERT INTO DifficultyType(type_name) 
VALUES
('Begginer'),
('Intermediate'),
('Advanced'),
('Mixed');

INSERT INTO Course(course_title) 
VALUES
('Google IT Support'),
('Python for Everybody'),
('Machine Learning'),
('Data Science'),
('Architecting with Google Compute Engine'),
('Excel Skills for Business'),
('The Science of Well-Being'),
('IBM Data Science'),
('Business Foundations'),
('Java Programming and Software Engineering Fundamentals'),
('Deep Learning');		

INSERT INTO Organization(organization_name) 
VALUES
('IBM'),
('Yale University'),
('University of Michigan'),
('Google'),
('Stanford University'),
('University of Pennsylvania'),
('Google Cloud'),
('Macquarie University'),
('Johns Hopkins University'),
('deeplearning.ai'),
('Duke University');

INSERT INTO Courses_Organizations(course_id, organization_id, course_certificate, course_difficulty)
VALUES 
(8, 1, 3, 1),
(7, 2, 1, 4),
(2, 3, 2, 1),
(1, 4, 3, 1),
(11, 10, 2, 2),
(3, 5, 1, 4),
(9, 6, 2, 1),
(5, 7, 2, 2),
(6, 8, 2, 1),
(4, 9, 2, 1),
(10, 11, 2, 1);

INSERT INTO Ratings(course_number, rating_value)
VALUES 
(1, 4.6),
(2, 4.9),
(3, 4.8),
(4, 4.8),
(5, 4.8),
(6, 4.9),
(7, 4.7),
(8, 4.7),
(9, 4.9),
(10, 4.5),
(11, 4.6);

INSERT INTO Students(course_number, students_enrolled)
VALUES 
(1, 480000),
(2, 2500000),
(3, 1500000),
(4, 350000),
(5, 690000),
(6, 3200000),
(7, 510000),
(8, 310000),
(9, 240000),
(10, 830000),
(11, 380000);
							