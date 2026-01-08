IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FactSalesDQP')
    create table FactSalesDQP
    (
        SaleID             int,
        SaleDate           date           not null,
        CustomerNumber     numeric(10)    not null,
        EmployeeNumber     numeric(6)     not null,
        PaymentDate        date           not null,
        ProductsTotalValue numeric(19, 6) not null,
        VAT                numeric(19, 6) not null,
        FinalValue         numeric(19, 6) not null,
        SaleLineID  int            not null,
        Quantity    numeric(14, 4) not null,
        VATRate     numeric(4, 2)  not null,
        UnitPrice   numeric(19, 6) not null,
        LineValue   numeric(19, 6) not null,
        DQP nvarchar(100)
    )
ELSE
    DELETE FROM FactSalesDQP;