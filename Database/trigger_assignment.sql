-- Remove Previous tables
DROP TABLE buy;
DROP TABLE sell;
DROP TABLE ledger;

-- Create New tables
CREATE TABLE buy (
    id NUMBER GENERATED ALWAYS AS IDENTITY,
    bdate varchar(12),
    quantity int,
    PRIMARY KEY (id)
);

CREATE TABLE sell(
    id NUMBER GENERATED ALWAYS AS IDENTITY,
    sdate varchar(12),
    quantity int,
    PRIMARY KEY (id)
);

CREATE TABLE ledger(
    id NUMBER GENERATED ALWAYS AS IDENTITY,
    ldate varchar(12),
    debit int,
    credit int,
    balance int,
    PRIMARY KEY (id)
);

-- Initial values for the tables
INSERT INTO buy (bdate,quantity) values ('00/00/0000',0);
INSERT INTO sell (sdate,quantity) values ('00/00/0000',0);
INSERT INTO ledger (ldate, debit, credit, balance) values ('00/00/0000',0,0,0);

-- Create Buy Trigger
CREATE OR REPLACE TRIGGER b_trig
AFTER INSERT ON buy
FOR EACH ROW
DECLARE 
    pbalance number; 
    max_id number;
BEGIN
    select MAX(id) into max_id from ledger;
    SELECT balance INTO pbalance FROM ledger WHERE id=max_id;
    INSERT INTO ledger (ldate, debit, credit, balance) 
    VALUES (:NEW.bdate,:NEW.quantity,0,:NEW.quantity + pbalance);
END;
/

-- Create Sell Trigger
CREATE OR REPLACE TRIGGER s_trig
AFTER INSERT ON sell
FOR EACH ROW
DECLARE 
    pbalance number; 
    max_id number;
BEGIN
    select MAX(id) into max_id from ledger;
    SELECT balance INTO pbalance FROM ledger WHERE id=max_id;
    INSERT INTO ledger (ldate, debit, credit, balance) 
    VALUES (:NEW.sdate,0, :NEW.quantity,pbalance - :NEW.quantity);
END;
/

-- Insert the values mentioned
INSERT INTO buy (bdate,quantity) values ('01/01/2023',10);
INSERT INTO sell (sdate,quantity) values ('02/01/2023',5);
INSERT INTO sell (sdate,quantity) values ('02/01/2023',3);
INSERT INTO buy (bdate,quantity) values ('04/01/2023',25);

-- Check the result
SELECT * FROM buy;
SELECT * FROM sell;
SELECT * FROM ledger;
