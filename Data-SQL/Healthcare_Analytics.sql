-- Database Creation
CREATE DATABASE Healthcare_Analytics;

USE Healthcare_Analytics;

CREATE SCHEMA Healthcare;

CREATE TABLE Healthcare.Patients (
    Patient_ID VARCHAR(10) PRIMARY KEY,
    Patient_Name VARCHAR(100) NOT NULL,
    Gender VARCHAR(20),
    Date_of_Birth DATE,
    Blood_Group VARCHAR(5),
    Registration_Date DATE
);

INSERT INTO Healthcare.Patients
    (Patient_ID, Patient_Name, Gender, Date_of_Birth, Blood_Group, Registration_Date)
VALUES
    ('P001', 'Rahul Sharma',   'Male',   '1974-05-21', 'B+',  '2025-01-15'),
    ('P002', 'Priya Verma',    'Female', '1988-11-03', 'O+',  '2025-01-22'),
    ('P003', 'Amit Kapoor',    'Male',   '1965-07-14', 'A+',  '2025-02-05'),
    ('P004', 'Sneha Gupta',    'Female', '1995-02-18', 'AB+', '2025-02-11'),
    ('P005', 'Vikram Singh',   'Male',   '1959-09-27', 'O-',  '2025-02-19'),
    ('P006', 'Anjali Mehta',   'Female', '1982-06-09', 'B-',  '2025-03-03'),
    ('P007', 'Rohan Malhotra', 'Male',   '1990-12-15', 'A+',  '2025-03-17'),
    ('P008', 'Neha Rao',       'Female', '1978-04-26', 'O+',  '2025-03-29'),
    ('P009', 'Suresh Nair',    'Male',   '1955-01-08', 'B+',  '2025-04-07'),
    ('P010', 'Kavita Iyer',    'Female', '1969-10-19', 'A-',  '2025-04-18'),
    ('P011', 'Arjun Bansal',   'Male',   '1986-03-12', 'AB-', '2025-05-02'),
    ('P012', 'Pooja Agarwal',  'Female', '1998-08-24', 'O+',  '2025-05-15'),
    ('P013', 'Manish Khanna',  'Male',   '1971-11-30', 'B+',  '2025-05-28'),
    ('P014', 'Ritu Joshi',     'Female', '1984-05-06', 'A+',  '2025-06-10'),
    ('P015', 'Deepak Arora',   'Male',   '1962-02-22', 'O-',  '2025-06-24'),
    ('P016', 'Meera Desai',    'Female', '1992-09-11', 'B+',  '2025-07-08'),
    ('P017', 'Nikhil Sethi',   'Male',   '1980-12-04', 'A-',  '2025-07-21'),
    ('P018', 'Shalini Menon',  'Female', '1976-07-29', 'AB+', '2025-08-04'),
    ('P019', 'Karan Chawla',   'Male',   '1996-01-17', 'O+',  '2025-08-19'),
    ('P020', 'Tanya Kapoor',   'Female', '1989-10-02', 'B-',  '2025-09-01');

SELECT * 
FROM Healthcare.Patients;

-- How many patients are in the database? 
SELECT COUNT(*) AS Total_Patients
FROM Healthcare.Patients


CREATE TABLE Healthcare.Doctors (
    Doctor_ID VARCHAR(10) PRIMARY KEY,
    Doctor_Name VARCHAR(100) NOT NULL,
    Gender VARCHAR(20),
    Specialization VARCHAR(100),
    Experience_Years INT,
    Consultation_Fee DECIMAL(10,2),
    Employment_Status VARCHAR(30)
);

INSERT INTO Healthcare.Doctors
    (Doctor_ID, Doctor_Name, Gender, Specialization, Experience_Years, Consultation_Fee, Employment_Status)
VALUES
    ('D001', 'Dr. Amit Sharma',   'Male',   'Cardiology',        15, 1500.00, 'Active'),
    ('D002', 'Dr. Priya Mehta',   'Female', 'Neurology',         12, 1300.00, 'Active'),
    ('D003', 'Dr. Rajiv Kapoor',  'Male',   'Orthopedics',       18, 1600.00, 'Active'),
    ('D004', 'Dr. Neha Verma',    'Female', 'Pediatrics',          8, 1000.00, 'Active'),
    ('D005', 'Dr. Arjun Malhotra','Male',   'General Medicine',   10,  900.00, 'Active'),
    ('D006', 'Dr. Sneha Rao',     'Female', 'Dermatology',          7, 1100.00, 'Active'),
    ('D007', 'Dr. Vikram Singh',  'Male',   'Gastroenterology',    14, 1400.00, 'Active'),
    ('D008', 'Dr. Anjali Gupta',  'Female', 'Gynecology',          11, 1200.00, 'Active'),
    ('D009', 'Dr. Rohit Bansal',  'Male',   'Pulmonology',          13, 1350.00, 'Active'),
    ('D010', 'Dr. Kavita Iyer',   'Female', 'Ophthalmology',         9, 1000.00, 'Active'),
    ('D011', 'Dr. Manish Khanna', 'Male',   'Urology',              16, 1450.00, 'Active'),
    ('D012', 'Dr. Ritu Agarwal',  'Female', 'Endocrinology',         10, 1250.00, 'Active'),
    ('D013', 'Dr. Suresh Nair',   'Male',   'Oncology',              20, 2000.00, 'Active'),
    ('D014', 'Dr. Pooja Joshi',   'Female', 'ENT',                    6,  950.00, 'Active'),
    ('D015', 'Dr. Karan Chawla',  'Male',   'Psychiatry',              9, 1150.00, 'Active'),
    ('D016', 'Dr. Meera Desai',   'Female', 'Nephrology',             14, 1500.00, 'Active'),
    ('D017', 'Dr. Nikhil Sethi',  'Male',   'General Surgery',        17, 1750.00, 'Active'),
    ('D018', 'Dr. Shalini Menon', 'Female', 'Rheumatology',             8, 1200.00, 'Active'),
    ('D019', 'Dr. Deepak Arora',  'Male',   'Emergency Medicine',     11, 1100.00, 'Active'),
    ('D020', 'Dr. Tanya Kapoor',  'Female', 'Radiology',               10, 1300.00, 'Active');

SELECT * 
FROM Healthcare.Doctors;

CREATE TABLE Healthcare.Treatments (
    Treatment_ID VARCHAR(10) PRIMARY KEY,
    Treatment_Name VARCHAR(100) NOT NULL,
    Treatment_Category VARCHAR(50),
    Standard_Cost DECIMAL(10,2),
    Department VARCHAR(100)
);

INSERT INTO Healthcare.Treatments
    (Treatment_ID, Treatment_Name, Treatment_Category, Standard_Cost, Department)
VALUES
('T001', 'ECG', 'Diagnostic', 500.00, 'Cardiology'),
('T002', 'Echocardiogram', 'Diagnostic', 2500.00, 'Cardiology'),
('T003', 'MRI Scan', 'Diagnostic', 6000.00, 'Radiology'),
('T004', 'CT Scan', 'Diagnostic', 4500.00, 'Radiology'),
('T005', 'X-Ray', 'Diagnostic', 800.00, 'Radiology'),
('T006', 'Blood Test', 'Laboratory', 600.00, 'Pathology'),
('T007', 'Physiotherapy', 'Therapy', 1200.00, 'Orthopedics'),
('T008', 'Endoscopy', 'Diagnostic', 3500.00, 'Gastroenterology'),
('T009', 'Ultrasound', 'Diagnostic', 1800.00, 'Radiology'),
('T010', 'Dialysis', 'Therapy', 4000.00, 'Nephrology'),
('T011', 'Chemotherapy', 'Therapy', 7500.00, 'Oncology'),
('T012', 'Minor Surgery', 'Surgical', 10000.00, 'General Surgery'),
('T013', 'Wound Dressing', 'Procedure', 700.00, 'General Medicine'),
('T014', 'Vaccination', 'Preventive', 900.00, 'Pediatrics'),
('T015', 'Eye Examination', 'Diagnostic', 600.00, 'Ophthalmology'),
('T016', 'Pulmonary Function Test', 'Diagnostic', 1500.00, 'Pulmonology'),
('T017', 'Skin Biopsy', 'Diagnostic', 2200.00, 'Dermatology'),
('T018', 'Thyroid Test', 'Laboratory', 1000.00, 'Endocrinology'),
('T019', 'Colonoscopy', 'Diagnostic', 5000.00, 'Gastroenterology'),
('T020', 'Psychiatric Evaluation', 'Consultation', 1800.00, 'Psychiatry');

SELECT * 
FROM Healthcare.Treatments;

CREATE TABLE Healthcare.Medicine (
    Medicine_ID VARCHAR(10) PRIMARY KEY,
    Medicine_Name VARCHAR(100) NOT NULL,
    Medicine_Category VARCHAR(50),
    Manufacturer VARCHAR(100),
    Unit_Price DECIMAL(10,2),
    Dosage_Form VARCHAR(50)
);

INSERT INTO Healthcare.Medicine
    (Medicine_ID, Medicine_Name, Medicine_Category, Manufacturer, Unit_Price, Dosage_Form)
VALUES
('M001', 'Paracetamol', 'Analgesic', 'Cipla', 25.00, 'Tablet'),
('M002', 'Amoxicillin', 'Antibiotic', 'Sun Pharma', 85.00, 'Capsule'),
('M003', 'Azithromycin', 'Antibiotic', 'Dr. Reddy''s', 110.00, 'Tablet'),
('M004', 'Omeprazole', 'Gastric', 'Cipla', 45.00, 'Capsule'),
('M005', 'Metformin', 'Antidiabetic', 'USV', 60.00, 'Tablet'),
('M006', 'Amlodipine', 'Cardiovascular', 'Torrent Pharma', 55.00, 'Tablet'),
('M007', 'Atorvastatin', 'Cholesterol', 'Zydus', 75.00, 'Tablet'),
('M008', 'Pantoprazole', 'Gastric', 'Sun Pharma', 50.00, 'Tablet'),
('M009', 'Losartan', 'Cardiovascular', 'Cipla', 65.00, 'Tablet'),
('M010', 'Levothyroxine', 'Hormonal', 'Abbott', 40.00, 'Tablet'),
('M011', 'Cetirizine', 'Antiallergic', 'Dr. Reddy''s', 30.00, 'Tablet'),
('M012', 'Montelukast', 'Respiratory', 'Sun Pharma', 90.00, 'Tablet'),
('M013', 'Diclofenac', 'Analgesic', 'Novartis', 35.00, 'Tablet'),
('M014', 'Insulin Glargine', 'Antidiabetic', 'Sanofi', 650.00, 'Injection'),
('M015', 'Ondansetron', 'Antiemetic', 'Cipla', 70.00, 'Tablet'),
('M016', 'Furosemide', 'Diuretic', 'Sanofi', 35.00, 'Tablet'),
('M017', 'Clopidogrel', 'Cardiovascular', 'Sun Pharma', 80.00, 'Tablet'),
('M018', 'Salbutamol', 'Respiratory', 'Cipla', 120.00, 'Inhaler'),
('M019', 'Prednisolone', 'Steroid', 'Abbott', 55.00, 'Tablet'),
('M020', 'Calcium Carbonate', 'Supplement', 'Mankind Pharma', 45.00, 'Tablet');

SELECT * 
FROM Healthcare.Medicine; 

CREATE TABLE Healthcare.Rooms (
    Room_ID VARCHAR(10) PRIMARY KEY,
    Room_Number VARCHAR(20) NOT NULL,
    Room_Type VARCHAR(50),
    Floor INT,
    Daily_Rate DECIMAL(10,2),
    Capacity INT,
    Room_Status VARCHAR(30)
);

INSERT INTO Healthcare.Rooms
    (Room_ID, Room_Number, Room_Type, Floor, Daily_Rate, Capacity, Room_Status)
VALUES
('R001', '101', 'General Ward', 1, 1500.00, 4, 'Available'),
('R002', '102', 'General Ward', 1, 1500.00, 4, 'Occupied'),
('R003', '103', 'General Ward', 1, 1500.00, 4, 'Available'),
('R004', '104', 'Semi Private', 1, 2500.00, 2, 'Occupied'),
('R005', '105', 'Semi Private', 1, 2500.00, 2, 'Available'),
('R006', '201', 'Private', 2, 4000.00, 1, 'Occupied'),
('R007', '202', 'Private', 2, 4000.00, 1, 'Available'),
('R008', '203', 'Private', 2, 4000.00, 1, 'Occupied'),
('R009', '204', 'Deluxe', 2, 6000.00, 1, 'Available'),
('R010', '205', 'Deluxe', 2, 6000.00, 1, 'Occupied'),
('R011', '301', 'ICU', 3, 9000.00, 1, 'Occupied'),
('R012', '302', 'ICU', 3, 9000.00, 1, 'Available'),
('R013', '303', 'ICU', 3, 9000.00, 1, 'Occupied'),
('R014', '304', 'Emergency', 3, 5000.00, 1, 'Available'),
('R015', '305', 'Emergency', 3, 5000.00, 1, 'Occupied');

SELECT * 
FROM Healthcare.Rooms;


CREATE TABLE Healthcare.Insurance (
    Insurance_ID VARCHAR(10) PRIMARY KEY,
    Insurance_Company VARCHAR(100) NOT NULL,
    Plan_Name VARCHAR(100),
    Coverage_Percentage DECIMAL(5,2),
    Coverage_Limit DECIMAL(12,2)
);

INSERT INTO Healthcare.Insurance
    (Insurance_ID, Insurance_Company, Plan_Name, Coverage_Percentage, Coverage_Limit)
VALUES
('I001', 'Star Health', 'Family Health Plan', 80.00, 500000.00),
('I002', 'HDFC ERGO', 'Optima Secure', 90.00, 700000.00),
('I003', 'ICICI Lombard', 'Complete Health', 80.00, 600000.00),
('I004', 'Niva Bupa', 'Health Companion', 85.00, 500000.00),
('I005', 'Care Health', 'Care Supreme', 90.00, 750000.00),
('I006', 'Aditya Birla Health', 'Activ Health', 80.00, 500000.00),
('I007', 'Bajaj Allianz', 'Health Guard', 75.00, 400000.00),
('I008', 'Tata AIG', 'MediCare', 85.00, 600000.00),
('I009', 'New India Assurance', 'Mediclaim Policy', 80.00, 400000.00),
('I010', 'SBI General', 'Arogya Premier', 90.00, 700000.00);


CREATE TABLE Healthcare.Admissions (
    Admission_ID VARCHAR(10) PRIMARY KEY,
    Patient_ID VARCHAR(10) NOT NULL,
    Admission_Date DATETIME NOT NULL,
    Discharge_Date DATETIME,
    Admission_Type VARCHAR(30),
    Admission_Reason VARCHAR(255),
    Department VARCHAR(100),
    Primary_Doctor_ID VARCHAR(10),
    Discharge_Status VARCHAR(50),

    FOREIGN KEY (Patient_ID)
        REFERENCES Healthcare.Patients(Patient_ID),

    FOREIGN KEY (Primary_Doctor_ID)
        REFERENCES Healthcare.Doctors(Doctor_ID)
);


INSERT INTO Healthcare.Admissions
    (Admission_ID, Patient_ID, Admission_Date, Discharge_Date,
     Admission_Type, Admission_Reason, Department,
     Primary_Doctor_ID, Discharge_Status)
VALUES
('A001','P001','2025-01-20 09:30','2025-01-23 11:00','Emergency','Chest pain','Cardiology','D001','Recovered'),
('A002','P002','2025-01-25 10:15','2025-01-27 15:00','Planned','Migraine','Neurology','D002','Recovered'),
('A003','P003','2025-02-07 08:45','2025-02-12 12:30','Emergency','Hip pain','Orthopedics','D003','Recovered'),
('A004','P004','2025-02-15 14:00','2025-02-16 16:00','Planned','Childhood infection','Pediatrics','D004','Recovered'),
('A005','P005','2025-02-22 11:30','2025-02-28 10:00','Emergency','Breathing difficulty','Pulmonology','D009','Recovered'),
('A006','P006','2025-03-05 09:00','2025-03-08 13:00','Planned','Diabetes management','Endocrinology','D012','Recovered'),
('A007','P007','2025-03-20 10:00','2025-03-21 14:30','Planned','Stomach pain','Gastroenterology','D007','Recovered'),
('A008','P008','2025-04-01 12:00','2025-04-04 11:00','Emergency','Breathing problem','Pulmonology','D009','Recovered'),
('A009','P009','2025-04-10 09:30','2025-04-15 12:00','Emergency','Kidney problem','Nephrology','D016','Under Observation'),
('A010','P010','2025-04-20 15:00','2025-04-22 10:30','Planned','Vision problem','Ophthalmology','D010','Recovered'),
('A011','P011','2025-05-05 08:30','2025-05-09 14:00','Emergency','Abdominal pain','General Medicine','D005','Recovered'),
('A012','P012','2025-05-18 10:00','2025-05-19 13:00','Planned','Skin allergy','Dermatology','D006','Recovered'),
('A013','P013','2025-06-01 09:15','2025-06-10 11:00','Planned','Cancer treatment','Oncology','D013','Under Treatment'),
('A014','P014','2025-06-12 13:00','2025-06-14 15:00','Planned','Thyroid disorder','Endocrinology','D012','Recovered'),
('A015','P015','2025-06-27 07:45','2025-07-02 10:00','Emergency','Urinary problem','Urology','D011','Recovered'),
('A016','P016','2025-07-10 11:00','2025-07-12 14:00','Planned','Joint pain','Rheumatology','D018','Recovered'),
('A017','P017','2025-07-24 09:30','2025-07-28 12:00','Emergency','Kidney stone','Nephrology','D016','Recovered'),
('A018','P018','2025-08-07 10:00','2025-08-09 13:00','Planned','Joint inflammation','Rheumatology','D018','Recovered'),
('A019','P019','2025-08-22 16:30','2025-08-24 11:00','Emergency','Injury','Emergency Medicine','D019','Recovered'),
('A020','P020','2025-09-03 08:00','2025-09-05 12:00','Planned','Hormonal disorder','Endocrinology','D012','Recovered'),
('A021','P001','2025-03-10 10:00','2025-03-12 11:30','Planned','Heart follow-up','Cardiology','D001','Recovered'),
('A022','P003','2025-06-15 09:00','2025-06-18 12:00','Planned','Orthopedic follow-up','Orthopedics','D003','Recovered'),
('A023','P005','2025-07-05 13:00','2025-07-09 11:00','Emergency','Respiratory infection','Pulmonology','D009','Recovered'),
('A024','P009','2025-08-15 09:30','2025-08-20 12:30','Planned','Dialysis treatment','Nephrology','D016','Under Treatment'),
('A025','P013','2025-08-25 10:00','2025-08-30 14:00','Planned','Chemotherapy','Oncology','D013','Under Treatment'),
('A026','P015','2025-09-10 11:00','2025-09-13 13:00','Emergency','Urinary infection','Urology','D011','Recovered'),
('A027','P017','2025-09-15 08:30','2025-09-18 10:00','Planned','Kidney treatment','Nephrology','D016','Recovered'),
('A028','P018','2025-09-20 12:00','2025-09-23 11:00','Planned','Arthritis treatment','Rheumatology','D018','Under Treatment'),
('A029','P002','2025-09-25 09:00','2025-09-27 15:00','Emergency','Severe headache','Neurology','D002','Recovered'),
('A030','P006','2025-09-28 10:30','2025-09-30 12:00','Planned','Diabetes monitoring','Endocrinology','D012','Recovered');


SELECT * 
FROM Healthcare.Admissions

-- How many admissions?
SELECT COUNT(*) AS Total_Admissions
FROM Healthcare.Admissions



CREATE TABLE Healthcare.Patient_Treatment (
    Patient_Treatment_ID VARCHAR(10) PRIMARY KEY,
    Admission_ID VARCHAR(10) NOT NULL,
    Treatment_ID VARCHAR(10) NOT NULL,
    Doctor_ID VARCHAR(10),
    Treatment_Date DATETIME,
    Treatment_Cost DECIMAL(10,2),
    Treatment_Result VARCHAR(255),

    FOREIGN KEY (Admission_ID)
        REFERENCES Healthcare.Admissions(Admission_ID),

    FOREIGN KEY (Treatment_ID)
        REFERENCES Healthcare.Treatments(Treatment_ID),

    FOREIGN KEY (Doctor_ID)
        REFERENCES Healthcare.Doctors(Doctor_ID)
);


INSERT INTO Healthcare.Patient_Treatment
    (Patient_Treatment_ID, Admission_ID, Treatment_ID, Doctor_ID,
     Treatment_Date, Treatment_Cost, Treatment_Result)
VALUES
('PT001','A001','T001','D001','2025-01-20 10:00',500.00,'Normal ECG'),
('PT002','A001','T002','D001','2025-01-20 12:00',2500.00,'Mild abnormality'),
('PT003','A002','T003','D002','2025-01-25 13:00',6000.00,'No major abnormality'),
('PT004','A003','T005','D003','2025-02-07 10:00',800.00,'Fracture identified'),
('PT005','A003','T007','D003','2025-02-10 11:00',1200.00,'Mobility improved'),
('PT006','A004','T014','D004','2025-02-15 15:00',900.00,'Vaccination completed'),
('PT007','A005','T016','D009','2025-02-22 14:00',1500.00,'Reduced lung function'),
('PT008','A006','T018','D012','2025-03-05 11:00',1000.00,'Thyroid levels checked'),
('PT009','A007','T008','D007','2025-03-20 14:00',3500.00,'Gastric inflammation'),
('PT010','A008','T016','D009','2025-04-01 14:00',1500.00,'Respiratory condition confirmed'),
('PT011','A009','T010','D016','2025-04-10 11:00',4000.00,'Dialysis completed'),
('PT012','A010','T015','D010','2025-04-20 16:00',600.00,'Vision assessment completed'),
('PT013','A011','T006','D005','2025-05-05 10:00',600.00,'Blood parameters checked'),
('PT014','A012','T017','D006','2025-05-18 12:00',2200.00,'Biopsy completed'),
('PT015','A013','T011','D013','2025-06-01 11:00',7500.00,'Chemotherapy session completed'),
('PT016','A014','T018','D012','2025-06-12 15:00',1000.00,'Thyroid levels monitored'),
('PT017','A015','T006','D011','2025-06-27 09:00',600.00,'Urine and blood tests completed'),
('PT018','A016','T007','D018','2025-07-10 13:00',1200.00,'Pain reduced'),
('PT019','A017','T004','D016','2025-07-24 11:00',4500.00,'Kidney stone identified'),
('PT020','A018','T007','D018','2025-08-07 13:00',1200.00,'Mobility improved'),
('PT021','A019','T005','D019','2025-08-22 17:00',800.00,'Injury assessed'),
('PT022','A020','T018','D012','2025-09-03 10:00',1000.00,'Hormone levels checked'),
('PT023','A021','T001','D001','2025-03-10 11:00',500.00,'Follow-up ECG normal'),
('PT024','A022','T007','D003','2025-06-16 10:00',1200.00,'Recovery progressing'),
('PT025','A023','T016','D009','2025-07-05 15:00',1500.00,'Respiratory infection confirmed'),
('PT026','A024','T010','D016','2025-08-15 11:00',4000.00,'Dialysis completed'),
('PT027','A025','T011','D013','2025-08-25 12:00',7500.00,'Chemotherapy completed'),
('PT028','A026','T006','D011','2025-09-10 13:00',600.00,'Infection confirmed'),
('PT029','A027','T010','D016','2025-09-15 10:00',4000.00,'Treatment completed'),
('PT030','A028','T007','D018','2025-09-20 14:00',1200.00,'Pain management completed');


SELECT *
FROM Healthcare.Patient_Treatment;



CREATE TABLE Healthcare.Prescription (
    Prescription_ID VARCHAR(10) PRIMARY KEY,
    Admission_ID VARCHAR(10) NOT NULL,
    Medicine_ID VARCHAR(10) NOT NULL,
    Doctor_ID VARCHAR(10),
    Prescription_Date DATETIME,
    Dosage VARCHAR(50),
    Frequency VARCHAR(50),
    Duration_Days INT,
    Quantity_Prescribed INT,

    FOREIGN KEY (Admission_ID)
        REFERENCES Healthcare.Admissions(Admission_ID),

    FOREIGN KEY (Medicine_ID)
        REFERENCES Healthcare.Medicine(Medicine_ID),

    FOREIGN KEY (Doctor_ID)
        REFERENCES Healthcare.Doctors(Doctor_ID)
);


INSERT INTO Healthcare.Prescription
    (Prescription_ID, Admission_ID, Medicine_ID, Doctor_ID,
     Prescription_Date, Dosage, Frequency, Duration_Days, Quantity_Prescribed)
VALUES
('PR001','A001','M006','D001','2025-01-20','5 mg','Once Daily',30,30),
('PR002','A001','M007','D001','2025-01-20','10 mg','Once Daily',30,30),
('PR003','A002','M001','D002','2025-01-25','500 mg','Twice Daily',5,10),
('PR004','A003','M013','D003','2025-02-07','50 mg','Twice Daily',7,14),
('PR005','A004','M002','D004','2025-02-15','500 mg','Three Times Daily',5,15),
('PR006','A005','M018','D009','2025-02-22','100 mcg','As Needed',10,1),
('PR007','A006','M005','D012','2025-03-05','500 mg','Twice Daily',30,60),
('PR008','A007','M004','D007','2025-03-20','20 mg','Once Daily',15,15),
('PR009','A008','M012','D009','2025-04-01','10 mg','Once Daily',30,30),
('PR010','A009','M016','D016','2025-04-10','40 mg','Once Daily',10,10),
('PR011','A010','M011','D010','2025-04-20','10 mg','Once Daily',7,7),
('PR012','A011','M008','D005','2025-05-05','40 mg','Once Daily',14,14),
('PR013','A012','M019','D006','2025-05-18','10 mg','Once Daily',5,5),
('PR014','A013','M015','D013','2025-06-01','8 mg','Twice Daily',5,10),
('PR015','A014','M010','D012','2025-06-12','50 mcg','Once Daily',30,30),
('PR016','A015','M002','D011','2025-06-27','500 mg','Twice Daily',7,14),
('PR017','A016','M013','D018','2025-07-10','50 mg','Once Daily',10,10),
('PR018','A017','M008','D016','2025-07-24','40 mg','Once Daily',7,7),
('PR019','A018','M019','D018','2025-08-07','10 mg','Once Daily',5,5),
('PR020','A019','M013','D019','2025-08-22','50 mg','Twice Daily',7,14),
('PR021','A020','M005','D012','2025-09-03','500 mg','Twice Daily',30,60),
('PR022','A021','M006','D001','2025-03-10','5 mg','Once Daily',30,30),
('PR023','A022','M013','D003','2025-06-15','50 mg','Once Daily',10,10),
('PR024','A023','M018','D009','2025-07-05','100 mcg','As Needed',10,1),
('PR025','A024','M016','D016','2025-08-15','40 mg','Once Daily',10,10),
('PR026','A025','M015','D013','2025-08-25','8 mg','Twice Daily',5,10),
('PR027','A026','M003','D011','2025-09-10','500 mg','Once Daily',5,5),
('PR028','A027','M016','D016','2025-09-15','40 mg','Once Daily',10,10),
('PR029','A028','M013','D018','2025-09-20','50 mg','Once Daily',10,10),
('PR030','A029','M001','D002','2025-09-25','500 mg','Twice Daily',5,10);


CREATE TABLE Healthcare.Medicine_Inventory (
    Batch_ID VARCHAR(10) PRIMARY KEY,
    Medicine_ID VARCHAR(10) NOT NULL,
    Batch_Number VARCHAR(50),
    Manufacture_Date DATE,
    Expiry_Date DATE,
    Quantity_Received INT,
    Quantity_Available INT,
    Purchase_Cost DECIMAL(10,2),
    Supplier VARCHAR(100),

    FOREIGN KEY (Medicine_ID)
        REFERENCES Healthcare.Medicine(Medicine_ID)
);

INSERT INTO Healthcare.Medicine_Inventory
    (Batch_ID, Medicine_ID, Batch_Number, Manufacture_Date, Expiry_Date,
     Quantity_Received, Quantity_Available, Purchase_Cost, Supplier)
VALUES
('B001','M001','PCM25001','2025-01-01','2027-01-01',1000,850,18.00,'ABC Pharma Supplies'),
('B002','M002','AMX25001','2025-01-05','2027-01-05',500,420,65.00,'MedSupply India'),
('B003','M003','AZI25001','2025-01-10','2027-01-10',400,350,85.00,'HealthCare Distributors'),
('B004','M004','OMP25001','2025-01-15','2027-01-15',700,620,32.00,'ABC Pharma Supplies'),
('B005','M005','MET25001','2025-01-20','2027-01-20',1000,800,42.00,'MedSupply India'),
('B006','M006','AML25001','2025-01-25','2027-01-25',800,700,38.00,'HealthCare Distributors'),
('B007','M007','ATR25001','2025-02-01','2027-02-01',600,500,52.00,'ABC Pharma Supplies'),
('B008','M008','PAN25001','2025-02-05','2027-02-05',800,680,35.00,'MedSupply India'),
('B009','M009','LOS25001','2025-02-10','2027-02-10',700,610,45.00,'HealthCare Distributors'),
('B010','M010','LEV25001','2025-02-15','2027-02-15',500,440,28.00,'ABC Pharma Supplies'),
('B011','M011','CET25001','2025-02-20','2027-02-20',600,540,20.00,'MedSupply India'),
('B012','M012','MON25001','2025-03-01','2027-03-01',500,430,65.00,'HealthCare Distributors'),
('B013','M013','DIC25001','2025-03-05','2027-03-05',700,600,24.00,'ABC Pharma Supplies'),
('B014','M014','INS25001','2025-03-10','2026-03-10',200,150,500.00,'Medical Distributors Ltd'),
('B015','M015','OND25001','2025-03-15','2027-03-15',500,440,50.00,'MedSupply India'),
('B016','M016','FUR25001','2025-03-20','2027-03-20',600,520,24.00,'ABC Pharma Supplies'),
('B017','M017','CLO25001','2025-04-01','2027-04-01',600,500,55.00,'HealthCare Distributors'),
('B018','M018','SAL25001','2025-04-05','2027-04-05',250,210,85.00,'Medical Distributors Ltd'),
('B019','M019','PRE25001','2025-04-10','2027-04-10',500,450,38.00,'MedSupply India'),
('B020','M020','CAL25001','2025-04-15','2027-04-15',800,700,30.00,'ABC Pharma Supplies');


SELECT *
FROM Healthcare.Medicine_Inventory;


CREATE TABLE Healthcare.Room_Assignments (
    Room_Assignment_ID VARCHAR(10) PRIMARY KEY,
    Admission_ID VARCHAR(10) NOT NULL,
    Room_ID VARCHAR(10) NOT NULL,
    Assigned_Date DATETIME,
    Released_Date DATETIME,

    FOREIGN KEY (Admission_ID)
        REFERENCES Healthcare.Admissions(Admission_ID),

    FOREIGN KEY (Room_ID)
        REFERENCES Healthcare.Rooms(Room_ID)
);


INSERT INTO Healthcare.Room_Assignments
    (Room_Assignment_ID, Admission_ID, Room_ID, Assigned_Date, Released_Date)
VALUES
('RA001','A001','R006','2025-01-20 10:00','2025-01-23 10:30'),
('RA002','A002','R004','2025-01-25 11:00','2025-01-27 14:00'),
('RA003','A003','R008','2025-02-07 09:30','2025-02-12 11:30'),
('RA004','A004','R002','2025-02-15 14:30','2025-02-16 15:30'),
('RA005','A005','R011','2025-02-22 12:00','2025-02-28 09:00'),
('RA006','A006','R007','2025-03-05 09:30','2025-03-08 12:00'),
('RA007','A007','R005','2025-03-20 10:30','2025-03-21 13:30'),
('RA008','A008','R014','2025-04-01 12:30','2025-04-04 10:30'),
('RA009','A009','R013','2025-04-10 10:00','2025-04-15 11:30'),
('RA010','A010','R009','2025-04-20 15:30','2025-04-22 10:00'),
('RA011','A011','R003','2025-05-05 09:00','2025-05-09 13:30'),
('RA012','A012','R005','2025-05-18 10:30','2025-05-19 12:30'),
('RA013','A013','R011','2025-06-01 09:45','2025-06-10 10:30'),
('RA014','A014','R004','2025-06-12 13:30','2025-06-14 14:30'),
('RA015','A015','R010','2025-06-27 08:30','2025-07-02 09:30'),
('RA016','A016','R002','2025-07-10 11:30','2025-07-12 13:30'),
('RA017','A017','R013','2025-07-24 10:00','2025-07-28 11:30'),
('RA018','A018','R006','2025-08-07 10:30','2025-08-09 12:30'),
('RA019','A019','R015','2025-08-22 17:00','2025-08-24 10:30'),
('RA020','A020','R007','2025-09-03 08:30','2025-09-05 11:30'),
('RA021','A021','R006','2025-03-10 10:30','2025-03-12 11:00'),
('RA022','A022','R008','2025-06-15 09:30','2025-06-18 11:30'),
('RA023','A023','R011','2025-07-05 13:30','2025-07-09 10:30'),
('RA024','A024','R013','2025-08-15 10:00','2025-08-20 11:30'),
('RA025','A025','R011','2025-08-25 10:30','2025-08-30 13:30'),
('RA026','A026','R010','2025-09-10 11:30','2025-09-13 12:30'),
('RA027','A027','R013','2025-09-15 09:00','2025-09-18 09:30'),
('RA028','A028','R006','2025-09-20 12:30','2025-09-23 10:30'),
('RA029','A029','R004','2025-09-25 09:30','2025-09-27 14:30'),
('RA030','A030','R007','2025-09-28 11:00','2025-09-30 11:30');

SELECT * 
FROM Healthcare.Room_Assignments;


CREATE TABLE Healthcare.Patient_Insurance (
    Patient_Insurance_ID VARCHAR(10) PRIMARY KEY,
    Patient_ID VARCHAR(10) NOT NULL,
    Insurance_ID VARCHAR(10) NOT NULL,
    Policy_Number VARCHAR(100),
    Valid_From DATE,
    Valid_To DATE,

    FOREIGN KEY (Patient_ID)
        REFERENCES Healthcare.Patients(Patient_ID),

    FOREIGN KEY (Insurance_ID)
        REFERENCES Healthcare.Insurance(Insurance_ID)
);


INSERT INTO Healthcare.Patient_Insurance
    (Patient_Insurance_ID, Patient_ID, Insurance_ID, Policy_Number, Valid_From, Valid_To)
VALUES
('PI001','P001','I001','SH2025P001','2025-01-01','2025-12-31'),
('PI002','P002','I002','HE2025P002','2025-01-01','2025-12-31'),
('PI003','P003','I003','IC2025P003','2025-01-01','2025-12-31'),
('PI004','P004','I004','NB2025P004','2025-01-01','2025-12-31'),
('PI005','P005','I005','CH2025P005','2025-01-01','2025-12-31'),
('PI006','P006','I006','AB2025P006','2025-01-01','2025-12-31'),
('PI007','P007','I007','BA2025P007','2025-01-01','2025-12-31'),
('PI008','P008','I008','TA2025P008','2025-01-01','2025-12-31'),
('PI009','P009','I009','NI2025P009','2025-01-01','2025-12-31'),
('PI010','P010','I010','SB2025P010','2025-01-01','2025-12-31'),
('PI011','P011','I001','SH2025P011','2025-01-01','2025-12-31'),
('PI012','P012','I002','HE2025P012','2025-01-01','2025-12-31'),
('PI013','P013','I005','CH2025P013','2025-01-01','2025-12-31'),
('PI014','P014','I003','IC2025P014','2025-01-01','2025-12-31'),
('PI015','P015','I004','NB2025P015','2025-01-01','2025-12-31'),
('PI016','P016','I006','AB2025P016','2025-01-01','2025-12-31'),
('PI017','P017','I007','BA2025P017','2025-01-01','2025-12-31'),
('PI018','P018','I008','TA2025P018','2025-01-01','2025-12-31'),
('PI019','P019','I009','NI2025P019','2025-01-01','2025-12-31'),
('PI020','P020','I010','SB2025P020','2025-01-01','2025-12-31');


CREATE TABLE Healthcare.Billing (
    Bill_ID VARCHAR(10) PRIMARY KEY,
    Admission_ID VARCHAR(10) NOT NULL,
    Billing_Date DATETIME,
    Treatment_Charges DECIMAL(12,2),
    Medicine_Charges DECIMAL(12,2),
    Room_Charges DECIMAL(12,2),
    Doctor_Charges DECIMAL(12,2),
    Other_Charges DECIMAL(12,2),
    Gross_Amount DECIMAL(12,2),
    Discount_Percentage DECIMAL(5,2),
    Discount_Amount DECIMAL(12,2),
    Insurance_Coverage DECIMAL(12,2),
    Net_Amount DECIMAL(12,2),
    Payment_Status VARCHAR(30),
    Payment_Method VARCHAR(30),

    FOREIGN KEY (Admission_ID)
        REFERENCES Healthcare.Admissions(Admission_ID)
);


INSERT INTO Healthcare.Billing
    (Bill_ID, Admission_ID, Billing_Date,
     Treatment_Charges, Medicine_Charges, Room_Charges,
     Doctor_Charges, Other_Charges, Gross_Amount,
     Discount_Percentage, Discount_Amount,
     Insurance_Coverage, Net_Amount,
     Payment_Status, Payment_Method)
VALUES
('BL001','A001','2025-01-23',3000,450,12000,1500,500,17450,5,872.50,13200,3377.50,'Paid','Insurance'),
('BL002','A002','2025-01-27',6000,300,5000,1300,300,12900,0,0,10320,2580,'Paid','Insurance'),
('BL003','A003','2025-02-12',2000,600,20000,1600,500,24700,5,1235,18772,4693,'Paid','Insurance'),
('BL004','A004','2025-02-16',900,250,1500,1000,200,3850,0,0,3080,770,'Paid','Insurance'),
('BL005','A005','2025-02-28',1500,900,54000,1350,800,58550,5,2927.50,45618,10004.50,'Paid','Insurance'),
('BL006','A006','2025-03-08',1000,700,12000,1250,300,15250,0,0,12200,3050,'Paid','Insurance'),
('BL007','A007','2025-03-21',3500,350,2500,1400,200,7950,5,397.50,6042,1510.50,'Paid','Cash'),
('BL008','A008','2025-04-04',1500,500,15000,1350,400,18750,0,0,15937.50,2812.50,'Paid','Insurance'),
('BL009','A009','2025-04-15',4000,600,45000,1500,600,51700,5,2585,39308,9807,'Pending','Insurance'),
('BL010','A010','2025-04-22',600,250,12000,1000,200,14050,0,0,11240,2810,'Paid','Card'),
('BL011','A011','2025-05-09',600,400,6000,900,250,8150,5,407.50,6194,1548.50,'Paid','Insurance'),
('BL012','A012','2025-05-19',2200,250,2500,1100,200,6250,0,0,5312.50,937.50,'Paid','Cash'),
('BL013','A013','2025-06-10',7500,1200,81000,2000,1000,92700,5,4635,70372,22693,'Pending','Insurance'),
('BL014','A014','2025-06-14',1000,350,7500,1250,300,10400,0,0,8840,1560,'Paid','Insurance'),
('BL015','A015','2025-07-02',600,450,24000,1450,400,26900,5,1345,20444,5111,'Paid','Insurance'),
('BL016','A016','2025-07-12',1200,300,5000,1200,250,7950,0,0,6360,1590,'Paid','Card'),
('BL017','A017','2025-07-28',4500,400,36000,1500,500,42900,5,2145,32404,8351,'Paid','Insurance'),
('BL018','A018','2025-08-09',1200,300,12000,1200,250,14950,0,0,11960,2990,'Paid','Insurance'),
('BL019','A019','2025-08-24',800,350,10000,1100,400,12650,5,632.50,9614,2403.50,'Paid','Cash'),
('BL020','A020','2025-09-05',1000,700,8000,1250,300,11250,0,0,10125,1125,'Paid','Insurance'),
('BL021','A021','2025-03-12',500,450,8000,1500,300,10750,5,537.50,8160,2052.50,'Paid','Insurance'),
('BL022','A022','2025-06-18',1200,350,12000,1600,300,15450,0,0,12360,3090,'Paid','Card'),
('BL023','A023','2025-07-09',1500,500,36000,1350,500,39850,5,1992.50,30286,7571.50,'Pending','Insurance'),
('BL024','A024','2025-08-20',4000,600,45000,1500,500,51600,0,0,41280,10320,'Paid','Insurance'),
('BL025','A025','2025-08-30',7500,1200,45000,2000,800,56500,5,2825,42840,10835,'Pending','Insurance'),
('BL026','A026','2025-09-13',600,300,12000,1450,300,14650,0,0,12452.50,2197.50,'Paid','Insurance'),
('BL027','A027','2025-09-18',4000,450,12000,1500,300,18250,5,912.50,13870,3467.50,'Paid','Insurance'),
('BL028','A028','2025-09-23',1200,300,12000,1200,250,14950,0,0,11960,2990,'Pending','Insurance'),
('BL029','A029','2025-09-27',6000,300,5000,1300,300,12900,5,645,9828,2427,'Paid','Insurance'),
('BL030','A030','2025-09-30',1000,700,8000,1250,300,11250,0,0,10125,1125,'Paid','Insurance');

SELECT * 
FROM Healthcare.Billing;


CREATE TABLE Healthcare.Logs (
    Log_ID VARCHAR(10) PRIMARY KEY,
    Patient_ID VARCHAR(10) NOT NULL,
    Admission_ID VARCHAR(10),
    Event_Type VARCHAR(100),
    Event_Timestamp DATETIME,
    Department VARCHAR(100),

    FOREIGN KEY (Patient_ID)
        REFERENCES Healthcare.Patients(Patient_ID),

    FOREIGN KEY (Admission_ID)
        REFERENCES Healthcare.Admissions(Admission_ID)
);

INSERT INTO Healthcare.Logs
    (Log_ID, Patient_ID, Admission_ID, Event_Type, Event_Timestamp, Department)
VALUES
('L001','P001','A001','Patient Admitted','2025-01-20 09:30','Cardiology'),
('L002','P001','A001','Doctor Consultation','2025-01-20 10:00','Cardiology'),
('L003','P001','A001','ECG Completed','2025-01-20 10:30','Cardiology'),
('L004','P001','A001','Room Assigned','2025-01-20 10:45','Cardiology'),
('L005','P001','A001','Patient Discharged','2025-01-23 11:00','Cardiology'),

('L006','P002','A002','Patient Admitted','2025-01-25 10:15','Neurology'),
('L007','P002','A002','MRI Completed','2025-01-25 13:00','Radiology'),
('L008','P002','A002','Medicine Prescribed','2025-01-25 14:00','Neurology'),
('L009','P002','A002','Patient Discharged','2025-01-27 15:00','Neurology'),

('L010','P003','A003','Patient Admitted','2025-02-07 08:45','Orthopedics'),
('L011','P003','A003','X-Ray Completed','2025-02-07 10:00','Radiology'),
('L012','P003','A003','Treatment Started','2025-02-10 11:00','Orthopedics'),
('L013','P003','A003','Patient Discharged','2025-02-12 12:30','Orthopedics'),

('L014','P005','A005','Patient Admitted','2025-02-22 11:30','Pulmonology'),
('L015','P005','A005','Pulmonary Test Completed','2025-02-22 14:00','Pulmonology'),
('L016','P005','A005','Medicine Prescribed','2025-02-22 15:00','Pulmonology'),
('L017','P005','A005','Patient Discharged','2025-02-28 10:00','Pulmonology'),

('L018','P009','A009','Patient Admitted','2025-04-10 09:30','Nephrology'),
('L019','P009','A009','Dialysis Started','2025-04-10 11:00','Nephrology'),
('L020','P009','A009','Patient Under Observation','2025-04-15 12:00','Nephrology'),

('L021','P013','A013','Patient Admitted','2025-06-01 09:15','Oncology'),
('L022','P013','A013','Chemotherapy Started','2025-06-01 11:00','Oncology'),
('L023','P013','A013','Follow-up Required','2025-06-10 11:00','Oncology'),

('L024','P017','A017','Patient Admitted','2025-07-24 09:30','Nephrology'),
('L025','P017','A017','CT Scan Completed','2025-07-24 11:00','Radiology'),
('L026','P017','A017','Patient Discharged','2025-07-28 12:00','Nephrology'),

('L027','P019','A019','Patient Admitted','2025-08-22 16:30','Emergency Medicine'),
('L028','P019','A019','X-Ray Completed','2025-08-22 17:00','Radiology'),
('L029','P019','A019','Patient Discharged','2025-08-24 11:00','Emergency Medicine'),

('L030','P020','A020','Patient Admitted','2025-09-03 08:00','Endocrinology'),
('L031','P020','A020','Thyroid Test Completed','2025-09-03 10:00','Endocrinology'),
('L032','P020','A020','Patient Discharged','2025-09-05 12:00','Endocrinology');

SELECT * 
FROM Healthcare.Logs;


SELECT COUNT(*) AS Patient_Count
FROM Healthcare.Patients;

SELECT COUNT(*) AS Doctor_Count
FROM Healthcare.Doctors;

SELECT COUNT(*) AS Treatment_Count
FROM Healthcare.Treatments;

SELECT COUNT(*) AS Medicine_Count
FROM Healthcare.Medicine;

SELECT COUNT(*) AS Room_Count
FROM Healthcare.Rooms;

SELECT COUNT(*) AS Insurance_Count
FROM Healthcare.Insurance;

SELECT COUNT(*) AS Admission_Count
FROM Healthcare.Admissions;

SELECT COUNT(*) AS Patient_Treatment_Count
FROM Healthcare.Patient_Treatment;

SELECT COUNT(*) AS Prescription_Count
FROM Healthcare.Prescription;

SELECT COUNT(*) AS Inventory_Count
FROM Healthcare.Medicine_Inventory;

SELECT COUNT(*) AS Room_Assignment_Count
FROM Healthcare.Room_Assignments;

SELECT COUNT(*) AS Patient_Insurance_Count
FROM Healthcare.Patient_Insurance;

SELECT COUNT(*) AS Billing_Count
FROM Healthcare.Billing;

SELECT COUNT(*) AS Log_Count
FROM Healthcare.Logs;


-- Let's ask Business Questions.

/*
Which departments are receiving the msot admissions?
*/
SELECT
    Department,
    COUNT(*) AS Total_Admissions
FROM Healthcare.Admissions
GROUP BY Department
ORDER BY Total_Admissions DESC;

/*
*/

/*
Admission Table
*/

SELECT * 
FROM Healthcare.Admissions

/*
Doctor Table
*/

SELECT * 
FROM Healthcare.Doctors

/*
THE TABLES ARE SEPARATE. 
THE STORY ISN'T.
*/

SELECT
    a.Admission_ID,
    p.Patient_Name,
    d.Doctor_Name,
    a.Department
FROM Healthcare.Admissions AS a
JOIN Healthcare.Patients AS p
    ON a.Patient_ID = p.Patient_ID
JOIN Healthcare.Doctors AS d
    ON a.Primary_Doctor_ID = d.Doctor_ID;


/*
Check whether the new admission already exist.
*/

SELECT *
FROM Healthcare.Admissions
WHERE Admission_ID = 'A031';


INSERT INTO Healthcare.Admissions
(Admission_ID, Patient_ID, Primary_Doctor_ID, Admission_Date, Discharge_Date, Admission_Type, Department)
VALUES
('A031', 'P001', 'D001', '2026-09-23', '2026-09-26', 'Emergency', 'Cardiology');

SELECT *
FROM Healthcare.Admissions
WHERE Admission_ID = 'A031';


/*
DELETE FROM Healthcare.Admissions
WHERE Admission_ID = 'A031';
*/