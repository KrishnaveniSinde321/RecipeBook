<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cuisines</title>
    <link rel="stylesheet" href="navbar.css">
     <link rel="stylesheet" href="about.css">
     <style>
        h3{
            color: red;
        }
        </style>
</head>
<body>
<?php include('navbar.php'); ?>
<div class="container">
    <div class="container-head">
        <div class="content">
            <h1>Welcome to the Recipe Book Project</h1>
            <h2>About the Project</h2>
            <p>The Recipe Book project is a vibrant collection of recipes focusing on Indian, Italian, and Chinese cuisines. Each section of the book offers a range of dishes from traditional to modern recipes, providing insights into the ingredients and culinary techniques unique to each culture. Whether you are a beginner looking to try new flavors or an experienced cook aiming to perfect your dishes, this project serves as a culinary bridge connecting diverse gastronomies.</p>
            <p>The Recipe Book project also emphasizes the importance of presentation and food aesthetics, with a special section dedicated to plating and garnishing techniques that complement each cuisine. Additionally, the book includes a chapter on the fusion of these diverse culinary styles, encouraging creativity in the kitchen by blending flavors and techniques from Indian, Italian, and Chinese traditions. Tips on ingredient substitutions are provided to cater to various dietary restrictions and preferences, making it accessible to a wider audience. This comprehensive guide is not only a cookbook but also an exploration of cultural heritage through food, aiming to inspire cooks around the world to expand their culinary horizons.</p>
        </div>
        <div class="image">
            <img src="images/cook.jpg" alt="Cook">
        </div>
    </div>
        <div class="form-card">
            <form action="about.php" method="post">
                <h2>Feedback</h2>
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" placeholder="Enter your name" value="<?php if(isset($_POST['submit'])) {echo $_POST['name'];}?>">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email"value="<?php if(isset($_POST['submit'])) {echo $_POST['email'];}?>">
                </div>
                <div class="form-group">
                    <label for="feedback">Feedback</label>
                    <textarea id="feedback" name="feedback" rows="4" placeholder="Enter your feedback" value="<?php if(isset($_POST['submit'])) {echo $_POST['feedback'];}?>"></textarea>
                </div>
                <div class="form-group">
                    <input type="submit" name="submit" value="Submit Feedback">
                </div>
                <?php 
if (isset($_POST['submit']))
{
 include('formValidations.php');
 $name = $_POST['name'];
 $email = $_POST['email'];
 $feedback = $_POST['feedback'];
 
 $errors = [];

 if (validateString($name)) {
     if (validateEmail($email)) {
         if (validateString($feedback)) {
            include 'feedbackFormPost.php';
         } else {
             $errors[] = "Feedback cannot be empty";
         }
     } else {
         $errors[] = "Invalid email format.";
     }
 } else {
     $errors[] = "Name Cannot be empty.";
 }
 if (!empty($errors)) {
    
     foreach ($errors as $error) {
         echo "<h3> Error: $error</h1>";
     }
 }}
 ?>
            </form>
        </div>
    
    </div>

</body>
</html>


 