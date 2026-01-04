IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Families')
    create table Families
    (
        Code int identity
            constraint PK_familias_1
                primary key,
        Name varchar(60)
    )
ELSE
    DELETE FROM Families;