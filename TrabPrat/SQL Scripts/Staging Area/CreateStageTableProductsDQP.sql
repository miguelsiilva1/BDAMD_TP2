IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'ProductsDQP')
    create table ProductsDQP
    (
        Code             char(18)       not null,
        Description      char(60)       not null,
        FamilyCode       int            not null,
        Stock            numeric(13, 3) not null,
        UnitPrice        numeric(19, 6) not null,
        OrderPoint       numeric(10, 3) not null,
        MinimunStock     numeric(13, 3) not null,
        StartSellingDate date           not null,
        Category         varchar(25)    not null,
        DQP nvarchar(100)
    )
ELSE
    DELETE FROM ProductsDQP;