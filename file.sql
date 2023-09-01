/* Users table */
CREATE TABLE Users(
  User_ID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Email VARCHAR(50) NOT NULL UNIQUE,
  Password VARCHAR(50) NOT NULL,
  Date_of_Birth DATE,
  Profile_Image Blob
);
/* Artists Table */
CREATE TABLE Albums (
  Album_ID INT AUTO_INCREMENT PRIMARY KEY,
  Artist_ID INT,
  Name VARCHAR(50) NOT NULL,
  Release_Date DATE,
  Image VARCHAR(255),
  FOREIGN KEY (Artist_ID) REFERENCES Artists(Artist_ID)
);
/* Tracks Table */
CREATE TABLE Tracks (
  Track_ID INT AUTO_INCREMENT PRIMARY KEY,
  Album_ID INT,
  Name VARCHAR(50) NOT NULL,
  Duration INT NOT NULL,
  Path VARCHAR(255),
  FOREIGN KEY (Album_ID) REFERENCES Albums(Album_ID)
);
/* Playlist Table */
CREATE TABLE Playlists (
  Playlist_ID INT AUTO_INCREMENT PRIMARY KEY,
  User_ID INT,
  Name VARCHAR(50) NOT NULL,
  Image Blob,
  FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);
/* Playlist_Tracks Table */
CREATE TABLE Playlist_Tracks (
  Playlist_ID INT,
  Track_ID INT,
  `Order` INT,
  PRIMARY KEY (Playlist_ID, Track_ID),
  FOREIGN KEY (Playlist_ID) REFERENCES Playlists(Playlist_ID),
  FOREIGN KEY (Track_ID) REFERENCES Tracks(Track_ID)
);
/* Followers Table */
CREATE TABLE Followers (
  User_ID INT,
  Artist_ID INT,
  PRIMARY KEY (User_ID, Artist_ID),
  FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
  FOREIGN KEY (Artist_ID) REFERENCES Artists(Artist_ID)
);
/* Likes table */
CREATE TABLE Likes (
  User_ID INT,
  Track_ID INT,
  Like_Date_Time DATETIME,
  PRIMARY KEY (User_ID, Track_ID),
  FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
  FOREIGN KEY (Track_ID) REFERENCES Tracks(Track_ID)
);

