CREATE DATABASE GymBook;
USE GymBook;

CREATE TABLE Member (
    Mem_ID INT PRIMARY KEY,
    Mem_name VARCHAR(100),
    Mem_Email VARCHAR(100),
    Mem_phone VARCHAR(20),
    Mem_gender VARCHAR(10)
);

CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY,
    Mem_ID INT,
    Payment_date DATE,
    Payment_amount DECIMAL(10,2),
    FOREIGN KEY (Mem_ID) REFERENCES Member(Mem_ID)
);

CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_name VARCHAR(100),
    Course_schedule VARCHAR(100),
    Course_description TEXT
);

CREATE TABLE Trainer (
    Trainer_ID INT PRIMARY KEY,
    Trainer_name VARCHAR(100),
    Trainer_phone VARCHAR(20),
    Trainer_gender VARCHAR(10),
    Trainer_specialization VARCHAR(100)
);

CREATE TABLE Trainer_Course (
    Trainer_ID INT,
    Course_ID INT,
    PRIMARY KEY (Trainer_ID, Course_ID),
    FOREIGN KEY (Trainer_ID) REFERENCES Trainer(Trainer_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);

CREATE TABLE Member_Book_Course (
    Mem_ID INT,
    Course_ID INT,
    Booking_date DATE,
    PRIMARY KEY (Mem_ID, Course_ID, Booking_date),
    FOREIGN KEY (Mem_ID) REFERENCES Member(Mem_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);

INSERT INTO Member (Mem_ID, Mem_name, Mem_Email, Mem_phone, Mem_gender) VALUES
(1, 'Ahmed Ali', 'ahmed.ali@gmail.com', '01000000001', 'Male'),
(2, 'Sara Mohamed', 'sara.mohamed@gmail.com', '01000000002', 'Female'),
(3, 'Omar Hassan', 'omar.hassan@gmail.com', '01000000003', 'Male'),
(4, 'Mona Youssef', 'mona.youssef@gmail.com', '01000000004', 'Female'),
(5, 'Khaled Ibrahim', 'khaled.ibrahim@gmail.com', '01000000005', 'Male'),
(6, 'Nour Adel', 'nour.adel@gmail.com', '01000000006', 'Female'),
(7, 'Youssef Samir', 'youssef.samir@gmail.com', '01000000007', 'Male'),
(8, 'Huda Fathy', 'huda.fathy@gmail.com', '01000000008', 'Female'),
(9, 'Mahmoud Tarek', 'mahmoud.tarek@gmail.com', '01000000009', 'Male'),
(10, 'Laila Salah', 'laila.salah@gmail.com', '01000000010', 'Female');

INSERT INTO Payment (Payment_ID, Mem_ID, Payment_date, Payment_amount) VALUES
(1, 1, '2025-05-01', 500.00),
(2, 2, '2025-05-02', 700.00),
(3, 3, '2025-05-03', 450.00),
(4, 4, '2025-05-04', 600.00),
(5, 5, '2025-05-05', 550.00),
(6, 6, '2025-05-06', 700.00),
(7, 7, '2025-05-07', 650.00),
(8, 8, '2025-05-08', 620.00),
(9, 9, '2025-05-09', 480.00),
(10, 10, '2025-05-10', 530.00);

INSERT INTO Course (Course_ID, Course_name, Course_schedule, Course_description) VALUES
(1, 'Yoga Basics', 'Mon-Wed-Fri 7AM-8AM', 'Introduction to Yoga'),
(2, 'Advanced Pilates', 'Tue-Thu 6PM-7PM', 'Pilates for advanced learners'),
(3, 'Cardio Training', 'Mon-Wed 5PM-6PM', 'High intensity cardio workouts'),
(4, 'Weightlifting', 'Tue-Thu 7AM-8AM', 'Strength training with weights'),
(5, 'Zumba Dance', 'Sat-Sun 9AM-10AM', 'Dance fitness program'),
(6, 'CrossFit', 'Mon-Fri 6PM-7PM', 'High intensity CrossFit workouts'),
(7, 'Swimming', 'Wed-Fri 8AM-9AM', 'Swimming techniques and practice'),
(8, 'Martial Arts', 'Tue-Thu 4PM-5PM', 'Self defense and martial arts'),
(9, 'Aerobics', 'Mon-Wed-Fri 9AM-10AM', 'Aerobic fitness classes'),
(10, 'Meditation', 'Sat 10AM-11AM', 'Mindfulness and meditation');

INSERT INTO Trainer (Trainer_ID, Trainer_name, Trainer_phone, Trainer_gender, Trainer_specialization) VALUES
(1, 'Ahmed Nabil', '01110000001', 'Male', 'Yoga'),
(2, 'Sara Adel', '01110000002', 'Female', 'Pilates'),
(3, 'Omar Farouk', '01110000003', 'Male', 'Cardio'),
(4, 'Mona Samir', '01110000004', 'Female', 'Weightlifting'),
(5, 'Khaled Mahmoud', '01110000005', 'Male', 'Zumba'),
(6, 'Nour Hossam', '01110000006', 'Female', 'CrossFit'),
(7, 'Youssef Galal', '01110000007', 'Male', 'Swimming'),
(8, 'Huda Kamal', '01110000008', 'Female', 'Martial Arts'),
(9, 'Mahmoud Nasser', '01110000009', 'Male', 'Aerobics'),
(10, 'Laila Sherif', '01110000010', 'Female', 'Meditation');

INSERT INTO Trainer_Course (Trainer_ID, Course_ID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO Member_Book_Course (Mem_ID, Course_ID, Booking_date) VALUES
(1, 1, '2025-05-01'),
(2, 2, '2025-05-02'),
(3, 3, '2025-05-03'),
(4, 4, '2025-05-04'),
(5, 5, '2025-05-05'),
(6, 6, '2025-05-06'),
(7, 7, '2025-05-07'),
(8, 8, '2025-05-08'),
(9, 9, '2025-05-09'),
(10, 10, '2025-05-10');