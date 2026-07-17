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
