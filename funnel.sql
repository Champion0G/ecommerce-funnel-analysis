SELECT ROUND(AVG(total_usd), 2) AS avg_order_value
FROM orders;
SELECT COUNT(DISTINCT session_id) AS abandoned_sessions
FROM events
WHERE event_type = 'add_to_cart'
AND session_id NOT IN (
    SELECT session_id 
    FROM events 
    WHERE event_type = 'purchase'
);

SELECT 
  s.source,

  COUNT(DISTINCT CASE WHEN e.event_type = 'page_view' THEN e.session_id END) AS visits,

  COUNT(DISTINCT CASE WHEN e.event_type = 'add_to_cart' THEN e.session_id END) AS add_to_cart,

  COUNT(DISTINCT CASE WHEN e.event_type = 'purchase' THEN e.session_id END) AS purchases

FROM events e
JOIN sessions s 
ON e.session_id = s.session_id

GROUP BY s.source;

SELECT 
  s.country,

  COUNT(DISTINCT CASE WHEN e.event_type = 'page_view' THEN e.session_id END) AS visits,

  COUNT(DISTINCT CASE WHEN e.event_type = 'purchase' THEN e.session_id END) AS purchases,

  ROUND(
    COUNT(DISTINCT CASE WHEN e.event_type = 'purchase' THEN e.session_id END) * 1.0 /
    COUNT(DISTINCT CASE WHEN e.event_type = 'page_view' THEN e.session_id END),
    2
  ) AS conversion_rate

FROM events e
JOIN sessions s 
ON e.session_id = s.session_id

GROUP BY s.country
ORDER BY conversion_rate DESC;



select * from orders where device = "desktop" ;



SELECT 
  s.country,

  COUNT(DISTINCT CASE WHEN e.event_type = 'page_view' THEN e.session_id END) AS visits,

  COUNT(DISTINCT CASE WHEN e.event_type = 'purchase' THEN e.session_id END) AS purchases,

  ROUND(
    COUNT(DISTINCT CASE WHEN e.event_type = 'purchase' THEN e.session_id END) * 1.0 /
    COUNT(DISTINCT CASE WHEN e.event_type = 'page_view' THEN e.session_id END),
    2
  ) AS conversion_rate

FROM events e
JOIN sessions s 
ON e.session_id = s.session_id

GROUP BY s.country
ORDER BY conversion_rate desc  ;