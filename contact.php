<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cuisines</title>
    <link rel="stylesheet" href="navbar.css">
     <style>
        .card-container{
            display: flex;
            flex-wrap: wrap;
            padding: 20px;
            justify-content: space-around;
        }
        .card {
            background: white;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            border-radius: 8px;
            padding: 20px;
            margin: 10px;
            width: 300px;
        }
        .card h2, .card p {
            margin: 10px 0;
        }
    
        .container {
            text-align: center;
            width: 100%;
        }
     </style>
</head>
<body>
<?php include('navbar.php')?>
<div class="container">
    <h1>Meet The Team</h1>
    <div class="card-container">
        <div class="card">
            <h2>Krishnaveni Sinde</h2>
            <a href="kxs81650@ucmo.edu">Email: kxs81650@ucmo.edu </a>
            <p>#700: 7007481650</p>
        </div>
        <div class="card">
            <h2>Karuturi Sri Koushik</h2>
            <a href="sxk42861@ucmo.edu">Email: sxk42861@ucmo.edu</a>
            <p>#700: 700754286</p>
        </div>
        <div class="card">
            <h2>Sai Teja Reddy Kothakota</h2>
            <a href="saitejakothakota01@gmail.com">Email: saitejakothakota01@gmail.com</a>
            <p>#700: 700757575</p>
        </div>
    </div>
</div>

</body>
</html>