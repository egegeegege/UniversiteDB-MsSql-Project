create database UniversiteDB
go
use UniversiteDB
create table Universite(

	UniversiteID int primary key Identity(1,1),
	UniversiteAd� varchar (50),
	Konum varchar (50),
	Rekt�r varchar (35)

)

create table Fakulte(

	FakulteID int primary key Identity (1,1),
	FakulteAd� varchar (40),
	Dekan varchar (35),
	UniversiteID int foreign key references Universite(UniversiteID)

)

create table Bolumler(

	BolumID int primary key Identity (1,1),
	BolumAd� varchar (50),
	OgrenciSayisi int,
	FakulteID int foreign key references Fakulte (FakulteID),
	BolumBaskan� varchar(35)

)

create table Ogrenci(

	OgrenciID int primary key Identity (1,1),
	Ad� varchar (25),
	Soyad� varchar (35),
	DogumTarihi Datetime2,
	Cinsiyet varchar (5),
	BolumID int foreign key references Bolumler (BolumID),
	TC varchar (11)

)

create table OgretimUyesi(

	OgretimUyesiID int primary key Identity (1,1),
	Ad� varchar (25),
	Soyad� varchar (35),
	Unvan varchar (45),
	Uzmanl�kAlan� varchar (45),
	BolumID int foreign key references Bolumler (BolumID),
	Cinsiyet varchar (5)

)

create table Dersler(
	
	DersID int primary key Identity (1,1),
	DersAd� varchar (40),
	Kredi varchar (10),
	BolumID int foreign key references Bolumler (BolumID),
	OgretimUyesiID int foreign key references OgretimUyesi (OgretimUyesiID)

)

create table Kay�tlar(
	
	Kay�tID int primary key Identity (1,1),
	OgrenciID int foreign key references Ogrenci (OgrenciID),
	DersID int foreign key references Dersler (DersID),
	Tarih Datetime2,
	S�navNot int

)

create table Burs(
	
	BursID int primary key Identity (1,1),
	OgrenciID int foreign key references Ogrenci (OgrenciID),
	BursT�r� varchar(30),
	BursMiktar� int,
	OdemeDurumu varchar (20)

)





