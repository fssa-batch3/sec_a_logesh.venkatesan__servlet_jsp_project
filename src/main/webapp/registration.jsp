<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register User Details</title>
</head>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

button {
    cursor: pointer;
}
.title{

margin-top:200px;
}

body {
background-color:yellow;
    font-family: "Open Sans",
        -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", Helvetica, Arial, sans-serif;
}

h1 {
    font-family: 'Acme';
    font-style: normal;
    font-weight: 400;
    color: darkorange;
    text-align: center;
    font-stretch: extra-condensed;
}

h1 span {
    font-family: 'Acme';
    font-style: normal;
    font-weight: 450;
    color: rgb(0, 0, 0)
}

.main-parent {
    width: 100%;
    height: 26.2em;
    background-image: url(/assets/Images/icons/we3.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: top;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;

}

{
    padding: 8px 20px;
    margin: 0px auto;
    background-color: coral;
    margin: 20px 5em;
}

.editbtn {
    margin-left: 7em;
}

.containerOfMini {
    display: flex;
    flex-direction: column;
    margin-top: 2em;

}

.containerOfMini input {
    width: 29em;
    height: 3em;
    padding: 1em;
    
    margin: 0.5em;
    display: flex;
    justify-content: center;
    border-radius: 3em;
}
.input {
    width: 29em;
    height: 3em;
    padding: 1em;
    
    margin: 0.5em;
    display: flex;
    justify-content: center;
    border-radius: 3em;
}
.containerOfMini select {
    margin: 0.5em;
    outline: 1;
    color: rgb(137, 136, 136);
    width: 19em;
    padding: 5px;
    border-radius: 1px;
}

.containerOfMini button {
    padding: 0.3em;
    margin-top: 1em;
    background-color: orange;
    border: none;
    font-size: large;
    border-radius: 5px;
    font-family: 'Acme';
    font-style: normal;
    font-weight: 450;
    color: rgb(0, 0, 0);
    background-color: orange;
    display: block;
    font-size: 16px;
    width: 100%;
}

input:focus {
    outline: none;
    border: 2px solid white;
}

input:valid {
    border: solid 2px greenyellow;
}

input:invalid {
    border: solid 2px red;
}

input::placeholder {
    color: rgb(167, 151, 151);
    font-size: 12px;
}
    .containerOfMini {
        display: flex;
        flex-direction: column;
        margin-top: 0em;
    }
    
    p.error {
    color: #D8000C;
    background-color: #FFD2D2;
    padding: 10px;
    border-radius: 5px;
    border: 1px solid #D8000C;
}
    
</style>
<body>
    <h1 class="title">Register Now</h1>
   
    <form class="main-parent "action="create" method="post">
        <h1>Create<span>User</span></h1>
        <input class="input" autofocus id="email" name="email" placeholder="Enter Email" type="email" required /><br>
        <input class="input" id="name" name="UserName" placeholder="Username" type="text" required /><br>
        <input class="input" id="password" name="password" placeholder="Set password" type="password" required /><br>
        <input class="input" id="phnumber" name="mobileno" placeholder="@Example12"type="number" pattern="[0-9]{1,10}"
            required /><br><br>
        <button type="submit" class="btn">Register Now</button>
    </form>
</body>

</html>