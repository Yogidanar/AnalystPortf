/****** Cleansed DIM_DateTable  ******/
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date, 
  --[DayNumberOfWeek]
  [EnglishDayNameOfWeek] as Day, 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  [WeekNumberOfYear] as WeekNumber, 
  [EnglishMonthName] as Month, 
  Left([EnglishMonthName], 3) as MonthShort, 
  --[SpanishMonthName]
  --[FrenchMonthName]
  [MonthNumberOfYear] as MonthNumber, 
  [CalendarQuarter] as Quaeter, 
  [CalendarYear] as Year, 
  [CalendarSemester] 
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
where 
  [CalendarYear] >= 2019
