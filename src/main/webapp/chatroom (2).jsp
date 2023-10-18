<!DOCTYPE html>
<!-- win + . -->
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/assest/Styles/Home.css">
    <link rel="stylesheet" href="/assest/Styles/COMMON.css">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>

    <title>FreshBYE | ChatRoom</title>
</head>

<body onload="Show()">
    <section class="hole-container-for-chatroom">


        <!-- /* DIV PROFILE NAME STARTS */ -->
        <div class="chatroom-center-main-container">
            <div class="chatroom-profilename-container">
                <div class="chatroom-mini-profilename-container">
                    <h1 class="chatroom-profilename-heading">ChatRoom</h1>
                    <input type="text" class="chatroom-textbox" placeholder="Search Doctors & Friends">
                    <br>
                    <br>
                    <hr class="chatroom-nav-line-1">

                    <div id="card" class="chatroom-div-container">
                        <div class="chatroom-flex-container">
                            <img class="chatroom-profile-profile-photo"
                                src="/assest/images/Images/icons/CHATROOM dp.gif" alt="Profile-Pic">
                            <div class="chatroom-profile-div-container">
                                <h1 class="chatroom-profile-div-heading">Yet To Chat</h1>
                                <p class="chatroom-profile-div-paragraph">waiting</p>
                                <hr class="chatroom-chat-bottom-line">
                            </div>
                        </div>
                    </div>
                    <a href="#"><img class="addIcon" id="AddFriend" src="/assest/images/Images/icons/plus.png"
                            alt="Add_icon">
                    </a>
                </div>



                <!-- chat profile starts here -->

            </div>
            <div id="card1">

                <h2 id="profile">Welcome All!</h2>
                <div id="append"></div>
                <div id="chatdiv">
                    <input type="text" placeholder="chat.." id="chat">
                    <input type="button" value="Send" id="send">
                </div>
            </div>

        </div>

    </section>
    <div id="commentholecontainer">
        <div id="comprof">
            <h2 id="title">
                👤 Add Friends
            </h2>
            <p id="cancel12">
                ×
            </p>
        </div>

        <div id="commentcontainer">

        </div>


    </div>

    <script src="/library/Sidebar.js"></script>
    <script>
        let Add_Friends = document.getElementById("AddFriend");
        let Addlistpromt = document.getElementById("commentholecontainer");
        let Addlistdiv = document.getElementById("commentcontainer");
        let Userlist = JSON.parse(localStorage.getItem("Doctor_category"));
        let comdivpost = document.getElementById("cancel12");

        for (let i = 0; i < Userlist.length; i++) {
            let listholeDiv = document.createElement("div");
            listholeDiv.id = "listhole";
            listholeDiv.setAttribute("class", "ListHoleContainer");

            let profile = document.createElement("img");
            profile.src = Userlist[i]["Profile"];
            profile.setAttribute("class", "Profile")
            listholeDiv.append(profile);

            let UserName = document.createElement("h2");
            UserName.innerHTML = Userlist[i]["Username"];
            UserName.setAttribute("class", "Username");
            listholeDiv.append(UserName);

            Addlistdiv.appendChild(listholeDiv);

        }

        Add_Friends.addEventListener("click", function () {
            Addlistpromt.style.display = "block";
            console.log(Userlist);


        })

        comdivpost.addEventListener("click", function (e) {
            Addlistpromt.style.display = "none";

        })

        // function Show() {
        //     let PostedData = JSON.parse(window.localStorage.getItem("CreateFriend"))
        //     console.log(PostedData);
        //     for (let i = 0; i <= PostedData.length - 1; i++) {

        //         // Create a new div element for the card
        //         let div1 = document.createElement('div');
        //         div1.setAttribute('class', 'chatroom-flex-container');
        //         div1.style.cursor = "pointer";
        //         div1.setAttribute("id", PostedData[i]["id"]);
        //         div1.addEventListener('click', function (event) {

        //             let main = this.closest(".chatroom-flex-container");
        //             console.log(main);
        //             const Id = this.getAttribute("id");
        //             console.log(Id);
        //             localStorage.setItem("Chatid", JSON.stringify(Id));


        //             let chatuser = JSON.parse(localStorage.getItem("Chatid"));
        //             let profile = document.getElementById("profile");
        //             let user = PostedData.find(doc => doc.id == chatuser);
        //             console.log(user);
        //             profile.innerText = user["name"];

        //         })


        //         // Create an image element and add it to the card
        //         let img = document.createElement('img');
        //         img.setAttribute('class', 'chatroom-profile-profile-photo');
        //         img.setAttribute('src', PostedData[i]["imgurl"]);
        //         div1.append(img);
        //         // Create a second div element for the card
        //         let div2 = document.createElement('div');
        //         div2.setAttribute('class', 'chatroom-profile-div-container');
        //         div1.appendChild(div2);

        //         // Create a heading element and add it to the card
        //         let heading1 = document.createElement('h1');
        //         heading1.setAttribute('class', 'chatroom-profile-div-heading');
        //         heading1.innerText = ('headind', PostedData[i]["name"]);
        //         div2.append(heading1);
        //         //here i create a br tag
        //         let hr = document.createElement('hr');
        //         hr.setAttribute('class', 'chatroom-chat-bottom-line');


        //         // Create a paragraph element and add it to the card
        //         let para1 = document.createElement('p');
        //         para1.setAttribute('class', 'chatroom-profile-div-paragraph');
        //         para1.setAttribute('id', 'doctor-color');
        //         para1.innerText = ('Paragraph', PostedData[i]["email"]);
        //         div2.append(para1);


        //         // Append the card to the body of the HTML document
        //         let container = document.getElementById("card");

        //         // container.appendChild(div2);
        //         container.appendChild(div1);
        //         container.appendChild(hr);
        //         console.log(div1);

        //         // Create a new div element for the card

        //     }

        // }

        // // Create a new div element and add it to the card
        // let send = document.getElementById("send");
        // let chatuser = JSON.parse(localStorage.getItem("Chatid"));

        // send.addEventListener("click", function (e) {
        //     let arr = [];
        //     let obj = {};
        //     let chatnot = document.getElementById("chat").value;
        //     obj["chat"] = chatnot;
        //     obj["chat_id"] = chatuser;

        //     if (window.localStorage.getItem("chats") === null) {
        //         arr.push(obj);
        //         window.localStorage.setItem("chats", JSON.stringify(arr));


        //     } else {
        //         let data = JSON.parse(window.localStorage.getItem("chats"));
        //         data.push(obj);
        //         window.localStorage.setItem("chats", JSON.stringify(data));




        //     }


        // })

        // let datanow = JSON.parse(window.localStorage.getItem("chats"));
        // console.log(datanow);
        // for (let i = 0; i < datanow.length; i++) {
        //     let div = document.createElement("div");
        //     div.setAttribute("id", "chat12");
        //     div.innerHTML = datanow[i]["chat"];
        //     let cont = document.getElementById("append")
        //     cont.appendChild(div);


        // }
    </script>

</body>


</html>