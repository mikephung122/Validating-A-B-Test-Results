SELECT 
	u.user_id,
	COUNT(CASE WHEN e.event_name = 'send_message' THEN e.user_id ELSE NULL END) AS metric
FROM (
	  SELECT 
	  	user_id,
      	experiment,
      	experiment_group,
      	occurred_at
      FROM tutorial.yammer_experiments
      WHERE experiment = 'publisher_update'
      ) ex
JOIN tutorial.yammer_users u
	ON u.user_id = ex.user_id
JOIN tutorial.yammer_events e
	ON e.user_id = ex.user_id
	AND e.occurred_at >= ex.occurred_at
	AND e.occurred_at < '2014-07-01'
	AND e.event_type = 'engagement'
WHERE experiment_group = 'test_group'
GROUP BY 1
ORDER BY 2