use Doc_M;

CREATE TABLE Patients (
    PatientID INT IDENTITY(1,1) PRIMARY KEY,
    PatientName VARCHAR(50),
    RegistrationDate DATE,
    Age INT,
    DoctorName VARCHAR(50)
);
