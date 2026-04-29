/* PRACTICAL ASSESSMENT QUESTIONS AND FORMULAS:*/

  /* 1.  Simple Interest: I = P * r * t */

  SELECT 
    CAST(Principal * AnnualRate * TermYears as DECIMAL(10,2)) as SimpleInterest
  FROM FinancialEngineeringDB.dbo.FinancialTasks
  WHERE TaskID = '1';

 -- test and confirm with the actual numbers
  SELECT 
    CAST(4500.0000 * 0.0700 * 5 AS DECIMAL(10,2)) as SimpleInterest
  FROM FinancialEngineeringDB.dbo.FinancialTasks
  WHERE TaskID = '1';

/* 2.  Annual Compound: A = P * (1 + r)^n */

  SELECT 
    CAST(Principal * POWER (1 + AnnualRate, TermYears) as DECIMAL(10,2)) AS AnnualCompound
  FROM FinancialEngineeringDB.dbo.FinancialTasks
  WHERE TaskID = '2';
    SELECT

  /* 3.  Hire Purchase Installment: Monthly = [P * (1 + r * t)] / 36*/
  
SELECT 
    CAST((Principal * (1 + AnnualRate * TermYears)/36) AS DECIMAL (10,2)) AS MonthlyInstallment
FROM FinancialEngineeringDB.dbo.FinancialTasks
WHERE TaskID = '3';

   /*4.  Inflation Projection: A = P * (1 + i)^n*/
SELECT 
        CAST((Principal * POWER(1 + AnnualRate,TermYears)) AS DECIMAL(10,2)) AS Inflation
    FROM FinancialEngineeringDB.dbo.FinancialTasks
    WHERE TaskID = '4';
/*
   5.  Reducing Balance Depreciation: A = P * (1 - i)^n*/

SELECT 
    CAST((Principal * POWER(1 - AnnualRate,TermYears)) AS DECIMAL(10,2)) AS BalanceDepreciation
    FROM FinancialEngineeringDB.dbo.FinancialTasks
    WHERE TaskID = '5';

   /* 6.  Quarterly Compound: A = P * (1 + r/4)^(4 * n)*/
 SELECT 
       CAST((Principal * POWER((1 + AnnualRate /4),(4 * TermYears))) AS DECIMAL(10,2)) AS QuartelyCompound
    FROM FinancialEngineeringDB.dbo.FinancialTasks
    WHERE TaskID = '6';

   /*
   7.  Monthly Loan Accrual: I = [P * (1 + r/12)^12] - P*/

  SELECT 
        CAST((Principal * POWER((1 + AnnualRate /12), (12))-Principal) AS DECIMAL(10,2)) AS Monthlyloan
    FROM FinancialEngineeringDB.dbo.FinancialTasks
    WHERE TaskID = '7';

/*
   8.  Doubling Time (Simple): t = 1 / r*/

   SELECT 
      CAST ( 1/AnnualRate AS DECIMAL(10,2)) AS DoublingTime
    FROM FinancialEngineeringDB.dbo.FinancialTasks
    WHERE TaskID = '8';
/*
   9.  Effective Annual Rate: EAR = (1 + r/m)^m - 1*/

  SELECT 
      CAST((POWER((1+AnnualRate/TermYears),TermYears) - 1) AS DECIMAL(10,2)) AS AnnualRate
    FROM FinancialEngineeringDB.dbo.FinancialTasks
    WHERE TaskID = '9'

   /*
   10. Semi-Annual Growth: A = P * (1 + r/2)^(2 * n)
*/
SELECT 
      CAST(Principal* POWER((1+ AnnualRate/2), (2*TermYears)) AS DECIMAL(10,2)) AS SemiAnnualGrowth
 FROM FinancialEngineeringDB.dbo.FinancialTasks
 WHERE TaskID = '10'

SELECT * FROM FinancialEngineeringDB.dbo.FinancialTasks;
