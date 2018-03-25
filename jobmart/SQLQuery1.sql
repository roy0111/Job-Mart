drop table loginData

drop table companyDataTbl
drop table userData
drop table companyPostRef
drop table jobPostTbl

create table loginData(
	idNo varchar(20),
	userMail varchar(50),
	userPassword varchar(36),
	usertype varchar(15),
	activity varchar(2),
	reg_date date,
	primary key (idNo)
)

insert into loginData values('cp12312365752','birat66@gmail.com','birat123','Company','y','2014-02-02');
insert into loginData values('cp123123213242','birat@gmail.com','birat123','Company','y','2014-02-02');
insert into loginData values('cp123123213243','birat123@gmail.com','birat123','Company','n','2014-02-02');
insert into loginData values('ad123123213244','birat13@gmail.com','birat123','Admin','y','2014-02-02');
insert into loginData values('ad123123213245','rubel@gmail.com','rubel123','Admin','y','2014-02-02');
insert into loginData values('ad123123213246','alamin@gmail.com','alamin123','Admin','y','2014-02-02');



select * from loginData
select * from companyDataTbl

create table companyDataTbl(
        companyId  varchar(20) primary key,
		companyName varchar(32),
		companyAddress varchar(50),
		companyWebSite varchar(50),
		foundationOn date,
		headQuater varchar(15),
		contactNo varchar(12),
		foreign key(companyId) references loginData(idNo) on delete cascade
)

create table userData(
			fullName varchar(32),
			userId varchar(20) primary key,
			addressOfUser varchar(50),
			dob date,
			gender varchar(10),
			division varchar(15),
			contactNo varchar(12),
			degree varchar(10),
			institute varchar(50),
			subjectGrad varchar(10),
			foreign key(userId) references loginData(idNo) on delete cascade
)
select * from userData



create table companyPostRef(
  postId varchar(20) primary key,
  companyId varchar(20),
  postingTime date,
  activity varchar(2),
  foreign key(companyId) references companyDataTbl(companyId) 
)
select * from jobPostTbl


create table jobPostTbl(
  postId varchar(20) primary key,
  jobTitle varchar(70),
  positionName text,
  deadLine date,
  noOfVacancy int,
  jobDescription text,
  jobNature text,
  jobRequirment text,
  salaryOthers text,
  jobLocation varchar(50),
  foreign key(postId) references companyPostRef(postId) on delete cascade 
)

