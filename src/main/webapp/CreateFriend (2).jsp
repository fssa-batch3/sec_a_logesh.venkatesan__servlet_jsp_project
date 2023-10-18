<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/assest/Styles/CommonProfile.css">
    <title>Add Friends</title>
</head>

<body class="main-parent">
    <div class="containerOfHole">

        <form class="containerOfMini" id="form">
            <h1>Add<span>Friend</span></h1>
            <input class="input" id="imgurl" placeholder="Profile Url" type="url" required />
            <input class="input" id="name" placeholder="Username" type="text" pattern="[A-Za-z]{3,32}" required />
            <input class="input" id="email" placeholder="Key Line About Your Friend" type="text" required />
            <input class="input" id="phnumber" placeholder="Phone Number" type="number" pattern="[0-9]{1,10}"
                required />
            <button type="submit" class="btn">Add Friends</button>
        </form>
    </div>
    <script>
        let arr = [];
        let form = document.getElementById("form");
        form.addEventListener("submit", function (event) {
            event.preventDefault();
            let Friend = {};
            let URL = document.getElementById("imgurl").value;
            console.log(URL)
            let Email = document.getElementById("email").value;
            console.log(Email);
            let Name = document.getElementById("name").value;
            console.log(Name);
            let Phnumber = document.getElementById("phnumber").value
            console.log(Phnumber);
            let id = self.crypto.randomUUID();
            console.log(id);

            Friend["imgurl"] = URL;
            Friend["email"] = Email;
            Friend["name"] = Name;
            Friend["phnumber"] = Phnumber;
            Friend.id = id;
            console.log(Friend);



            try {
                if (window.localStorage.getItem("CreateFriend") === null) {
                    arr.push(Friend);
                    window.localStorage.setItem("CreateFriend", JSON.stringify(arr));

                    alert("Successfully created");
                } else {
                    let local = window.localStorage.getItem("CreateFriend");
                    let json = JSON.parse(local);
                    json.push(Friend);
                    window.localStorage.setItem("CreateFriend", JSON.stringify(json));
                    alert("Successfully created");
                }
                window.location.href = "/assest/pages/chatroom (2).html";
            } catch (error) {
                console.error(error);
            }  // window.location.href = "./Doctorslist.html"
        })




    </script>
</body>


</html>