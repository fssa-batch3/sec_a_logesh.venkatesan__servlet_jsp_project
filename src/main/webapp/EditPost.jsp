<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/assest/Styles/New_Post.css">
    <title>Edit Post</title>
</head>

<body>
    <div class="containerOfHole">
        <div id="imgPrev">
            <img src="/assest/images/Images/Banner Image/post_edit.webp" alt="preview" id="prev">
        </div>
        <form class="containerOfMini" id="form">
            <h1>Edit<span> Post</span></h1>
            <div id="frm">
                <input class="input" id="fname" placeholder="Photo Url" type="url" required />

                <input class="input" id="mname" placeholder="Image  Title With '#'" type="text" />
                <input class="input" id="Lname" placeholder="Description about Given Image" type="textarea" /><br>
            </div>
            <button type="submit" onclick="update()" id="btn">Edit Now</button>
        </form>
    </div>

    <script src="/library/notify.js"></script>
  
     
</body>

</html>