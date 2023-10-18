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
    <script>
        let post = JSON.parse(localStorage.getItem("Post"));
        console.log(post);
        let datas = JSON.parse(localStorage.getItem("PostedData"));
        console.log(datas);

        let UserData = datas.find(e => e["id"] == post);
        console.log(UserData);

        if (!UserData) {
            console.error(`No data found for post id: ${post}`);
        } else {
            document.getElementById("fname").value = UserData["Video_URL"];
            document.getElementById("mname").value = UserData["Video_title"];
            document.getElementById("Lname").value = UserData["Video_Description"];
        }


        function update() {
            event.preventDefault();
            let editedUserName = document.getElementById("fname").value;
            let editedProfile = document.getElementById("mname").value;
            let editedNumber = document.getElementById("Lname").value;

            // Check to make sure that the user has entered a value for each of the input fields.
            if (editedUserName.length == 0) {
                Notify.error("Post Url Input Need Some Data in it");
                return;
            } else if (editedProfile.length === 0) {
                Notify.error("Title Input Need  Some Data in it");
                return;
            } else if (editedNumber.length == 0) {
                Notify.error("Description should be Contains Some data");
                return;
            }

            // Update the Doctor_data object directly
            UserData["Video_URL"] = editedUserName;
            UserData["Video_title"] = editedProfile;
            UserData["Video_Description"] = editedNumber;

            // update the Doctor_category array in local storage
            localStorage.setItem("PostedData", JSON.stringify(datas));
            Notify.success("Update successful!");
            location.href = "./Home.html";
        }

            // update the Doctor_category array in local storage


            // if (document.getElementById("URL").value.length == 0) {
            //     Notify.error("Post Url Input Need Some Data in it");
            // } else if (document.getElementById("Title").value.length === 0) {
            //     Notify.error("Title Input Need  Some Data in it");

            // } else if (document.getElementById("Desc").value.length == 0) {
            //     Notify.error("Description should be Contains Some data");
            // } else {

            // }






    </script>
</body>

</html>