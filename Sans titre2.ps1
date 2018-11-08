clear

function calcul {
   
 echo "
   ____  ____  _    ____  _     _    ____  _____  ____  _  ____  _____   _     _______  _
/   _\/  _ \/ \  /   _\/ \ /\/ \  /  _ \/__ __\/  __\/ \/   _\/  __/  / \__//  _ \  \//
|  /  | / \|| |  |  /  | | ||| |  | / \|  / \  |  \/|| ||  /  |  \    | |\/|| / \|\  / 
|  \_ | |-||| |_/\  \_ | \_/|| |_/\ |-||  | |  |    /| ||  \_ |  /_   | |  || |-||/  \ 
\____/\_/ \|\____|____/\____/\____|_/ \|  \_/  \_/\_\\_/\____/\____\  \_/  \\_/ \/__/\\
                                                                                       "
   
    ""
    $operande = Read-Host "Soissisez le type d'opération "
    ""
    try {
           
            [int]$a = Read-host "Chosissez une premiere valeur "
    } 
    catch {
             echo " La valeur entrée n'est pas bonne !"
             calcul
            
    }

    ""
    [int]$b = Read-Host "Chosissez un deuxieme valeur "
    ""

    if ($operande -eq "+") {
       
       echo "Le resultat de cette operation est "
        return $res = $a + $b;

    }


    if ($operande -eq "-") {
       
      echo "Le resultat de cette operation est "
      return  $res =  $a - $b;
    
    }

    
    if ($operande -eq "*") {

      echo "Le resultat de cette operation est "   
      return  $res =  $a * $b;
    
    }

    if ($operande -eq "/") {
       
      Write-Host "Le resultat de cette operation ="                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
      
          return $res = $a / $b;   
    
    }

    else{ 

    ""
     echo " Veuillez rentrer une bonne opérande !!! "
   }
}

calcul