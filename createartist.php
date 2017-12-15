<?php
require_once('config.php');
if(isset($_POST["cmd"])){
    $artist = filter_input(INPUT_POST, 'artist', FILTER_SANITIZE_STRING) or die("Invalid artist name");
    
    $sql = 'INSERT INTO artist (artistName) VALUES (?)';
    $stmt = $link->prepare($sql);
    $stmt->bind_param('s', $artist);
    $stmt->execute();
    
    if($stmt->affected_rows > 0){
        echo 'Artist has now been created';
    } else {
        echo 'Artist could not be created';
    }
}
?>
<fieldset>
    <legend>Create artist</legend>
    <form action="<?=$_SERVER["PHP_SELF"]?>" method="post">
        <input type="text" name="artist" placeholder="Artist name"><br>
        <input type="submit" name="cmd" value="Create">
    </form>
</fieldset>