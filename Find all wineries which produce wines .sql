Find all wineries which produce wines by possessing aromas of plum, cherry, rose, or hazelnut.
To make it more simple, look only for singular form of the mentioned aromas.
Output unique winery values only.

SQL QUERY FOR ABOVE SATEMENT:
select distinct winery
FROM winemag_p1
where lower(description) REGEXP '(plum|rose|cherry|hazelnut)([^a-z])'
