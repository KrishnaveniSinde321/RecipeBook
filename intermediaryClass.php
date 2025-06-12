<?php
    
    include ("databaseClass.php");

    //intermediary class
    class IntermediaryClass
    {
        //mthod for connecting database
        function GetDishes() {
            $dbClass = new DatabaseClass;
            //build query
            $selectSql = "SELECT * FROM dishes where category='main cours'";
            //call the select query method of dbclass
            try{
                $result = $dbClass->Select($selectSql);
                if($result) {
                    return $result;
                }//end if
            }catch(Exception $e) {
                echo "<script>window.alert(".$e->getMessage().")</script>";
            }//end try catch
        }

        function GetDesserts() {
            $dbClass = new DatabaseClass;
            //build query
            $selectSql = "SELECT * FROM dishes where category='dessert'";
            //call the select query method of dbclass
            try{
                $result = $dbClass->Select($selectSql);
                if($result) {
                    return $result;
                }//end if
            }catch(Exception $e) {
                echo "<script>window.alert(".$e->getMessage().")</script>";
            }//end try catch
        }

        function GetBelow5mins() {
            $dbClass = new DatabaseClass;
            //build query
            $selectSql = "SELECT * FROM dishes where time<=5";
            //call the select query method of dbclass
            try{
                $result = $dbClass->Select($selectSql);
                if($result) {
                    return $result;
                }//end if
            }catch(Exception $e) {
                echo "<script>window.alert(".$e->getMessage().")</script>";
            }//end try catch
        }

        function PostFeedback($name, $email, $feedback){
            $dbClass = new DatabaseClass;
            $insertSql = "INSERT INTO feedback (name, email, feedback) VALUES ('$name', '$email', '$feedback')";
            try{
                $result = $dbClass->Insert($insertSql);
                if($result) {
                    return $result;
                }//end if
            }catch(Exception $e) {
                echo "<script>window.alert(".$e->getMessage().")</script>";
            }
        }

        function PostRecipe($name, $description, $ingredients, $recipe, $time){
            $dbClass = new DatabaseClass;
            $insertSql = "INSERT INTO dishes (name, description, image, category, country, time, ingredients, recipe ) VALUES ('$name', '$description', 'no image','custom','USA','$time','$ingredients','$recipe')";
            try{
                $result = $dbClass->Insert($insertSql);
                if($result) {
                    return $result;
                }//end if
            }catch(Exception $e) {
                echo "<script>window.alert(".$e->getMessage().")</script>";
            }
        }

        function GetCustomDishes() {
            $dbClass = new DatabaseClass;
            //build query
            $selectSql = "SELECT * FROM dishes where category='custom'";
            //call the select query method of dbclass
            try{
                $result = $dbClass->Select($selectSql);
                if($result) {
                    return $result;
                }//end if
            }catch(Exception $e) {
                echo "<script>window.alert(".$e->getMessage().")</script>";
            }//end try catch
        }


        function getSearchedDish($dish) {
            $dbClass = new DatabaseClass;
            //build query
            $selectSql = "SELECT * FROM dishes where name like '$dish%'";
            //call the select query method of dbclass
            try{
                $result = $dbClass->Select($selectSql);
                if($result) {
                    return $result;
                }//end if
            }catch(Exception $e) {
                echo "<script>window.alert(".$e->getMessage().")</script>";
            }//end try catch
        }

    }
?>