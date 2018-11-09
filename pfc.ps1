
[int] $var1 = 0
[int] $var2 = 0


function pfc {


echo "Bienvenue dans nouveau jeu Pierre/Feuille/Ciseau"
""
echo "Voici les choix possibles : pierre | feuille | ciseau " 
""
$choix = Read-Host "Voici mon choix "
$ordinateur = Get-Random -InputObject "pierre", "feuille", "ciseau"

""
echo "Choix de l'Ordinateur = $ordinateur"
""
         if ($choix -eq $ordinateur) {
        echo "     Resultat = Egalité "
        
         }


        if ( ($choix -eq "pierre") -and ($ordinateur-eq "feuille") )  {
        echo "       Resultat = Perdu ! "
         $var2++          
         }
        

 
       if ( ($choix -eq "pierre") -and ($ordinateur -eq "ciseau") ) {
        echo "         Resultat = Gagné "   
        $var1++      
       }
       

        if ( ($choix -eq "feuille") -and ($ordinateur -eq "pierre") ) {
             echo "      Resultat = Gagné "    
             $var1++  
        }
          


       if ( ($choix -eq "feuille") -and ($ordinateur -eq "ciseau") ){
            echo "          Resultat = Perdu ! "
            $var2++
        }
         

       if ( ($choix -eq "ciseau") -and ($ordinateur -eq "pierre")) {
            echo "       Resultat = Perdu ! "  
             $var2++     
       }
        

        
       if ( ($choix -eq "ciseau") -and ($ordinateur -eq "feuille")) {
            echo "         Resultat = Gagné ! "
             $var1++
       }
           
     
       echo "Score : Moi = $var1   Ordinateur  = $var2  "
       ""
        
       pfc
         #echo "Nouveau score : Moi= $var++   ordinateur = $var2++ "

        
}

#clear

pfc