create database edutrack_analysis;

use edutrack_analysis;


-- 1. Ethnicity Table
create table Ethnicity(Id int primary key auto_increment,
						Race varchar(50) unique not null);

 -- 2. Parent Education Level Table 
create table Parent_Education_Level(ID int primary key auto_increment,
									Highest_level varchar(100));

-- 3. Parents Table
create table Parents(Id int primary key auto_increment,
					Name varchar(255),
                    EthnicityId int,
                    Education_Level_id int,
                    foreign key(EthnicityId) references Ethnicity(Id),
                    foreign key(Education_Level_id) references Parent_Education_Level(ID));

-- 4. Lunch Table
 create table Lunch(Id int primary key auto_increment,
					Name varchar(100));

-- 5. Course Preparation Table	
create table preparation_course(Id int primary key auto_increment,
								Completion varchar(50));

-- 6. Students Table                                
create table Students(Id int primary key auto_increment,
						name varchar(100),
                        ParentId int not null,
                        LunchId int not null,
                        preparation_id int not null,
                        Maths_Score int,
                        Reading_Score int,
                        Writing_Score int,
                        foreign key(ParentId) references Parents(ID),
                        foreign key(LunchId) references Lunch(Id),
                        foreign key(preparation_id) references preparation_course(Id));
                        
                        
