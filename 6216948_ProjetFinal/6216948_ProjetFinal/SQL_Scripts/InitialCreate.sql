﻿go
Use master
go

CREATE DATABASE TP1_BD_6216948
GO
USE TP1_BD_6216948
GO

EXEC sp_configure filestream_access_level, 2 RECONFIGURE

ALTER DATABASE TP1_BD_6216948
ADD FILEGROUP FG_Images_6216948 CONTAINS FILESTREAM;
GO
ALTER DATABASE TP1_BD_6216948
ADD FILE (
	NAME = FG_Images_6216948,
	FILENAME = 'C:\EspaceLabo\FG_Images_6216948'
)
TO FILEGROUP FG_Images_6216948
GO

