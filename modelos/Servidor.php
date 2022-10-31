<?php class Servidor{
public $NameServer;
public $state;
public $Ip;
public $color;

public function __construct($name,$estado,$ip)
{
    $this->NameServer = $name;
    $this->state = $estado;
    $this->Ip = $ip;
    
}

}

?>