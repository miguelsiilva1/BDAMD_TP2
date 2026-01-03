IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Employees')
    create table Employees
    (
        Number     numeric(6)   not null
            constraint pk_us
                primary key nonclustered,
        Initials   varchar(3)   not null,
        Code       varchar(20)  not null,
        Forename   varchar(50)  not null,
        Surname    varchar(50)  not null,
        [Group]    varchar(20)  not null,
        Department int          not null
            constraint FK_funcionarios_departamentos
                references Departaments,
        Email      varchar(100) not null
    )
ELSE
    TRUNCATE TABLE Employees