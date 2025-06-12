<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cuisines</title>
    <link rel="stylesheet" href="navbar.css">
    <link rel="stylesheet" href="about.css">
    <style>
        h1{
            color: black;
        }
        h2{
            color: red;
        }
        </style>
</head>
<body>
<?php include('navbar.php'); ?>
<div class="container">
    <div class="container-head">
        <div class="content">
            <h1>Now you can add recipes</h1>
        </div>
    </div>
        <div class="form-card">
            <form action="addRecipe.php" method="post">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" placeholder="Enter recipe title" value="<?php if(isset($_POST['submit'])) {echo $_POST['name'];}?>" >
                </div>
                <div class="form-group">
                    <label for="email">Description</label>
                    <input type="text" id="description" name="description" placeholder="Enter 2 line description" value="<?php if(isset($_POST['submit'])) {echo $_POST['description'];}?>" >
                </div>
                <div class="form-group">
                    <label for="feedback">Ingredients</label>
                    <textarea id="ingredients" name="ingredients" rows="4" placeholder="Enter Ingredients"><?php if(isset($_POST['submit'])) {echo $_POST['ingredients'];}?></textarea>
                </div>
                <div class="form-group">
                    <label for="feedback">Recipe</label>
                    <textarea id="recipe" name="recipe" rows="4" placeholder="Enter recipe"><?php if(isset($_POST['submit'])) {echo $_POST['recipe'];}?></textarea>
                </div>
                <div class="form-group">
                    <label for="feedback">Time</label>
                    <input type="number" id="time" name="time" rows="4" placeholder="Enter time takes"><?php if(isset($_POST['submit'])) {echo $_POST['recipe'];}?></input>
                </div>
                <div class="form-group">
                    <input type="submit" name="submit" value="Add Recipe">
                </div>
            </form>
        </div>
    
    </div>

</body>
</html>

<?php 
if (isset($_POST['submit']))
{
 include('formValidations.php');
 $name = $_POST["name"];
 $description = $_POST["description"];
 $ingredients = $_POST["ingredients"];
 $recipe = $_POST["recipe"];
 $time = $_POST["time"];
 
 $errors = [];

 if (validateString($name)) {
     if (validateString($description)) {
         if (validateString($ingredients)){
            if(validateString($recipe)){
                if(validateNumber($time)){
                    include 'addRecipePost.php';
                }else{
                    $errors[] = "Time cannot be empty";
                }
            }else{
            $errors[] = "Recipe cannot be empty";
         }} else{
            $errors[] = "Ingredients cannot be empty";
         }} else {
             $errors[] = "Description cannot be empty";
         }}
         else {
         $errors[] = "Name cannot be empty.";
 }
} 

 if (!empty($errors)) {
    
     foreach ($errors as $error) {
         echo "<h2> Error: $error</h2>";
     }
    }


 ?>