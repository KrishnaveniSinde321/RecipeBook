<?php
    function validateString($string){
        if(!empty($string)){
            return true;
        }else{
            return false;
        }
    }
    function validateNumber($number){
        if(!empty($number) && is_numeric($number)){
            return true;
        }else{
            return false;
        }
    }
    function validateEmail($email) {
        if(!empty($email)){
        return filter_var($email, FILTER_VALIDATE_EMAIL);
    }
}
    
?>