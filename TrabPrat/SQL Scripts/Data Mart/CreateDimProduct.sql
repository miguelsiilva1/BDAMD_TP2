IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimProduct')
    CREATE TABLE DimProduct
    (
        product_key int IDENTITY(1,1) NOT NULL,
        product_code char(18) UNIQUE NOT NULL,
        description varchar(60) NOT NULL,
        stock numeric(13,3) NOT NULL,
        unit_price numeric(19,6) NOT NULL,
        order_point numeric(10,3) NOT NULL,
        minimum_stock numeric(13,3) NOT NULL,
        start_selling_date date NOT NULL,
        category varchar(25) NOT NULL,
        family_code int,
        family_name varchar(60) NOT NULL,
        CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED
    (
        product_key ASC
    )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
    ) ON [PRIMARY]