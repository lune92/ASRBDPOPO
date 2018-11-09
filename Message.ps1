
Class Message 
{
    [string]$Text
    [string]$Title
    [bool]$OKCancel
    [bool]$AbortRetryIgnore
    [bool]$YesNoCancel
    [bool]$YesNo
    [bool]$RetryCancel
    [bool]$IconErreur
    [bool]$IconQuestion
    [bool]$IconAvertissement
    [bool]$IconInformation

    OpenPopUp () 
    {
        if     ($this.OKCancel)         { $Btn = 1 } # les boutons (Btn) donner ici sont a chercher sur google
        elseif ($this.AbortRetryIgnore) { $Btn = 2 }
        elseif ($this.YesNoCancel)      { $Btn = 3 }
        elseif ($this.YesNo)            { $Btn = 4 }
        elseif ($this.RetryCancel)      { $Btn = 5 }
        else                            { $Btn = 0 }

        if     ($this.IconErreur)        {$Icon = 16 }
        elseif ($this.IconQuestion)      {$Icon = 32 }
        elseif ($this.IconAvertissement) {$Icon = 48 }
        elseif ($this.IconInformation)   {$Icon = 64 }
        else         
        
        
                            {$Icon = 0  }
    
        Add-Type -AssemblyName 'System.Windows.Forms'



        [System.Windows.Forms.MessageBox]::Show($this.Text, $this.Title , $Btn, $Icon) #Permet de faire des pop-up
    }
}

$Message = New-Object Message
$Message.IconErreur = $true
$Message.AbortRetryIgnore = $true #permet davoir les choix "recommencer", "abandonner", "recommencer"
$Message.Title = "Cool !!"
$Message.Text = " Trop fort Powershell"
#$Message.IconAvertissement = $true
#$Message.Title = "Warning"
#$Message.Text = "High skilled developer detected"
$Message.OpenPopUp()