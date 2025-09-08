CREATE PROCEDURE dbo.spUser_Authenticate
    @UserName NCHAR(16),
    @Password NCHAR(16)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 1 Id, UserName, FirstName, LastName
    FROM dbo.Users
    WHERE UserName = @UserName
      AND [Password] = @Password;
END
