CREATE PROCEDURE dbo.spUser_Insert
    @UserName  NCHAR(16),
    @FirstName NCHAR(50),
    @LastName  NCHAR(50),
    @Password  NCHAR(16)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.Users (UserName, FirstName, LastName, [Password])
    VALUES (@UserName, @FirstName, @LastName, @Password);

    -- Return the newly inserted Id
    SELECT SCOPE_IDENTITY() AS NewUserId;
END
