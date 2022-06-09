--DataBaseni Yaratmag Ucun
Create Database Company 

--Databaseni Silmek Ucun
--Drop Database Company

--DataBasani Istifade Elemek Ucun
Use Company

--Burda Employees Databasen Yaratim Ve Columda olacaglari Qeyd Etdim
CREATE TABLE Employees (Id int,Name nvarchar(50),SurName nvarchar(50),Position nvarchar(50),Salary decimal(18,2))

--Table Silmek Ucun
Drop Table Employees

--Table Doldurmag ucun
Insert Into Employees 
Values
(1,'Abdulla','Rehimli','BackEnd',2700),
(2,'Vusal','Aliyev','FrontEndAndBackEnd',2100),
(3,'Maqsud','Seferov','BackEnd',1800),
(4,'Togrul','HuseynAliyev','FrontEnd',1800),
(5,'Isaq','Yaqublu','FrontEnd',2200),
(6,'Vusal','Imanov','BackEnd',2100)

--Departamentin Isci Maasi Ortalamasi
Select (sum(Salary)/MAX(Id)) From Employees	

--Salary ortalamasinan boyuk olan Maaslar
Select * From Employees Where Salary > (Select sum(Salary)/MAX(Id) From Employees)

--Minimum Ve Maximum Salaryler
Select * From Employees Where Salary = (Select Min(Salary) From Employees) Or Salary = (Select MAX(Salary) From Employees)



----------------------------------Task 2----------------------------------

Create Database Market 

use Market 

CREATE TABLE Products  (Id int,Name nvarchar(50),Price decimal(18,2))

Drop Table Products

Alter Table Products Add Brand nvarchar(50)

Insert Into Products 
Values
(1,'18 Pro Max Edge',27,'apple'),
(2,'S21 Ultura',1,'Samsung'),
(3,'G3',8,'Dell'),
(4,'ROG',11,'Asus'),
(5,'mac',27,'apple'),
(6,'air',2700,'apple')

--Qiymet Ortalamasi
Select (sum(Price)/MAX(Id)) From Products	

--Qiymeti 10 dan yuxari olan mallar
Select * From Products Where Price > 10

--
Select (Name + ' '+ Brand),Price From Products Where Price > 5





