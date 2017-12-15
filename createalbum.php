<?php
require_once('config.php');
if(isset($_POST["cmd"])){
    $album = filter_input(INPUT_POST, 'album', FILTER_SANITIZE_STRING) or die("Invalid album name");
    $artist = filter_input(INPUT_GET, 'artistid', FILTER_VALIDATE_INT) or die("Invalid artist id");
    
    $sql = 'INSERT INTO album (albumName, artistId) VALUES (?, ?)';
    $stmt = $link->prepare($sql);
    $stmt->bind_param('si', $album, $artist);
    $stmt->execute();
    
    if($stmt->affected_rows > 0){
        echo 'Album has now been created';
    } else {
        echo 'Album could not be created';
    }
}
?>
<fieldset>
    <legend>Create album</legend>
    <form action="<?=$_SERVER["REQUEST_URI"]?>" method="post">
        <input type="text" name="album" placeholder="Album name"><br>
        <input type="submit" name="cmd" value="Create">
    </form>
</fieldset>