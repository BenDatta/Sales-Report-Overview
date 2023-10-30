SELECT [CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.[FirstName] as [First Name]
      --,[MiddleName]
      ,c.[LastName] as [Last Name],
	  [FirstName] + ' ' + [LastName] as [Full Name]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' end Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.[DateFirstPurchase] as [Date First Purcahse]
      --,[CommuteDistance]
	   ,g.[City] as [Customer City] ---- From Geography Table
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as c
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] as g
  ON c.GeographyKey = g.GeographyKey
  ORDER BY CustomerKey asc ---Ordered by Customer Key