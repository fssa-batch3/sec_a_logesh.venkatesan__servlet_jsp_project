<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assest/Styles/COMMON.css">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="./assest/Styles/Home.css">
    <link rel="stylesheet" href="./assest/Styles/notify.css">
    <title>FreshBYE | ChatRoom</title>
</head>

<body>
    <!-- chat profile starts here -->
    <div class="chatroom-chatside-div-container-2">
        <div id="container" class="Videos-list-scrolls">

            <video class="video-inner-contain-div" autoplay loop playsinline>
                <source src="./assest/images/Videos/Untitled design (1).mp4">
            </video>
            <video class="video-inner-contain-div" autoplay loop playsinline>
                <source src="./assest/images/Videos/Untitled design (2).mp4">
            </video>
            <video class="video-inner-contain-div" autoplay loop playsinline>
                <source src="./assest/images/Videos/Untitled design (3).mp4">
            </video>
            <video class="video-inner-contain-div" autoplay loop playsinline>
                <source src="./assest/images/Videos/Untitled design (4).mp4">
            </video>
        </div>
    </div>
    <div class="Add_post">
        <a href="./assest/pages/Add_Video.html"><button class="post">Add Video</button></a>
    </div> 
    <script src="./library/Sidebar.js"></script>
    <script src="./library/notify.js"></script>
    <script>
        Notify.success("Videos Loading...")
        let data = JSON.parse(localStorage.getItem("PostData"));
        console.log(data);
        for (let i = 0; i < data.length; i++) {
            let Video = document.createElement("iframe");
            Video.src = data[i]["Video_URL"];
            Video.frameBorder = 0;
            Video.width = 560;
            Video.height = 315;
            Video.allow = "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture";
            Video.allowFullscreen = true;
            let cont = document.getElementById("container");
            cont.appendChild(Video);
        }

    </script>
</body>

</html>