select c.order_number,s.start_time, YEAR(s.start_time) AS Year, MONTH(s.start_time)AS Month, WEEKOFYEAR(s.start_time) AS WeekOfYear,
  channels.name as channel_name, s.landing_page, ct.utm_medium, ct.utm_source, ct.utm_campaign, 
  ct.inferred_utm_medium, ct.inferred_utm_source, ct.inferred_utm_campaign, s.attributed_revenue

from 
clickstreams c,
sessions s,
session_entries se,
channel_touchpoints ct,
channels
where
s.clickstream_id = c.id
and se.session_id = s.id
and ct.session_id =  s.id
and channels.id = ct.channel_id
and c.type='ClickstreamStitchedMultipass'
AND channels.name = 'paid search'
AND s.attributed_revenue NOT IN (0)
group by c.id, s.id