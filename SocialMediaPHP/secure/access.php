<?php
/**
 * Created by PhpStorm.
 * User: kevinandrade
 * Date: 2019-03-10
 * Time: 20:19
 */


//classes to access this file
class access {


    //connection Global Variables
    var $host  = null;  //global variables
    var $user  = null;
    var $pass = null;
    var $name = null;
    var $conn = null;   //we will store the conection to host name
    var $result = null;


    //constructing class....automatically called when class is called due to it being called function
    function __construct($dbhost, $dbuser, $dbpass, $dbname)
    {
        $this->host = $dbhost;
        $this->user = $dbuser;
        $this->pass = $dbpass;
        $this->name = $dbname;
    }

    //connection function...opening connection
    public function connect(){

        //establising connectiona and storing in conn variable
        $this->conn= new mysqli($this->host, $this->user, $this->pass, $this->name); //
        if(msqli_connect_errno()){
            echo 'Could not connect to database';
        }
        $this->conn->set_charset("utf8");//will support all languages like japanese, korean, spanish, etc



    }

    //disconnection function
    public function disconnect(){
        if($this->conn != null){
            $this->conn->close();
        }
    }




}



?>