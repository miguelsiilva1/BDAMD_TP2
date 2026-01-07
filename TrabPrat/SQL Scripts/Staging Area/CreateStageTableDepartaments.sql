IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Departaments')
    create table Departaments
    (
        Code       int,
        Department varchar(50) not null
    )
ELSE
    DELETE FROM Departaments;