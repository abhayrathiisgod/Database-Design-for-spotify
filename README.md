# Database-Design-for-spotify
The above data model consists of several entities:

User: Represents a user of the system, including information such as user ID, name, email, password, date of birth, and profile image.

Artist: Represents an artist, including information such as artist ID, name, genre, and image.

Album: Represents an album, including information such as album ID, artist ID, name, release date, and image.

Track: Represents a track, including information such as track ID, album ID, name, duration, and path.

Playlist: Represents a playlist created by a user, including information such as playlist ID, user ID, name, and image.

Playlist_Track: Represents the relationship between a playlist and a track, including information such as playlist ID, track ID, and order.

Follower: Represents the relationship between a user and an artist, where a user can follow multiple artists and an artist can be followed by multiple users.

Like: Represents the relationship between a user and a track, where a user can like multiple tracks, and a track can be liked by multiple users.


<img width="765" alt="image" src="https://github.com/abhayrathiisgod/Database-Design-for-spotify/assets/86717847/7d89fac7-dc82-44a2-ab75-dada23e2959a">
