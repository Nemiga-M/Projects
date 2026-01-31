create database e_learning;
use e_learning;

create table Learners(
	Learner_ID int primary key,
    Full_Name varchar(50) not null,
    Country varchar(50) not null
    );

create table Courses (
	Course_ID int primary key,
    Course_Name varchar(50) unique not null,
    Category varchar (50) not null,
    Unit_Price decimal(10,2)
    );
    
create table purchases (
	Purchase_ID varchar(30) primary key,
    Learner_ID int,
    Course_ID int,
    Quantity int,
    Purchase_Date date,
    foreign key (Learner_ID) references Learners (Learner_ID),
    foreign key (Course_ID) references Courses (Course_ID)
    );
    
    -- INSERTION
insert into learners 
(Learner_id, Full_Name, Country) values
(101,'Aarav Sharma','India'),
(102,'Sophia Williams','USA'),
(103,'Liam Johnson','Canada'),
(104,'Emily Brown','UK'),
(105,'Noah Muller','Germany'),
(106,'Riya Patel','India'),
(107,'Daniel Smith','USA'),
(108,'Olivia Martin','UK'),
(109,'Ethan Wilson','Australia'),
(110,'Isabella Garcia','USA'),

(111,'Mohammed Ali','UAE'),
(112,'Lucas Silva','USA'),
(113,'Amelia Taylor','UK'),
(114,'Benjamin Clark','USA'),
(115,'Saanvi Iyer','India'),
(116,'Henry Walker','Canada'),
(117,'Mia Anderson','USA'),
(118,'Arjun Mehta','India'),
(119,'Charlotte Lee','Singapore'),
(120,'James Thompson','UK'),

(121,'Ananya Verma','India'),
(122,'Michael Harris','USA'),
(123,'Ella Robinson','Australia'),
(124,'William Scott','Canada'),
(125,'Priya Nair','India'),
(126,'David Young','USA'),
(127,'Sofia Rossi','Germany'),
(128,'Logan King','USA'),
(129,'Kavya Reddy','India'),
(130,'Alexander White','UK'),

(131,'Harsh Gupta','India'),
(132,'Grace Lewis','USA'),
(133,'Leo Martinez','USA'),
(134,'Ava Hernandez','USA'),
(135,'Rohan Kulkarni','India'),
(136,'Matthew Hall','Canada'),
(137,'Nina Schmidt','Germany'),
(138,'Samuel Baker','UK'),
(139,'Pooja Chawla','India'),
(140,'Christopher Adams','USA'),

(141,'Yuki Tanaka','Singapore'),
(142,'Natalie Moore','Australia'),
(143,'Vikram Singh','India'),
(144,'Andrew Carter','USA'),
(145,'Fatima Khan','UAE'),
(146,'Joseph Wright','UK'),
(147,'Sneha Joshi','India'),
(148,'Daniel Nguyen','Australia'),
(149,'Laura Perez','USA'),
(150,'Thomas Fischer','Germany');

insert into courses 
(Course_ID, Course_Name, Category, Unit_Price) values
(201,'SQL Fundamentals','Database',500.00),
(202,'Advanced SQL','Database',800.00),
(203,'MySQL Administration','Database',900.00),
(204,'Python Basics','Programming',600.00),
(205,'Advanced Python','Programming',900.00),
(206,'R Programming','Programming',700.00),
(207,'Power BI Essentials','Data Visualization',700.00),
(208,'Advanced Power BI','Data Visualization',950.00),
(209,'Tableau Basics','Data Visualization',800.00),
(210,'Excel for Business','Productivity',400.00),

(211,'Advanced Excel','Productivity',650.00),
(212,'VBA Automation','Productivity',850.00),
(213,'Machine Learning Intro','AI',1200.00),
(214,'Deep Learning','AI',1500.00),
(215,'Data Science with Python','Data Science',1300.00),
(216,'Statistics for Data Science','Data Science',900.00),
(217,'Big Data Hadoop','Big Data',1600.00),
(218,'Apache Spark','Big Data',1700.00),
(219,'AWS Cloud Fundamentals','Cloud',1000.00),
(220,'Azure Fundamentals','Cloud',950.00),

(221,'Google Cloud Basics','Cloud',900.00),
(222,'DevOps Fundamentals','DevOps',1100.00),
(223,'CI/CD with Jenkins','DevOps',1350.00),
(224,'Docker Basics','DevOps',1200.00),
(225,'Kubernetes Advanced','DevOps',1500.00),
(226,'Cybersecurity Basics','Security',1000.00),
(227,'Ethical Hacking','Security',1400.00),
(228,'Network Security','Security',1300.00),
(229,'HTML & CSS','Web',600.00),
(230,'JavaScript Basics','Web',700.00),

(231,'ReactJS','Web',1100.00),
(232,'Angular','Web',1050.00),
(233,'UI/UX Fundamentals','Design',800.00),
(234,'Advanced UI/UX','Design',1100.00),
(235,'Digital Marketing','Marketing',750.00),
(236,'SEO Fundamentals','Marketing',600.00),
(237,'Content Marketing','Marketing',700.00),
(238,'Financial Modeling','Finance',1200.00),
(239,'Investment Analysis','Finance',1400.00),
(240,'Risk Management','Finance',1300.00),

(241,'Business Analytics','Analytics',1000.00),
(242,'Predictive Analytics','Analytics',1200.00),
(243,'Agile Project Management','Management',900.00),
(244,'Scrum Master','Management',1100.00),
(245,'Supply Chain Analytics','Operations',1250.00),
(246,'Operations Management','Operations',950.00),
(247,'HR Analytics','HR',900.00),
(248,'Talent Management','HR',850.00),
(249,'Mobile App Development','App Dev',1300.00),
(250,'iOS Development','App Dev',1500.00);
    
insert into purchases 
(Purchase_ID, Learner_ID, Course_ID, Quantity, Purchase_Date) values
('P0001',101,201,1,'2024-11-05'),
('P0002',102,204,2,'2024-11-10'),
('P0003',103,207,1,'2024-11-15'),
('P0004',104,210,3,'2024-11-20'),
('P0005',105,213,1,'2024-11-25'),
('P0006',106,215,2,'2024-12-01'),
('P0007',107,219,1,'2024-12-03'),
('P0008',108,222,1,'2024-12-05'),
('P0009',109,226,2,'2024-12-08'),
('P0010',110,229,1,'2024-12-10'),

('P0011',111,201,1,'2024-12-15'),
('P0012',112,204,1,'2024-12-18'),
('P0013',113,207,2,'2024-12-20'),
('P0014',114,210,1,'2024-12-22'),
('P0015',115,215,1,'2024-12-25'),
('P0016',116,217,1,'2025-01-05'),
('P0017',117,219,2,'2025-01-07'),
('P0018',118,222,1,'2025-01-10'),
('P0019',119,226,1,'2025-01-12'),
('P0020',120,229,2,'2025-01-15'),

('P0021',101,204,1,'2025-01-18'),
('P0022',101,207,1,'2025-01-20'),
('P0023',102,210,1,'2025-01-22'),
('P0024',102,222,1,'2025-01-25'),
('P0025',103,226,2,'2025-02-01'),
('P0026',103,229,1,'2025-02-03'),
('P0027',104,215,1,'2025-02-05'),
('P0028',104,219,1,'2025-02-08'),
('P0029',105,201,3,'2025-02-10'),
('P0030',106,204,3,'2025-02-12'),
    
('P0031',107,207,1,'2025-02-15'),
('P0032',108,210,2,'2025-02-18'),
('P0033',109,213,1,'2025-02-20'),
('P0034',110,215,1,'2025-02-22'),
('P0035',111,217,1,'2025-03-01'),
('P0036',112,219,1,'2025-03-03'),
('P0037',113,222,1,'2025-03-05'),
('P0038',114,226,2,'2025-03-08'),
('P0039',115,229,1,'2025-03-10'),
('P0040',116,204,1,'2025-03-12'),
   
('P0041',117,210,1,'2025-03-15'),
('P0042',118,213,2,'2025-03-18'),
('P0043',119,215,1,'2025-03-20'),
('P0044',120,217,1,'2025-03-22'),
('P0045',121,219,1,'2025-04-01'),
('P0046',122,222,1,'2025-04-03'),
('P0047',123,226,1,'2025-04-05'),
('P0048',124,229,2,'2025-04-07'),
('P0049',125,207,1,'2025-04-10'),
('P0050',126,210,1,'2025-04-12');