/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (10000) [DateKey]
      ,[FullDateAlternateKey] As Date,
    --  ,[DayNumberOfWeek]
      [EnglishDayNameOfWeek] As Day,
     -- ,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
    --  ,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      [WeekNumberOfYear] as WeekNr,
      [EnglishMonthName] AS Month,
	   Left([EnglishMonthName],3) AS MonthShort, -- useful for front end date navigation grpahics.
--      ,[SpanishMonthName]
     -- ,[FrenchMonthName]
--,[MonthNumberOfYear] 
      [CalendarQuarter] As Quarter,
      [CalendarYear]	 As Year
   --   ,[CalendarSemester]
--,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
	  FROM [AdventureWorksDW2022].[dbo].[DimDate]
	  Where [CalendarYear] >=2019
	  