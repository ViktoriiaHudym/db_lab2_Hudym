DROP TABLE IF EXISTS Course CASCADE;
CREATE TABLE Course(
    id SERIAL PRIMARY KEY,
	course_title VARCHAR(255) UNIQUE NOT NULL
);

DROP TABLE IF EXISTS Organization CASCADE;
CREATE TABLE Organization(
    id SERIAL PRIMARY KEY,
	organization_name VARCHAR(255) UNIQUE NOT NULL
);

DROP TABLE IF EXISTS Certification CASCADE;
CREATE TABLE Certification(
    id SERIAL PRIMARY KEY,
	certificate_name VARCHAR(50) UNIQUE NOT NULL
);

DROP TABLE IF EXISTS DifficultyType CASCADE;
CREATE TABLE DifficultyType(
    id SERIAL PRIMARY KEY,
	difficulty_type VARCHAR(20) UNIQUE NOT NULL	
);

DROP TABLE IF EXISTS Courses_Organizations CASCADE;
CREATE TABLE Courses_Organizations(
	id SERIAL PRIMARY KEY,
    course_id       INT NOT NULL REFERENCES Course ON DELETE CASCADE,
    organization_id INT NOT NULL REFERENCES Organization ON DELETE CASCADE
);

DROP TABLE IF EXISTS Courses CASCADE;
CREATE TABLE Courses(
	id SERIAL PRIMARY KEY REFERENCES Courses_Organizations ON DELETE CASCADE,
	course_rating      REAL,
	course_certificate INT REFERENCES Certification ON DELETE RESTRICT,
	course_difficulty  INT REFERENCES DifficultyType ON DELETE RESTRICT,
	course_students    INT 
);

