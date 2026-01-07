IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'SalesDetails')
    create table SalesDetails
    (
        SaleID      int            not null,
        SaleLineID  int            not null,
        ProductCode char(18)       not null,
        Quantity    numeric(14, 4) not null,
        VATRate     numeric(4, 2)  not null,
        UnitPrice   numeric(19, 6) not null,
        LineValue   numeric(19, 6) not null,
    )
ELSE
    TRUNCATE TABLE SalesDetails