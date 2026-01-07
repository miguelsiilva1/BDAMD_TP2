IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Sales')
    create table Sales
    (
        SaleID             int,
        SaleDate           date           not null,
        CustomerNumber     numeric(10)    not null,
        EmployeeNumber     numeric(6)     not null,
        PaymentDate        date           not null,
        ProductsTotalValue numeric(19, 6) not null,
        VAT                numeric(19, 6) not null,
        FinalValue         numeric(19, 6) not null
    )
ELSE
    DELETE FROM Sales;