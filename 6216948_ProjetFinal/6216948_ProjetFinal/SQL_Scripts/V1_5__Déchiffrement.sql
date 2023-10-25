go
use TP1_BD_6216948;
go

-- Decryption
create PROCEDURE dbo.USP_DecryptAdresseNumeroPorte
AS
BEGIN
    OPEN SYMMETRIC KEY MaSuperCleChiffrement DECRYPTION BY CERTIFICATE MonCertificat;

    DECLARE @DecryptedData INT;

    UPDATE SpecialisteSchema.Specialiste
    SET @DecryptedData = CAST(DECRYPTBYKEY(AdresseNumeroPorteCryptee) AS NVARCHAR(MAX)),
        AdresseNumeroPorte = @DecryptedData;

    UPDATE SpecialisteSchema.Specialiste
    SET AdresseNumeroPorteCryptee = NULL;

    CLOSE SYMMETRIC KEY MaSuperCleChiffrement


END

