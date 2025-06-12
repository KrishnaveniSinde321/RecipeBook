<?php
     include "intermediaryClass.php";
     $inter = new IntermediaryClass;
     $name = $_POST["name"];
     $description = $_POST["description"];
     $ingredients = $_POST["ingredients"];
     $recipe = $_POST["recipe"];
     $time = $_POST["time"];
     try{
        $result = $inter->PostRecipe($name, $description, $ingredients, $recipe, $time);
        if($result) {
            echo "<script>window.alert('Recipe added successfully')</script>";
           // header('Location: about.php');
            exit;
        }//end if
    }catch(Exception $e) {
        echo "<script>window.alert(".$e->getMessage().")</script>";
        echo 'Failed to Submit Recipe';
    }
?>
