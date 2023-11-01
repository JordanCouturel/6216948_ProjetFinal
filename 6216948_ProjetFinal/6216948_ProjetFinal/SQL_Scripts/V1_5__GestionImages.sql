go
use TP1_BD_6216948;
go


go
Create table ImageSchema.Image(
ImageID int identity(1,1),
Nom nvarchar(100) not null,
Identifiant uniqueidentifier not null rowguidcol,
Constraint PK_Image_ImageID primary key(ImageID)
);
go

go
alter table ImageSchema.Image add constraint UC_Image_Identifiant
Unique (Identifiant);
go

go
alter table ImageSchema.Image add constraint DF_Image_Identifiant
default newid() FOR Identifiant;
go

go
alter table ImageSchema.Image add
FichierImage varbinary(max) filestream null;
go