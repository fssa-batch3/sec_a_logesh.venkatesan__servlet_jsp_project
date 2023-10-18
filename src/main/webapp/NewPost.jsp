<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assest/Styles/New_Post.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assest/Styles/notify.css">
    <title>New Post</title>
</head>


<body>
    <div class="containerOfHole">
        <div id="imgPrev">
            <img src="<%=request.getContextPath()%>/assest/images/Images/Banner Image/Post_prev.png" alt="preview" id="prev">
        </div>
        <form action="<%=request.getContextPath()%>/createPost" class="containerOfMini" id="form" method="post">
            <h1>Add<span> Post</span></h1>
            <div id="frm">
                <input class="input" id="fname" name="postImgURL" placeholder="Photo Url" type="url" required />

                <input class="input" id="mname" name="postTitle" placeholder="Image  Title With '#'" type="text" />
                <input class="input" id="Lname" name="postDescription" placeholder="Description about Given Image" type="textarea" /><br>
            </div>
            <button type="submit" id="btn">Post Now</button>
        </form>

    </div>
    <script src="/library/notify.js"></script>
    <script>
        let arr = [];
        let form = document.getElementById("btn");
        const Video_URL = document.getElementById("fname");
        const Image_prev = document.getElementById("prev");

        Video_URL.addEventListener("change", Preview);

        function Preview() {
            Image_prev.src = Video_URL.value;
        }
       
		/**
        form.addEventListener("click", function (event) {
            event.preventDefault();
          
            let postdata = {};
            let Video_URL = document.getElementById("fname").value;

            let Video_title = document.getElementById("mname").value;
            let Video_Description = document.getElementById("Lname").value;

         

            if (Video_URL.length == 0) {
                Notify.error("Post Url Input Need Some Data in it");
                return;
            } else if (Video_title.length === 0) {
                Notify.error("Title Input Need  Some Data in it");
                return;
            } else if (Video_Description.length == 0) {
                Notify.error("Description should be Contains Some data");
                return;
            }
            
            
            });
		**/
    </script>
</body>

</html>