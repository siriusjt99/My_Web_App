use Doc_M;

CREATE TABLE Doctors (
    Id int IDENTITY(1,1) PRIMARY KEY,
    Name nvarchar(50) NOT NULL,
    Specialty nvarchar(50) NOT NULL
)
