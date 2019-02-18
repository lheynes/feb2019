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



						/* How to count and list SMS volumes based on character length


SELECT SUBSTR(gatewayId,1,1) as `Clickatell or Panacea`, SUM(ceil(length(content) / 153)) as `SMS count`

FROM PROVATO_TRANSACTION_LOG

WHERE timestamp between '2018-11-01' AND '2018-12-01'

AND `gatewayId` != 'PanaceaInbound'

AND `destination` IS NOT NULL

GROUP BY SUBSTR(gatewayId,1,1); 