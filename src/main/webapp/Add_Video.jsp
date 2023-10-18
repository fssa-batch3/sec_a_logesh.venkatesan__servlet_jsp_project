<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/assest/Styles/New_Post.css">
    <title>Post Video</title>
</head>


<body>
    <div class="containerOfHole">

        <form class="containerOfMini" id="form">
            <h1>Add<span> Post</span></h1>
            <input class="input" id="fname" placeholder="Video Url" type="url" required />

            <input class="input" id="mname" placeholder="Video Title With '#'" type="text" />
            <input class="input" id="Lname" placeholder="Description about video" type="textarea" /><br>

            <button type="submit" class="btn">Post Now</button>
        </form>
    </div>
    <script>

        // here create an empty array
        let arr = [];
        let form = document.getElementById("form"); // get the form element
        form.addEventListener("submit", function (event) {
            // add an event listener to the form element
            event.preventDefault();
            // prevent the default form submission behavior
            let postdata = {};
            // create an empty object
            // get the value of the input fields
            const Video_URL = document.getElementById("fname").value;
            const Video_title = document.getElementById("mname").value;
            const Video_Description = document.getElementById("Lname").value;

            // generate a UNIQUE IDENTITY
            let id = self.crypto.randomUUID();

            // add Value to object
            postdata["Video_URL"] = Video_URL;
            postdata["Video_title"] = Video_title;
            postdata["Video_Description"] = Video_Description;
            postdata.id = id;

            // below code I check if PostedData is null in local storage and I had write some conditions;
            try {
                if (window.localStorage.getItem("PostData") === null) {
                    arr.push(postdata);
                    window.localStorage.setItem("PostData", JSON.stringify(arr));
                } else {
                    let local = window.localStorage.getItem("PostData");
                    // get value from local storage
                    let json = JSON.parse(local);
                    // parse PostedData into json object
                    json.push(postdata);
                    // push postdata object into json array
                    window.localStorage.setItem("PostData", JSON.stringify(json));
                    // set PostedData in local storage as stringified json array
                    alert("Successfully posted");
                    // alert user that data has been posted successfully
                }
                window.location.href = "/assest/pages/Byevideo.html";
                // redirect user to Home.html page after successful posting of data
            } catch (error) {
                console.error(error);
                // log error message to console if there is an error while posting data
            }
        });
    </script>
</body>

</html>