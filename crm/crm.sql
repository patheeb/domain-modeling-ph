-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

-- CREATE TABLES

DROP TABLE IF EXISTS company_list;
DROP TABLE IF EXISTS contact_list;
DROP TABLE IF EXISTS activity_list;
DROP TABLE IF EXISTS salesperson_list;


CREATE TABLE salesperson_list (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT

)

CREATE TABLE company_list (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  company_name TEXT
);

CREATE TABLE contact_list (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  company_list_id INTEGER
);

CREATE TABLE activity_list (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    salespersonlist_id INTEGER,
    contactlist_id INTEGER,
    companylist_id INTEGER,
    contact_type TEXT,
    time TEXT,
    description TEXT
);