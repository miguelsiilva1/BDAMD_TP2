IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'SalesDetails')
    create table SalesDetails
    (
        SaleID      int            not null
            constraint FK_SalesDetails_Sales
                references Sales,
        SaleLineID  int            not null,
        ProductCode char(18)       not null
            constraint FK_SalesDetails_Products
                references Products,
        Quantity    numeric(14, 4) not null,
        VATRate     numeric(4, 2)  not null,
        UnitPrice   numeric(19, 6) not null,
        LineValue   numeric(19, 6) not null,
        constraint PK_SalesDetails
            primary key (SaleID, SaleLineID)
    )
ELSE
    TRUNCATE TABLE SalesDetails