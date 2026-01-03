IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Departaments')
    create table Departaments
    (
        Code       int identity
            constraint PK_departamentos
                primary key,
        Department varchar(50) not null
    )
ELSE
    TRUNCATE TABLE Departaments