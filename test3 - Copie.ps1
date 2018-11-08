clear
function calcul {

   <#
    echo "[+] : Addition";
    echo "[-] : Soustraction ";
    echo "[*] : Multiplication ";
    echo "[/] : Division ";
   #>

    echo "Soissisez le type d'opération : ";
    $operande = Read-Host($chaine)

    $a = Read-host($input)
    $b = Read-Host($input)


    if ($chaine -eq "+") {
       
        $res = $a + $b;

      return res;
    }


    if ($chaine -eq "-") {
       
        $res =  $a - $b;

      return res;
    }



}