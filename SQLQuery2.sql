create database UniversiteDB
go
use UniversiteDB
create table Universite(

	UniversiteID int primary key Identity(1,1),
	UniversiteAdý varchar (50),
	Konum varchar (50),
	Rektör varchar (35)

)

create table Fakulte(

	FakulteID int primary key Identity (1,1),
	FakulteAdý varchar (40),
	Dekan varchar (35),
	UniversiteID int foreign key references Universite(UniversiteID)

)

create table Bolumler(

	BolumID int primary key Identity (1,1),
	BolumAdý varchar (50),
	OgrenciSayisi int,
	FakulteID int foreign key references Fakulte (FakulteID),
	BolumBaskaný varchar(35)

)

create table Ogrenci(

	OgrenciID int primary key Identity (1,1),
	Adý varchar (25),
	Soyadý varchar (35),
	DogumTarihi Datetime2,
	Cinsiyet varchar (5),
	BolumID int foreign key references Bolumler (BolumID),
	TC varchar (11)

)

create table OgretimUyesi(

	OgretimUyesiID int primary key Identity (1,1),
	Adý varchar (25),
	Soyadý varchar (35),
	Unvan varchar (45),
	UzmanlýkAlaný varchar (45),
	BolumID int foreign key references Bolumler (BolumID),
	Cinsiyet varchar (5)

)

create table Dersler(
	
	DersID int primary key Identity (1,1),
	DersAdý varchar (40),
	Kredi varchar (10),
	BolumID int foreign key references Bolumler (BolumID),
	OgretimUyesiID int foreign key references OgretimUyesi (OgretimUyesiID)

)

create table Kayýtlar(
	
	KayýtID int primary key Identity (1,1),
	OgrenciID int foreign key references Ogrenci (OgrenciID),
	DersID int foreign key references Dersler (DersID),
	Tarih Datetime2,
	SýnavNot int

)

create table Burs(
	
	BursID int primary key Identity (1,1),
	OgrenciID int foreign key references Ogrenci (OgrenciID),
	BursTürü varchar(30),
	BursMiktarý int,
	OdemeDurumu varchar (20)

)





