-- Active: 1784187482645@@mysql-6cef7fd-alustudent-c1d6.i.aivencloud.com@17152@defaultdb
-- Adit Tong - Classroom table

CREATE TABLE Classroom (
    classroom_id INT PRIMARY KEY,
    room_number VARCHAR(10),
    building VARCHAR(50),
    capacity INT
);

INSERT INTO Classroom (classroom_id, room_number, building, capacity) VALUES
(1, '101A', 'Main Building', 30),
(2, '102B', 'Main Building', 25),
(3, '201A', 'Science Wing', 40),
(4, '202B', 'Science Wing', 35),
(5, '301A', 'Arts Building', 20);

UPDATE Classroom
SET capacity = 45
WHERE classroom_id = 3;

DELETE FROM Classroom
WHERE classroom_id = 5;

SELECT * FROM Classroom
WHERE building = 'Main Building';
-- ================================
-- Faculty table (Dri-m)
-- ================================

CREATE TABLE Faculty (
faculty_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
 email VARCHAR(100) NOT NULL UNIQUE,
 department VARCHAR(50) NOT NULL
 );

INSERT INTO Faculty (name, email, department) VALUES
 ('Alice Mukamana', 'a.mukamana@alu.edu', 'Computer Science'),
                ('Brian Okello', 'b.okello@alu.edu', 'Mathematics'),
                ('Grace Nkurunziza', 'g.nkurunziza@alu.edu', 'Physics'),
                ('David Kimani', 'd.kimani@alu.edu', 'Business'),
                ('Fatima Diallo', 'f.diallo@alu.edu', 'Computer Science');

                -- Dri-m: UPDATE
                UPDATE Faculty
                SET department = 'Data Science'
                WHERE faculty_id = 1;

                -- Dri-m: DELETE
                DELETE FROM Faculty
                WHERE faculty_id = 5;

                -- Dri-m: SELECT
                SELECT * FROM Faculty
                WHERE department = 'Business';

-- ==========================
-- Students table (Bujjingo)
-- ==========================

CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    gender ENUM('M', 'F', 'Other'),
    email VARCHAR(100) UNIQUE,
    enrollment_date DATE DEFAULT (CURRENT_DATE),
    classroom_id INT,
    FOREIGN KEY (classroom_id) REFERENCES Classroom(classroom_id)
);

INSERT INTO Students (first_name, last_name, date_of_birth, gender, email, classroom_id) VALUES
('Alice', 'Uwimana', '2010-03-14', 'F', 'alice.u@school.rw', 1),
('Brian', 'Nkurunziza', '2010-07-22', 'M', 'brian.n@school.rw', 1),
('Clara', 'Mukamana', '2010-11-05', 'F', 'clara.m@school.rw', 2),
('David', 'Habimana', '2010-01-30', 'M', 'david.h@school.rw', 2), 
('Eva', 'Ingabire', '2010-09-18', 'F', 'eva.i@school.rw', 3);

-- UPDATE
UPDATE Students
SET email = 'alice.uwimana@school.rw'
WHERE student_id = 1;

-- DELETE
DELETE FROM Students
WHERE student_id = 5;

-- SELECT with WHERE
SELECT * FROM Students
WHERE classroom_id = 1;
