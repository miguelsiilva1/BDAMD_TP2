IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'CustomersDQP')
    create table CustomersDQP
    (
        Name           varchar(55) not null,
        Number         numeric(10) not null,
        TaxpayerNumber varchar(20) not null,
        Fax            varchar(60) not null,
        Phone          varchar(60) not null,
        Contact        varchar(30) not null,
        Address        varchar(55) not null,
        ZipCode        varchar(10) not null,
        City           varchar(33),
        Location       varchar(43) not null,
        CustomerType   int         not null,
        Email          varchar(45) not null,
        DQP nvarchar(100)
    )
ELSE
    DELETE FROM CustomersDQP;