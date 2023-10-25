go
use TP1_BD_6216948
go

create master key encryption by PASSWORD='P4ssword1998!!!!!!'

create certificate MonCertificat with subject='Chiffrement'



create symmetric key MaSuperCleChiffrement with algorithm= AES_256 ENCRYPTION BY CERTIFICATE MonCertificat



