IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Families')
    create table Families
    (
        Code int,
        Name varchar(60)
    )
ELSE
    DELETE FROM Families;