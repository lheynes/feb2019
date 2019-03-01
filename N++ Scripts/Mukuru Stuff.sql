						/* How to search for a specific SMS in the PROVATO DB */

SELECT messageId, destination, content
FROM PROVATO_TRANSACTION_LOG
WHERE timestamp > '2019-01-06'
AND content LIKE '%92166173%'
LIMIT 10;


						/* How to check how SMS volumes for a specific period in PROVATO DB */

SELECT SUBSTR(gatewayId,1,1) as `Clickatell or Panacea`, count(*) as `SMS count`
FROM PROVATO_TRANSACTION_LOG
WHERE timestamp > '2019-01-01'
AND timestamp < '2019-02-01'
GROUP BY SUBSTR(gatewayId,1,1);


C    1243

P    3408750



						/* How to count and list SMS volumes where SMS length is of a specific number of characters


SELECT SUBSTR(gatewayId,1,1) as `Clickatell or Panacea`, SUM(ceil(length(content) / 153)) as `SMS count`
FROM PROVATO_TRANSACTION_LOG
WHERE timestamp between '2018-11-01' AND '2018-12-01'
AND `gatewayId` != 'PanaceaInbound'
AND `destination` IS NOT NULL
GROUP BY SUBSTR(gatewayId,1,1); 


SELECT SUBSTR(gatewayId,1,1) as `Clickatell or Panacea`, SUM(CASE WHEN length(content) > 160 THEN ceil(length(content) / 153) ELSE 1 END) as `SMS count`, count(*)
FROM PROVATO_TRANSACTION_LOG
WHERE timestamp between '2018-11-01' AND '2018-12-01'
AND `gatewayId` != 'PanaceaInbound'
AND `destination` IS NOT NULL
GROUP BY SUBSTR(gatewayId,1,1);


							#Run SARB monthly transaction report for Madelein
							--Get the correct date range from Madelein
							--Ensure that the results are exported to file (Ctrl + Shift + F)
							As this will prevent the large data from crashing the MSSMS GUI.
							
DECLARE    @return_value int
EXEC    @return_value = [dbo].[SarbMonthlyDataExtract]
        @startdate = '2018-12-01',
        @enddate = '2018-12-31' 


							#Update Mukuru Card expiry date so that Card can be active again which will allow the
							VAS team to move the customers funds.

*Log into Mukuru-ICFX-PRD-SQLServer
*Query the Card table
UPDATE Card SET ExpiryYear = 2019 
WHERE CardNumber = '9dTN1fLO24V/rwxvrH5+r1f2XJKT8A7F'