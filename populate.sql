INSERT INTO Certification(certificate_name) 
VALUES
('COURSE'),
('SPECIALIZATION'),
('PROFESSIONAL CERTIFICATE');

INSERT INTO DifficultyType(difficulty_type) 
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

INSERT INTO Courses_Organizations(course_id, organization_id)
VALUES 
(8, 1),
(7, 2),
(2, 3),
(1, 4),
(11,10),
(3, 5),
(9, 6),
(5, 7),
(6, 8),
(4, 9),
(10,11);

INSERT INTO Courses(course_rating, course_certificate, course_difficulty, course_students)
VALUES 
(4.6,3,1,480000),
(4.9,1,4,2500000),
(4.8,2,1,1500000),
(4.8,3,1,350000),
(4.8,2,2,690000),
(4.9,1,4,3200000),
(4.7,2,1,510000),
(4.7,2,2,310000),
(4.9,2,1,240000),
(4.5,2,1,830000),
(4.6,2,1,380000);


							