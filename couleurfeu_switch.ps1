clear

function login {
$passwordok= "1234"
$password_user =read-host "le mot de passe"
if ($password_user -eq $passwordok){
    couleurfeu
}
else { 
    "Acces Denied"
    sleep 2
    clear
    login
}
}
function couleurfeu
{
write-host ------------------
write-host 1: vert
write-host 2: orange
write-host 3: rouge
write-host ------------------
$feu = Read-Host "de quelle couleur est le feu?"


Switch ($feu) {
    "vert" {
        "nous passons"
        couleurfeu
    }
    "orange" {
        " Je ralentis"
        couleurfeu
    }
    "rouge" {
        "je stop"
        couleurfeu   
    }
    default {
        "pas bon"
        sleep 2
        clear
        couleurfeu
    }
    }
}

login
