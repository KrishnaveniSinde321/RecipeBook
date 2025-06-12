<!DOCTYPE html>
<?php
    
    class DatabaseClass {
        static $connection; //.this is property
        /* **********Connect Function****/
        public function connect() { //this is a mthod in databaseclass
            //try and connect to databse
            if(! isset(self::$connection)) { //if not connection set already
                include ("dbConfig.php");
                self::$connection = new mysqli ( $host, $username, $password, $dbname);

            }
            //If connection was not successful, handle error
            if (self::$connection == false) {
                //handle-error
                return false;
            }//end function
            return self::$connection;
        }
        /* **********Query FUnction ****/
        public function Select($query) {
            //connect to database
            $connection = $this->connect ();
            // query the databse
            $result = $connection->query ( $query );
            //close connection
            $this->CloseConnection();
            if (! $result) {
                return $connection->error;
            } else {
                return $result ;
            }
        } // end function select()
        public function Insert($query) {
            //connect to database
            $connection = $this->connect ();
            // query the databse
            $result = $connection->query ( $query );
            //close connection
            $this->CloseConnection();
            if (! $result) {
                return $connection->error;
            } else {
                return $result ;
            }
        }
        public function error() {
            //gets the last error
            $connection = $this->connect();
            return $connection->error;
        } // end function error
        public function CloseConnection() {
            self::$connection-> close();
        }
    } //end class
?>