SELECT 
  DISTINCT a.device_type,
  COUNT(CASE WHEN a.experiment_group = 'control_group' THEN 1 ELSE NULL END) AS control_users,
  COUNT(CASE WHEN a.experiment_group = 'test_group' THEN 1 ELSE NULL END) AS test_users
FROM (
      SELECT 
        e.experiment_group,
        CASE
          WHEN e.device IN ('acer aspire desktop', 'acer aspire notebook', 'asus chromebook', 'dell inspiron desktop', 'dell inspiron notebook', 
            'hp pavilion desktop', 'lenovo thinkpad', 'macbook air', 'macbook pro', 'mac mini') THEN 'computer'
          WHEN e.device IN ('amazon fire phone', 'htc one', 'iphone 4s', 'iphone 5', 'iphone 5s', 'nexus 5', 'nokia lumia 635',
            'samsung galaxy note', 'samsung galaxy s4') THEN 'mobile'
          WHEN e.device IN ('ipad air', 'ipad mini', 'kindle fire', 'nexus 10', 'nexus 7', 'samsumg galaxy tablet', 'windows surface') THEN 'tablet'
          END AS device_type
FROM tutorial.yammer_experiments e
JOIN tutorial.yammer_users u
  ON u.user_id = e.user_id
WHERE experiment = 'publisher_update'
ORDER BY 1) AS a
GROUP BY 1