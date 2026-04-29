/* PRACTICAL ASSESSMENT QUESTIONS AND FORMULAS:*/

  /* 1.  Simple Interest: I = P * r * t */

  SELECT TOP 1 
    CAST(Principal * AnnualRate * TermYears as DECIMAL(10,2)) as SimpleInterest
  FROM FinancialEngineeringDB.dbo.FinancialTasks
 
 SELECT * FROM dbo.FinancialTasks

  SELECT 
    CAST(4500.0000 * 0.0700 * 5 AS DECIMAL(10,2)) as SimpleInterest
  FROM FinancialEngineeringDB.dbo.FinancialTasks

/* 2.  Annual Compound: A = P * (1 + r)^n */

  SELECT TOP 1
    CAST(Principal * Power(1 + AnnualRate, TermYears) as DECIMAL(10,2)) AS AnnualCompound
  FROM FinancialEngineeringDB.dbo.FinancialTasks

    SELECT
    CAST(12000 * Power(1 + 0.065, 8) AS DECIMAL(10,2)) AS AnnualCompound
  FROM FinancialEngineeringDB.dbo.FinancialTasks

  /* 3.  Hire Purchase Installment: Monthly = [P * (1 + r * t)] / 36*/
  
  SELECT 
    CAST(18700 * (1 + 0.11 *3)  /36 AS DECIMAL (10,2)) AS MonthlyInstallment
FROM FinancialEngineeringDB.dbo.FinancialTasks

   /*4.  Inflation Projection: A = P * (1 + i)^n
   5.  Reducing Balance Depreciation: A = P * (1 - i)^n
   6.  Quarterly Compound: A = P * (1 + r/4)^(4 * n)
   7.  Monthly Loan Accrual: I = [P * (1 + r/12)^12] - P
   8.  Doubling Time (Simple): t = 1 / r
   9.  Effective Annual Rate: EAR = (1 + r/m)^m - 1
   10. Semi-Annual Growth: A = P * (1 + r/2)^(2 * n)
*/