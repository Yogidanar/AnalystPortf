/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
  TOP (1000) [ProductKey], 
  [ProductAlternateKey] as 'Product Item Code',	 --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  [EnglishProductName] as 'Product Name', 
  dbo.DimProductSubcategory.EnglishProductSubcategoryName as 'Sub Category', 
  -- join
  dbo.DimProductCategory.EnglishProductCategoryName as 'Product Category', -- join
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag] 
  [Color] as 'Product Color', --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  [Size] as 'Product Size', --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  [ProductLine] as 'Product Line', --,[DealerPrice]
  --,[Class]
  --,[Style]
  [ModelName] as 'Product Model Name', --,[LargePhoto]
  [EnglishDescription] as 'Product Description', --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate] 
  [Status] as 'Product Status' 
FROM 
  dbo.DimProduct 
  left join dbo.DimProductSubcategory on dbo.DimProductSubcategory.ProductSubcategoryKey = dbo.DimProduct.ProductSubcategoryKey 
  left join dbo.DimProductCategory on dbo.DimProductCategory.ProductCategoryKey = dbo.DimProductCategory.ProductCategoryKey 
order by 
  dbo.DimProduct.ProductKey asc
