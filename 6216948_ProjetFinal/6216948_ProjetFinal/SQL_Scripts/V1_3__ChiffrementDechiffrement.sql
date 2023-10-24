
go
use TP1_BD_6216948
go

create master key encryption by PASSWORD='P4ssword!';

create certificate MonCertificat with subject='Chiffrement';


select * from sys.certificates


create symmetric key MaSuperCleChiffrement with algorithm= AES_256 ENCRYPTION BY CERTIFICATE MonCertificat;

select* from sys.symmetric_keys;






--chiffrement
CREATE PROCEDURE dbo.USP_EncryptAdresseNumeroPorte
AS
BEGIN
    -- Use the symmetric key to encrypt the column AdresseNumeroPorte
    OPEN SYMMETRIC KEY MaSuperCleChiffrement DECRYPTION BY CERTIFICATE MonCertificat;
    
    
    -- Encrypt the column AdresseNumeroPorte and store it in AdresseNumeroPorteCryptee
    UPDATE SpecialisteSchema.Specialiste
    SET AdresseNumeroPorteCryptee = ENCRYPTBYKEY(KEY_GUID('MaSuperCleChiffrement'), CAST(AdresseNumeroPorte AS NVARCHAR(MAX))),
        AdresseNumeroPorte = NULL; -- Clear the original data

    CLOSE SYMMETRIC KEY MaSuperCleChiffrement;
END


execute dbo.USP_DecryptAdresseNumeroPorte

-- Decryption
create PROCEDURE dbo.DecryptAdresseNumeroPorte
AS
BEGIN
    -- Use the symmetric key to decrypt the column AdresseNumeroPorteCryptee
    OPEN SYMMETRIC KEY MaSuperCleChiffrement DECRYPTION BY CERTIFICATE MonCertificat;

    -- Create a variable to store the decrypted data
    DECLARE @DecryptedData INT;

    -- Decrypt AdresseNumeroPorteCryptee and store it in AdresseNumeroPorte
    UPDATE SpecialisteSchema.Specialiste
    SET @DecryptedData = CAST(DECRYPTBYKEY(AdresseNumeroPorteCryptee) AS INT),
        AdresseNumeroPorte = @DecryptedData;

    -- Clear the contents of AdresseNumeroPorteCryptee
    UPDATE SpecialisteSchema.Specialiste
    SET AdresseNumeroPorteCryptee = NULL;

    -- Close the symmetric key
    CLOSE SYMMETRIC KEY MaSuperCleChiffrement;


END

