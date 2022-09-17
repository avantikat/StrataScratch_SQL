


Find how many times each artist appeared on the Spotify ranking list
Output the artist name along with the corresponding number of occurrences.
Order records by the number of occurrences in descending order.


SQL QUERY FOR ABOVE STATEMENT:

select artist, count(position) 
from spotify_worldwide_daily_song_ranking
Group by artist
ORDER BY count(position) DESC;
