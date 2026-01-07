IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'CustomerTypes')
    create table CustomerTypes
    (
        Code int,
        Type char(20) not null
    )
ELSE
    DELETE FROM CustomerTypes;