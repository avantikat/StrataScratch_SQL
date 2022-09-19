
Find all posts which were reacted to with a heart. For such posts output all columns from facebook_posts table.


SQL  QUERY FOR ABOVE STATEMENT:

select DISTINCT(fp.post_id),fp.poster,fp.post_text,fp.post_keywords,fp.post_date
from facebook_posts AS fp inner join
facebook_reactions AS fr ON fp.post_id = fr.post_id
where fr.reaction = 'heart';
