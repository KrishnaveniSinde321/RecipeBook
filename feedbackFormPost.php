<?php
     include "intermediaryClass.php";
     $inter = new IntermediaryClass;
     $name = $_POST["name"];
     $email = $_POST["email"];
     $feedback = $_POST["feedback"];
     try{
        $result = $inter->PostFeedback($name,$email,$feedback);
        if($result) {
            echo "<script>window.alert('feedback submitted successfully')</script>";
           // header('Location: about.php');
            exit;
        }
    }catch(Exception $e) {
        echo "<script>window.alert(".$e->getMessage().")</script>";
    }
?>
