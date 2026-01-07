IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCustomer')
BEGIN
    CREATE TABLE DimCustomer
    (
        customer_key int IDENTITY(1,1) NOT NULL,
        name varchar(55) NOT NULL,
        number numeric(10) UNIQUE NOT NULL,
        email varchar(45) NOT NULL,
        address varchar(55) NOT NULL,
        city varchar(33),
        location varchar(43) NOT NULL,
        zip_code varchar(10) NOT NULL,
        tax_payer_number varchar(20) NOT NULL,
        phone varchar(60) NOT NULL,
        contact varchar(30) NOT NULL,
        fax varchar(60) NOT NULL,
        customer_code int,
        customer_type char(20) NOT NULL,
        effective_date date NOT NULL,
        expired_date date ,
        is_current bit NOT NULL,
        CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED
    (
        customer_key ASC
    )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    CREATE NONCLUSTERED INDEX [NonClusteredIndex-CustomerNumber] ON [dbo].[DimCustomer]
    (
	    [number] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)

END