
go
use TP1_BD_6216948
go

--chiffrement
GO
CREATE PROCEDURE dbo.USP_EncryptAdresseNumeroPorte
AS
BEGIN


    OPEN SYMMETRIC KEY MaSuperCleChiffrement DECRYPTION BY CERTIFICATE MonCertificat
    
    
    UPDATE SpecialisteSchema.Specialiste
    SET AdresseNumeroPorteCryptee = ENCRYPTBYKEY(KEY_GUID('MaSuperCleChiffrement'), CAST(AdresseNumeroPorte AS NVARCHAR(MAX))),
        AdresseNumeroPorte = NULL 

    CLOSE SYMMETRIC KEY MaSuperCleChiffrement


END
GO


GO
execute dbo.USP_EncryptAdresseNumeroPorte
GO
