# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS peopleroles;
# ... 
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!
CREATE TABLE skills(
    skill_id INT NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    tag varchar(255) NOT NULL,
    url varchar(255),
    time_commitment TIME,
    PRIMARY KEY (skill_id)
);

# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!
-- Insert Skill 1
INSERT INTO skills (skill_id, name, description, tag, url, time_commitment)
VALUES (1, 'Programming in Python', 'Learn Python programming language', 'Skill 1', 'https://example.com/python', '10:00:00');

-- Insert Skill 2
INSERT INTO skills (skill_id, name, description, tag, url, time_commitment)
VALUES (2, 'Data Analysis with R', 'Analyze data using the R language', 'Skill 2', 'https://example.com/r', '08:00:00');

-- Insert Skill 3
INSERT INTO skills (skill_id, name, description, tag, url, time_commitment)
VALUES (3, 'Web Development with JavaScript', 'Develop web applications using JavaScript', 'Skill 3', 'https://example.com/javascript', '15:00:00');

-- Insert Skill 4
INSERT INTO skills (skill_id, name, description, tag, url, time_commitment)
VALUES (4, 'Database Design with SQL', 'Design and manage databases using SQL', 'Skill 4', 'https://example.com/sql', '12:00:00');

-- Insert Skill 5
INSERT INTO skills (skill_id, name, description, tag, url, time_commitment)
VALUES (5, 'Graphic Design with Adobe Photoshop', 'Create graphics using Photoshop', 'Skill 5', 'https://example.com/photoshop', '05:00:00');

-- Insert Skill 6
INSERT INTO skills (skill_id, name, description, tag, url, time_commitment)
VALUES (6, 'Machine Learning with Python', 'Learn machine learning using Python', 'Skill 6', 'https://example.com/machine-learning', '20:00:00');

-- Insert Skill 7
INSERT INTO skills (skill_id, name, description, tag, url, time_commitment)
VALUES (7, 'Digital Marketing', 'Market products and services online', 'Skill 7', 'https://example.com/digital-marketing', '10:00:00');

-- Insert Skill 8
INSERT INTO skills (skill_id, name, description, tag, url, time_commitment)
VALUES (8, 'Network Security', 'Secure computer networks and data', 'Skill 8', 'https://example.com/network-security', '18:00:00');



# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
   people_id int,
   people_first_name varchar(255),
   people_last_name varchar(256) NOT NULL,
   email varchar(255),
   linkedin_url varchar(255),
   headshot_url varchar(255),
   discord_handle varchar(255),
   brief_bio varchar(255),
   date_joined date not null,
   PRIMARY KEY (people_id)
);


# Section 5
# Populate people with six people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

-- Insert Person 1
INSERT INTO people (people_id, people_first_name, people_last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
VALUES (1, 'Alice', 'Person 1', 'alice@email.com', 'https://www.linkedin.com/in/alice', 'alice_headshot.jpg', 'alice#1234', 'Alice is a developer', '2023-11-04');

-- Insert Person 2
INSERT INTO people (people_id, people_first_name, people_last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
VALUES (2, 'Bob', 'Person 2', 'bob@email.com', 'https://www.linkedin.com/in/bob', 'bob_headshot.jpg', 'bob#1234', 'Bob is a designer', '2023-11-05');

-- Insert Person 3
INSERT INTO people (people_id, people_first_name, people_last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
VALUES (3, 'Charlie', 'Person 3', 'charlie@email.com', 'https://www.linkedin.com/in/charlie', 'charlie_headshot.jpg', 'charlie#1234', 'Charlie is a marketer', '2023-11-06');

-- Insert Person 4
INSERT INTO people (people_id, people_first_name, people_last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
VALUES (4, 'David', 'Person 4', 'david@email.com', 'https://www.linkedin.com/in/david', 'david_headshot.jpg', 'david#1234', 'David is a scientist', '2023-11-07');

-- Insert Person 5
INSERT INTO people (people_id, people_first_name, people_last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
VALUES (5, 'Eva', 'Person 5', 'eva@email.com', 'https://www.linkedin.com/in/eva', 'eva_headshot.jpg', 'eva#1234', 'Eva is an artist', '2023-11-08');

-- Insert Person 6
INSERT INTO people (people_id, people_first_name, people_last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
VALUES (6, 'Frank', 'Person 6', 'frank@email.com', 'https://www.linkedin.com/in/frank', 'frank_headshot.jpg', 'frank#1234', 'Frank is an analyst', '2023-11-09');

-- Insert Person 7
INSERT INTO people (people_id, people_first_name, people_last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
VALUES (7, 'Sarah', 'Person 7', 'sarah@example.com', 'https://www.linkedin.com/in/sarah', 'sarah_headshot.jpg', 'sarah#1234', 'Sarah is a developer', '2023-11-04');

-- Insert Person 8
INSERT INTO people (people_id, people_first_name, people_last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
VALUES (8, 'Michael', 'Person 8', 'michael@example.com', 'https://www.linkedin.com/in/michael', 'michael_headshot.jpg', 'michael#1234', 'Michael is a designer', '2023-11-05');

-- Insert Person 9
INSERT INTO people (people_id, people_first_name, people_last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
VALUES (9, 'Emily', 'Person 9', 'emily@example.com', 'https://www.linkedin.com/in/emily', 'emily_headshot.jpg', 'emily#1234', 'Emily is a marketer', '2023-11-06');

-- Insert Person 10
INSERT INTO people (people_id, people_first_name, people_last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
VALUES (10, 'Daniel', 'Person 10', 'daniel@example.com', 'https://www.linkedin.com/in/daniel', 'daniel_headshot.jpg', 'daniel#1234', 'Daniel is an analyst', '2023-11-07');


# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

CREATE TABLE peopleskills (
    peopleskills_id int auto_increment primary key,
    skills_id int not null,
    people_id int not null,
    date_acquired date not null,
    foreign key (skills_id) references skills(skill_id),
    foreign key (people_id) references people(people_id)
);

# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.

-- Person 1
INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES (1, 1, '2023-11-04'), (3, 1, '2023-11-05'), (6, 1, '2023-11-06');

-- Person 2
INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES (3, 2, '2023-11-07'), (4, 2, '2023-11-08'), (5, 2, '2023-11-09');

-- Person 3
INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES (1, 3, '2023-11-10'), (5, 3, '2023-11-11');

-- Person 5
INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES (3, 5, '2023-11-12'), (6, 5, '2023-11-13');

-- Person 6
INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES (2, 6, '2023-11-14'), (3, 6, '2023-11-15'), (4, 6, '2023-11-16');

-- Person 7
INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES (3, 7, '2023-11-17'), (5, 7, '2023-11-18'), (6, 7, '2023-11-19');

-- Person 8
INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES (1, 8, '2023-11-20'), (3, 8, '2023-11-21'), (5, 8, '2023-11-22'), (6, 8, '2023-11-23');

-- Person 9
INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES (2, 9, '2023-11-24'), (5, 9, '2023-11-25'), (6, 9, '2023-11-26');

-- Person 10
INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES (1, 10, '2023-11-27'), (4, 10, '2023-11-28'), (5, 10, '2023-11-29');

# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles

CREATE TABLE roles(
    role_id int primary key,
    name varchar(255),
    sort_priority int
);


# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

-- Insert records into the "roles" table with role names and sort priorities

-- Insert Designer with sort priority 10
INSERT INTO roles (role_id, name, sort_priority)
VALUES (1, 'Designer', 10);

-- Insert Developer with sort priority 20
INSERT INTO roles (role_id, name, sort_priority)
VALUES (2, 'Developer', 20);

-- Insert Recruit with sort priority 30
INSERT INTO roles (role_id, name, sort_priority)
VALUES (3, 'Recruit', 30);

-- Insert Team Lead with sort priority 40
INSERT INTO roles (role_id, name, sort_priority)
VALUES (4, 'Team Lead', 40);

-- Insert Boss with sort priority 50
INSERT INTO roles (role_id, name, sort_priority)
VALUES (5, 'Boss', 50);

-- Insert Mentor with sort priority 60
INSERT INTO roles (role_id, name, sort_priority)
VALUES (6, 'Mentor', 60);


# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment

CREATE TABLE peopleroles(
    peopleroles_id int auto_increment primary key,
    people_id int not null,
    role_id int not null,
    date_assigned date not null,
    foreign key (people_id) references people(people_id),
    foreign key (role_id) references roles(role_id)
);


# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

-- Person 1 is Developer
INSERT INTO peopleroles (people_id, role_id, date_assigned)
VALUES (1, 2, '2023-11-08');

-- Person 2 is Boss
INSERT INTO peopleroles (people_id, role_id, date_assigned)
VALUES (2, 5, '2023-11-08');

-- Person 2 is Mentor
INSERT INTO peopleroles (people_id, role_id, date_assigned)
VALUES (2, 6, '2023-11-08');

-- Person 3 is Developer
INSERT INTO peopleroles (people_id, role_id, date_assigned)
VALUES (3, 2, '2023-11-08');

-- Person 3 is Team Lead
INSERT INTO peopleroles (people_id, role_id, date_assigned)
VALUES (3, 4, '2023-11-08');

-- Person 4 is Recruit
INSERT INTO peopleroles (people_id, role_id, date_assigned)
VALUES (4, 3, '2023-11-08');

-- Person 5 is Recruit
INSERT INTO peopleroles (people_id, role_id, date_assigned)
VALUES (5, 3, '2023-11-08');

-- Person 6 is Developer
INSERT INTO peopleroles (people_id, role_id, date_assigned)
VALUES (6, 2, '2023-11-08');

-- Person 6 is Designer
INSERT INTO peopleroles (people_id, role_id, date_assigned)
VALUES (6, 1, '2023-11-08');

-- Person 7 is Designer
INSERT INTO peopleroles (people_id, role_id, date_assigned)
VALUES (7, 1, '2023-11-08');

-- Person 8 is Designer
INSERT INTO peopleroles (people_id, role_id, date_assigned)
VALUES (8, 1, '2023-11-08');

-- Person 8 is Team Lead
INSERT INTO peopleroles (people_id, role_id, date_assigned)
VALUES (8, 4, '2023-11-08');

-- Person 9 is Developer
INSERT INTO peopleroles (people_id, role_id, date_assigned)
VALUES (9, 2, '2023-11-08');

-- Person 10 is Developer
INSERT INTO peopleroles (people_id, role_id, date_assigned)
VALUES (10, 2, '2023-11-08');

-- Person 10 is Designer
INSERT INTO peopleroles (people_id, role_id, date_assigned)
VALUES (10, 1, '2023-11-08');


