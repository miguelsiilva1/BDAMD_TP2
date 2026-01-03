IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Sales')
    create table Sales
    (
        SaleID             int identity
            constraint PK_Sales
                primary key,
        SaleDate           date           not null,
        CustomerNumber     numeric(10)    not null
            constraint FK_Sales_Customers
                references Customers,
        EmployeeNumber     numeric(6)     not null
            constraint FK_Sales_Employees
                references Employees,
        PaymentDate        date           not null,
        ProductsTotalValue numeric(19, 6) not null,
        VAT                numeric(19, 6) not null,
        FinalValue         numeric(19, 6) not null
    )
ELSE
    TRUNCATE TABLE Sales