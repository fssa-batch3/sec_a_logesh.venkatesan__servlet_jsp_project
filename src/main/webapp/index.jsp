<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!------<title> Website Layout | CodingLab</title>------>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
    <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assest/Styles/style.css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
    <title>Welcome| FreshBYE</title>
    <style>
    body{
    background-image: url("<%=request.getContextPath()%>/assest/images/Images/Banner Image/l1.gif");
    
    }
    </style>
    
</head>


<body>
    <nav>
        <div class="menu">
            <div class="logo">
                <a href="#"><span>Fresh</span>BYE</a>
            </div>

        </div>
    </nav>
    <div class="img"></div>
    <div class="center">
        <div class="title">Welcome to a better </div>
        <div class="sub_title">Way of Connect</div>
        <div class="btns">
            <button>About</button>
            <a href="<%=request.getContextPath()%>/login.jsp"><button>Let's Start</button></a>
        </div>

    </div>
</body>

</html>