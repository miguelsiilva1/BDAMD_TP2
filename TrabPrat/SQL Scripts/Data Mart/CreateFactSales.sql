IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FactSales')
    CREATE TABLE FactSales
    (
        [DateKey] [int] NOT NULL,
        customer_key int NOT NULL,
        product_key [int] NOT NULL,
        employee_key int NOT NULL,
        sale_id int NOT NULL,
        sale_line_id int NOT NULL,
        sale_date date NOT NULL,
        customer_number numeric(10) NOT NULL
            constraint FK_DM_Sales_Customers
                references DimCustomer(number),
        employee_number numeric(6) NOT NULL
            constraint FK_DM_Sales_Employees
                references DimEmployee(number),
        product_code char(18) NOT NULL
            constraint FK_DM_Sales_Product
                references DimProduct(product_code),
        quantity numeric(14,4) NOT NULL,
        unit_price numeric(19,6) NOT NULL,
        payment_date date NOT NULL,
        products_total_value numeric(19,6) NOT NULL,
        vat numeric(19,6) NOT NULL,
        vat_rate numeric(4,2) NOT NULL,
        line_value numeric(19,6) NOT NULL,
        final_value numeric(19,6) NOT NULL,
    CONSTRAINT [PK_FactSales] PRIMARY KEY CLUSTERED
    (
        [DateKey] ASC,
        customer_key ASC,
        product_key ASC,
        employee_key ASC
    )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
    ) ON [PRIMARY]