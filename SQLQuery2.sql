CREATE PROCEDURE dbo.spUser_Authenticate
    @Username NVARCHAR(50),
    @Password NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 1 UserId, Username
    FROM Users
    WHERE Username = @Username
      AND Password = @Password;
END
