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
