-- Adminer 4.7.6 PostgreSQL dump

DROP TABLE IF EXISTS "customers";
DROP SEQUENCE IF EXISTS customers_customerid_seq;
CREATE SEQUENCE customers_customerid_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."customers" (
    "customerid" integer DEFAULT nextval('customers_customerid_seq') NOT NULL,
    "firstname" character varying(50) NOT NULL,
    "lastname" character varying(50) NOT NULL,
    "gender" character varying(10) NOT NULL,
    "address" character varying(200) NOT NULL,
    "phone" character varying(15) NOT NULL,
    "email" character varying(100) NOT NULL,
    "city" character varying(20) NOT NULL,
    "country" character varying(50) NOT NULL,
    CONSTRAINT "customers_pkey" PRIMARY KEY ("customerid")
) WITH (oids = false);

INSERT INTO "customers" ("customerid", "firstname", "lastname", "gender", "address", "phone", "email", "city", "country") VALUES
(3,	'Leon',	'Glen',	'Male',	'81 Everton Rd,Gillits ',	'0820832830',	'Charl.muller@yahoo.com',	'Berlin',	'Germany'),
(4,	'Julia',	'Stein',	'Female',	'2 Wernerring',	'+448672445058',	'Js234@yahoo.com',	'Frankfurt',	'Germany'),
(5,	'John',	'Hibert',	'Male',	'284 chaucer st',	'084789657',	'john@gmail.com',	'johannesburg',	'South Africa'),
(6,	'Thando',	'Sithole',	'Female',	'240 Sect 1',	'0794445584',	'thando@gmail.com',	'Cape Town',	'South Africa'),
(7,	'Leon',	'Glen',	'Male',	'81 Everton Rd,Gillits ',	'0820832830',	'Charl.muller@yahoo.com',	'Berlin',	'Germany'),
(8,	'Julia',	'Stein',	'Female',	'2 Wernerring',	'+448672445058',	'Js234@yahoo.com',	'Frankfurt',	'Germany'),
(1,	'Lerato',	'Mabitso',	'Male',	'284 chaucer st',	'084789657',	'john@gmail.com',	'johannesburg',	'South Africa');

DROP TABLE IF EXISTS "employees";
DROP SEQUENCE IF EXISTS employees_employeeid_seq;
CREATE SEQUENCE employees_employeeid_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."employees" (
    "employeeid" integer DEFAULT nextval('employees_employeeid_seq') NOT NULL,
    "firstname" character varying(50) NOT NULL,
    "lastname" character varying(50) NOT NULL,
    "email" character varying(100) NOT NULL,
    "jobtitle" character varying(20) NOT NULL,
    CONSTRAINT "employees_pkey" PRIMARY KEY ("employeeid")
) WITH (oids = false);

INSERT INTO "employees" ("employeeid", "firstname", "lastname", "email", "jobtitle") VALUES
(1,	'Kani',	'Matthew',	'mat@gmail.com',	'Manager'),
(2,	'Lesly',	'Cronje',	'LesC@gmail.com',	'Clerk'),
(3,	'Gideon',	'Maduku',	'm@gmail.com',	'Accountant'),
(4,	'Kani',	'Matthew',	'mat@gmail.com',	'Manager'),
(5,	'Lesly',	'Cronje',	'LesC@gmail.com',	'Clerk'),
(6,	'Gideon',	'Maduku',	'm@gmail.com',	'Accountant');

DROP TABLE IF EXISTS "orders";
DROP SEQUENCE IF EXISTS orders_orderid_seq;
CREATE SEQUENCE orders_orderid_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."orders" (
    "orderid" integer DEFAULT nextval('orders_orderid_seq') NOT NULL,
    "productid" integer NOT NULL,
    "paymentid" integer NOT NULL,
    "fulfilledbyemployeeid" integer NOT NULL,
    "daterequired" date NOT NULL,
    "dateshipped" date NOT NULL,
    "status" character varying(20) NOT NULL,
    CONSTRAINT "orders_pkey" PRIMARY KEY ("orderid"),
    CONSTRAINT "orders_fulfilledbyemployeeid_fkey" FOREIGN KEY (fulfilledbyemployeeid) REFERENCES employees(employeeid) NOT DEFERRABLE,
    CONSTRAINT "orders_paymentid_fkey" FOREIGN KEY (paymentid) REFERENCES payments(paymentid) NOT DEFERRABLE,
    CONSTRAINT "orders_productid_fkey" FOREIGN KEY (productid) REFERENCES products(productid) NOT DEFERRABLE
) WITH (oids = false);


DROP TABLE IF EXISTS "payments";
DROP SEQUENCE IF EXISTS payments_paymentid_seq;
CREATE SEQUENCE payments_paymentid_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."payments" (
    "customerid" integer,
    "paymentid" integer DEFAULT nextval('payments_paymentid_seq') NOT NULL,
    "paymentdate" date NOT NULL,
    "amount" numeric NOT NULL,
    CONSTRAINT "payments_pkey" PRIMARY KEY ("paymentid"),
    CONSTRAINT "payments_customerid_fkey" FOREIGN KEY (customerid) REFERENCES customers(customerid) NOT DEFERRABLE
) WITH (oids = false);

INSERT INTO "payments" ("customerid", "paymentid", "paymentdate", "amount") VALUES
(1,	1,	'2018-01-09',	150.75),
(5,	2,	'2018-03-09',	150.75),
(4,	3,	'2018-03-09',	700.60);

DROP TABLE IF EXISTS "products";
DROP SEQUENCE IF EXISTS products_productid_seq;
CREATE SEQUENCE products_productid_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."products" (
    "productid" integer DEFAULT nextval('products_productid_seq') NOT NULL,
    "productname" character varying(100) NOT NULL,
    "description" character varying(300) NOT NULL,
    "buyprice" numeric(50,0) NOT NULL,
    CONSTRAINT "products_pkey" PRIMARY KEY ("productid")
) WITH (oids = false);

INSERT INTO "products" ("productid", "productname", "description", "buyprice") VALUES
(1,	'Harley Davidson Chopper',	'This replica features working kickstand, front suspension, gear-shift lever',	151),
(2,	'Classic Car',	'Turnable front wheels, steering function',	551),
(3,	' Sports car',	'Turnable front wheels, steering function',	701);

-- 2020-03-11 09:48:03.701479+00
