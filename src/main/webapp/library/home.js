let PostedData = JSON.parse(localStorage.getItem("PostedData"));
let commentcontain = document.getElementById("commentcontainer");
let containning = document.getElementById("commentholecontainer");
let sentContent = document.getElementById("sent");
let postcontent = document.getElementById("contentpost");
let PostId = JSON.parse(window.localStorage.getItem("PostId"));
let comdivpost = document.getElementById("cancel12");
let ContentArray = JSON.parse(localStorage.getItem("ContentArray")) || [];
let userData = JSON.parse(localStorage.getItem("Doctor_category"));
let userId = localStorage.getItem("Current_User_id");


// let Name = JSON.parse(localStorage.getItem("Doctor's_login"));
// let name = PostedData.find()
// function getpost() {
let countclicked = 0;

for (let i = PostedData.length - 1; i >= 0; i--) {

    let UserID = PostedData[i]["User_ID"];
    let Userobj = userData.find(e => e.Email == UserID);
    console.log(UserID, Userobj);
    let cardData = document.getElementById("Home");

    let parent = document.createElement("div");
    parent.setAttribute("id", "post-section");
    cardData.append(parent);


    let card = document.createElement("div");
    card.setAttribute("id", "solo-post");

    parent.append(card)


    let card1 = document.createElement("div");
    card1.setAttribute("id", "profile-post");

    card.append(card1);


    let img = document.createElement("img");
    img.setAttribute("src", Userobj["Profile"]);
    card1.append(img);


    let Name = document.createElement("h2");
    Name.setAttribute("id", "profile-name");
    Name.innerText = Userobj["Username"];
    card1.append(Name);


    let Post_img = document.createElement("img");
    Post_img.setAttribute("class", "profile-post");
    Post_img.src = PostedData[i]["Video_URL"];
    card.append(Post_img);

    let card2 = document.createElement("div");
    card2.setAttribute("id", "profile-post");



    let comment = document.createElement("img");

    comment.setAttribute("class", "comment");
    comment.title = "Comment";
    comment.setAttribute("data-id", PostedData[i]["id"]);
    comment.setAttribute("alt", "comment");
    comment.src = "/assest/images/Images/Banner Image/comment 12.png";
    comment.addEventListener("click", reload);


    //     //for hole containning div with input and sent button click
    // })
    card2.appendChild(comment);



    // Create the like button
    let likeButton = document.createElement("img");
    likeButton.className = "like-button";
    likeButton.src = "/assest/images/icons8-heart-64.png";
    likeButton.id = PostedData[i]["id"];

    // Add event listeners to the buttons

    // likeButton.addEventListener("click", function () {
    //     const Id = this.getAttribute("id");
    //     let likeTotArr = JSON.parse(localStorage.getItem("PostLikeS")) || [];
    //     console.log(Id);
    //     let LikesObj = {
    //         PostID: Id,
    //         UserID: userId
    //     }
    //     console.log(likeTotArr);
    //     console.log(LikesObj);

    //     if (likeTotArr.length < 1) {
    //         likeTotArr.push(LikesObj);
    //         console.log(likeTotArr);
    //         window.localStorage.setItem("PostLikeS", JSON.stringify(likeTotArr));

    //     } else {
    //         const Id = this.getAttribute("id");

    //         let thisLikeArr = likeTotArr.filter(e => e.PostID === Id);
    //         console.log(thisLikeArr);
    //         for (let i = 0; i < thisLikeArr.length; i++) {
    //             if (thisLikeArr[i]["UserID"] != userId) {
    //                 let likeTotArr = JSON.parse(localStorage.getItem("PostLikeS")) || [];

    //                 likeTotArr.push(LikesObj);
    //                 console.log(likeTotArr);
    //                 window.localStorage.setItem("PostLikeS", JSON.stringify(likeTotArr));
    //                 likeButton.src = "/assest/images/icons8-heart-suit-65.png";
    //             } else {
    //                 alert("User already put Like!");

    //             }
    //         }

    //     }
    // })

    card2.appendChild(likeButton);
    // Create the dislike button


    let edit = document.createElement("img");
    edit.setAttribute("class", "Post");
    edit.title = "Edit";
    edit.setAttribute("id", PostedData[i]["id"]);
    edit.src = "/assest/images/Images/Banner Image/Edit.png";
    edit.setAttribute("alt", "Edit");
    if (UserID == userId) {
        edit.style.display = "block";
        edit.addEventListener("click", function () {
            let main = this.closest("#post-section");
            console.log(main);
            const Id = this.getAttribute("id");
            console.log(Id);
            if (confirm("Are you sure to Edit?")) {
                localStorage.setItem("Post", JSON.stringify(Id));
                window.location.href = "./EditPost.html";
            }
        });
    } else {
        edit.style.display = "none";

    }
    card2.append(edit);


    let del = document.createElement("img");
    del.setAttribute("class", "cancel");
    del.title = "Delete";
    del.setAttribute("id", PostedData[i]["id"]);
    del.setAttribute("alt", "delete");
    del.src = "/assest/images/Images/Banner Image/Delete.png";
    if (UserID == userId) {
        del.addEventListener("click", function () {
            if (confirm("Are you sure?")) {
                del.style.display = "block";
                let jsonData = JSON.parse(localStorage.getItem("PostedData"));
                let card = this.closest("#post-section");
                const Id = this.getAttribute("id");
                console.log(Id);
                let indexOf = jsonData.findIndex(obj => obj.id === Id);
                console.log(indexOf);

                jsonData.splice(indexOf, 1);
                localStorage.setItem("PostedData", JSON.stringify(jsonData));
                // // Redirect to Doctorslist page
                window.location.href = "./Home.html";
            }
        })
    } else {
        del.style.display = "none";
    }
    card2.append(del);

    card.append(card2);

    let Title = document.createElement("h2");
    Title.setAttribute("id", "discription_title");
    Title.innerText = PostedData[i]["Video_title"];
    card.append(Title);


    let Description = document.createElement("p");
    Description.setAttribute("id", "description");
    Description.innerText = "@" + PostedData[i]["Video_Description"];
    card.append(Description);

};
// }
// getpost()
function reload() {
    // let comment = event.target;
    // let postid = comment.getAttribute("id");
    let postid = this.dataset.id;
    console.log(postid);
    window.localStorage.setItem("PostId", JSON.stringify(postid));


    re()

    // window.localStorage.setItem("PostId", JSON.stringify(PostId));
    // countclicked++;
    // console.log(countclicked);
    // if (countclicked % 2 !== 0) {
    containning.style.display = "block";
    comdivpost.addEventListener("click", function (e) {
        containning.style.display = "none";

    })

    // }
    // else {
    //     containning.style.display = "none";
    // }
    // window.location.reload();
}


function re() {
    let Postid = JSON.parse(window.localStorage.getItem("PostId"));
    let currectPostArray = ContentArray.filter(e => e.PostId === Postid);
    console.log(currectPostArray);
    commentcontain.innerHTML = "";

    for (let i = 0; i < currectPostArray.length; i++) {


        let userpostid = currectPostArray[i]["userId"];
        let currentuser = userData.find(e => e.Email === userpostid);
        console.log(currentuser)


        // console.log(userpostid);
        let contentdiv = document.createElement("div");
        contentdiv.setAttribute("class", "commentdiv");
        contentdiv.addEventListener("mouseover", function () {
            deleteIcon.style.display = "block";
        });
        contentdiv.addEventListener("mouseout", function () {
            deleteIcon.style.display = "none";
        });

        let profilediv = document.createElement("div");
        profilediv.setAttribute("class", "profiled");

        let profile = document.createElement("img");
        profile.setAttribute("class", "profilecomment");
        profile.src = currentuser["Profile"];// need to give profile from that object get by filter
        profilediv.appendChild(profile);

        let username = document.createElement("h2");
        username.innerHTML = currentuser["Username"];
        username.className = "UsernameProfile";
        profilediv.appendChild(username);


        let deleteIcon = document.createElement("p");
        deleteIcon.innerHTML = "❌";
        deleteIcon.className = "Deletecomment";
        deleteIcon.id = currectPostArray[i]["commentId"];
        deleteIcon.style.display = "none";
        // if (userpostid == userId) {
        //     deleteIcon.addEventListener("click", function () {
        //         if (confirm("Are you sure?")) {
        //             deleteIcon.style.display = "block";
        //             let jsonData = JSON.parse(localStorage.getItem("ContentArray"));
        //             let card = this.closest(".commentdiv");
        //             const Id = this.getAttribute("id");
        //             console.log(Id);
        //             let indexOf = jsonData.findIndex(obj => obj.id === Id);
        //             console.log(indexOf);

        //             jsonData.splice(indexOf, 1);
        //             localStorage.setItem("ContentArray", JSON.stringify(jsonData));
        //             // // Redirect to Doctorslist page
        //             window.location.href = "./Home.html";
        //         }
        //     })
        // } else {
        //     del.style.display = "none";
        // }



        profilediv.appendChild(deleteIcon);
        contentdiv.append(profilediv);

        let commentchat = document.createElement("p");
        commentchat.className = "commentparagraph";
        commentchat.innerHTML = currectPostArray[i]["CommentContent"];
        contentdiv.append(commentchat);
        commentcontain.append(contentdiv);


    }
}
// re()

// let commentbutton = document.querySelector(".comment");
// commentbutton.addEventListener("click", () => {
//     window.location.reload();
// })
// console.log(commentbutton);

// getpost();

sentContent.addEventListener("click", function () {
    let contentvalue = postcontent.value;
    console.log(contentvalue);
    let PostiD = JSON.parse(window.localStorage.getItem("PostId"));

    let id = "Fbye" + Date.now();
    let Commentobj = {
        commentId: id,
        userId: userId,
        PostId: PostiD,
        CommentContent: contentvalue
    }
    ContentArray.push(Commentobj);
    console.table("Key", ContentArray);
    window.localStorage.setItem("ContentArray", JSON.stringify(ContentArray));
    postcontent.value = "";

    // getpost();
    // reload();
    re();

    // location.reload();
    // containning.style.display = "block";
});

let likeButton = document.querySelectorAll(".like-button");

likeButton.forEach(function (buttonEach) {
    buttonEach.addEventListener("click", function () {
        let id = this.getAttribute("id");
        console.log(id)
        console.log(userId)

        let PostLikeS = JSON.parse(localStorage.getItem("PostLikeS")) || [];

        let exist = PostLikeS.some((data) => data.postId === id && data.userId === userId);
        console.log(exist)

        if (!exist) {
            PostLikeS.push({
                "userId": userId,
                "postId": id
            })
            this.src = "/assest/images/icons8-heart-suit-65.png";
        }
        else {
            this.src = "/assest/images/icons8-heart-suit-65.png";

            alert("You already liked the post")
        }

        console.log(PostLikeS)
        localStorage.setItem("PostLikeS", JSON.stringify(PostLikeS));

    })
})


