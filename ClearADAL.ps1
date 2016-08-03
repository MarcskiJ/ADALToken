$credCache = cmdkey.exe /list | findstr “ADAL"
foreach ($cred in $credCache) {
                $cred = $cred.Trim("Target: ")
                cmdkey.exe /delete:$cred
                              }
