<fieldset>
    <legend>Albums</legend>
<?php
require_once('config.php');
    $hentartister = 'SELECT artist.id AS artistid, artist.artistName AS artistname, album.albumName AS artistalbum, album.artistId AS artistidalbum FROM artist JOIN album ON artist.id = album.artistId ORDER BY artist.id ASC';
    $stmt = $link->prepare($hentartister);
    $stmt->execute();
    $stmt->bind_result($artistid, $artistname, $albumname, $albumartistid);
    
    while($stmt->fetch()){
        echo $artistname . ' - ' . $albumname . '<br>';
    }
?>
</fieldset>