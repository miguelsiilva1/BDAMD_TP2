IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Customers')
    create table Customers
    (
        Name           varchar(55) not null,
        Number         numeric(10) not null
            constraint PK_clientes_1
                primary key,
        TaxpayerNumber varchar(20) not null,
        Fax            varchar(60) not null,
        Phone          varchar(60) not null,
        Contact        varchar(30) not null,
        Address        varchar(55) not null,
        ZipCode        varchar(10) not null,
        City           varchar(33),
        Location       varchar(43) not null,
        CustomerType   int         not null
            constraint FK_clientes_tiposcliente
                references CustomerTypes,
        Email          varchar(45) not null
    )
ELSE
    DELETE FROM Customers;