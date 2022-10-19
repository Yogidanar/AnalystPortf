/****** Cleansed DIM_CUstomer  ******/
SELECT 
  [CustomerKey] 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  [FirstName] as 'First Name', 
  --,[MiddleName]
  [LastName] as 'Last Name', 
  [FirstName] + ' ' + [LastName] as 'Full Name', 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  --,[Gender]
Case [Gender] when 'M' then 'Male' when 'F' then 'Female' end as 'Gender', 
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
  [DateFirstPurchase], --,[CommuteDistance] 
  dbo.DimGeography.City as 'Customer City' -- join dbo.DimGeography
From 
  dbo.DimCustomer 
  Left join dbo.DimGeography on dbo.DimGeography.GeographyKey = dbo.DimCustomer.GeographyKey 
Order by 
  CustomerKey ASC
