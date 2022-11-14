<?php class Servidor{
public $NameServer;
public $state;
public $Ip;
public $color;

public function __construct($name,$ip)
{
    $this->NameServer = $name;
    $this->Ip = $ip;
    
}

public function Comprobarconexion()
{
    exec("ping -c 2 ".$this->Ip,$opuput);

    if(strpos($opuput[3],"100% packet loss") != false)
    {
        $this->state = "OFF";
        $this->color = "red";
    }else
    {
        $this->state ="ON";
        $this->color = "green";
    }
}

}


?>