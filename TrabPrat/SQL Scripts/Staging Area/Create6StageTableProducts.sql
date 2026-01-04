IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Products')
    create table Products
    (
        Code             char(18)       not null
            constraint pk_st
                primary key nonclustered,
        Description      char(60)       not null,
        FamilyCode       int            not null
            constraint FK_produtos_familias
                references Families,
        Stock            numeric(13, 3) not null,
        UnitPrice        numeric(19, 6) not null,
        OrderPoint       numeric(10, 3) not null,
        MinimunStock     numeric(13, 3) not null,
        StartSellingDate date           not null,
        Category         varchar(25)    not null
    )
ELSE
    DELETE FROM Products;