 SELECT 
    DATE_TRUNC('MONTH',u.activated_at) AS month_activated,
    COUNT(CASE WHEN e.experiment_group = 'control_group' THEN 1 ELSE NULL END) AS control_users,
    COUNT(CASE WHEN e.experiment_group = 'test_group' THEN 1 ELSE NULL END) AS test_users
FROM tutorial.yammer_experiments e
JOIN tutorial.yammer_users u
	ON u.user_id = e.user_id
WHERE experiment = 'publisher_update'
GROUP BY 1
ORDER BY 1