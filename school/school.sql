-- Drops existing tables, so we start fresh with each
-- run of this script
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
  companylist_id INTEGER
);

CREATE TABLE activity_list (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    contactlist_id INTEGER,
    companylist_id INTEGER,
    contact_type TEXT,
    time TEXT,
    description TEXT
);

CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);

-- Create the rest of the tables

CREATE TABLE teachers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  bio TEXT
);

CREATE TABLE courses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  course_name TEXT,
  course_description TEXT
);

CREATE Table sections (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  couse_time TEXT,
  course_id INTEGER,
  teacher_id INTEGER
);
