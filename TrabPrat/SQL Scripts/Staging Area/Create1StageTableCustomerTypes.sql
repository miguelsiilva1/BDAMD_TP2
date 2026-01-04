IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'CustomerTypes')
    create table CustomerTypes
    (
        Code int identity
            constraint PK_tiposclientes
                primary key,
        Type char(20) not null
    )
ELSE
    DELETE FROM CustomerTypes;