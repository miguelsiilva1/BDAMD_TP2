IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimEmployee')
    CREATE TABLE DimEmployee
    (
        employee_key int IDENTITY(1,1) NOT NULL,
        number numeric(6) UNIQUE NOT NULL,
        initials varchar(3) NOT NULL,
        employee_code varchar(20) NOT NULL,
        forename varchar(50) NOT NULL,
        surname varchar(50) NOT NULL,
        [group] varchar(20) NOT NULL,
        email varchar(100) NOT NULL,
        department_code int,
        department varchar(50) NOT NULL,
        CONSTRAINT [PK_DimEmployee] PRIMARY KEY CLUSTERED
    (
        employee_key ASC
    )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
    ) ON [PRIMARY]