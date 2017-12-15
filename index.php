<fieldset>
    <legend>Artists</legend>
<?php
require_once('config.php');
    $hentartister = 'SELECT id, artistName from artist';
    $stmt = $link->prepare($hentartister);
    $stmt->execute();
    $stmt->bind_result($artistid, $artistname);
    
    while($stmt->fetch()){
        echo '<a href="createalbum.php?artistid=' . $artistid . '">' . $artistname . '</a><br>';
    }
?>
    <br>
    <a href="albums.php">View albums</a>
</fieldset>