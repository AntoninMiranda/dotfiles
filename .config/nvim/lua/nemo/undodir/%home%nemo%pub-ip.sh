Vim�UnDo� Sц3%lXS��\9<J��M��i���
���n   	           
      6       6   6   6    e7�7    _�                             ����                                                                                                                                                                                                                                                                                                                                                             e7�;    �                   �               5��                                           �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e7�     �                L# Vérifie si une connexion VPN est active en examinant la table de routage.    if ip route | grep -q tun0; then   K    # Si une connexion VPN est active (par exemple, avec l'interface tun0),   8    # affiche l'adresse IP associée à cette interface.   5    vpn_ip=$(ip route get 8.8.8.8 | awk '{print $7}')   #    echo "Adresse IP VPN : $vpn_ip"   else   J    # Si aucune connexion VPN n'est active, affiche l'adresse IP publique.   $    public_ip=$(curl -s ifconfig.me)   +    echo "Adresse IP publique : $public_ip"   fi    5��                                 �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e7�
    �                  �               �                  5��                                                �                                        �      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             e7�)     �               %    echo "Adresse IP tun0 : $tun0_ip"5��       
                  �                      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             e7�)     �               $    echo "dresse IP tun0 : $tun0_ip"5��       
                  �                      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             e7�)     �               #    echo "resse IP tun0 : $tun0_ip"5��       
                  �                      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             e7�)     �               "    echo "esse IP tun0 : $tun0_ip"5��       
                  �                      5�_�      	                 
    ����                                                                                                                                                                                                                                                                                                                                                             e7�)     �               !    echo "sse IP tun0 : $tun0_ip"5��       
                  �                      5�_�      
           	      
    ����                                                                                                                                                                                                                                                                                                                                                             e7�)     �                    echo "se IP tun0 : $tun0_ip"5��       
                  �                      5�_�   	              
      
    ����                                                                                                                                                                                                                                                                                                                                                             e7�*     �                   echo "e IP tun0 : $tun0_ip"5��       
                  �                      5�_�   
                    
    ����                                                                                                                                                                                                                                                                                                                                                             e7�*     �                   echo " IP tun0 : $tun0_ip"5��       
                  �                      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             e7�*     �                   echo "IP tun0 : $tun0_ip"5��       
                  �                      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             e7�*     �                   echo "P tun0 : $tun0_ip"5��       
                  �                      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             e7�*     �                   echo " tun0 : $tun0_ip"5��       
                  �                      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             e7�*     �                   echo "tun0 : $tun0_ip"5��       
                  �                      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             e7�*     �                   echo "un0 : $tun0_ip"5��       
                  �                      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             e7�*     �                   echo "n0 : $tun0_ip"5��       
                  �                      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             e7�+     �                   echo "0 : $tun0_ip"5��       
                  �                      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             e7�+     �                   echo " : $tun0_ip"5��       
                  �                      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             e7�+     �                   echo ": $tun0_ip"5��       
                  �                      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             e7�+     �                   echo " $tun0_ip"5��       
                  �                      5�_�                    
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�-     �   	            7    echo "Adresse IP wlp0s20f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�                    
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            6    echo "dresse IP wlp0s20f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�                    
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            5    echo "resse IP wlp0s20f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�                    
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            4    echo "esse IP wlp0s20f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�                    
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            3    echo "sse IP wlp0s20f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�                    
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            2    echo "se IP wlp0s20f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�                    
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            1    echo "e IP wlp0s20f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�                    
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            0    echo " IP wlp0s20f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�                    
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            /    echo "IP wlp0s20f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�                     
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            .    echo "P wlp0s20f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�      !               
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            -    echo " wlp0s20f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�       "           !   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            ,    echo "wlp0s20f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�   !   #           "   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            +    echo "lp0s20f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�   "   $           #   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            *    echo "p0s20f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�   #   %           $   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            )    echo "0s20f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�   $   &           %   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            (    echo "s20f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�   %   '           &   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            '    echo "20f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�   &   (           '   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            &    echo "0f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�   '   )           (   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            %    echo "f3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�   (   *           )   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            $    echo "3 (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�   )   +           *   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            #    echo " (Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�   *   ,           +   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            "    echo "(Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�   +   -           ,   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	            !    echo "Wi-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�   ,   .           -   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	                 echo "i-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�   -   /           .   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�.     �   	                echo "-Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�   .   0           /   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�/     �   	                echo "Fi) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�   /   1           0   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�/     �   	                echo "i) : $wlp0s20f3_ip"5��    	   
                  �                     5�_�   0   2           1   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�/     �   	                echo ") : $wlp0s20f3_ip"5��    	   
                  �                     5�_�   1   3           2   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�/     �   	                echo " : $wlp0s20f3_ip"5��    	   
                  �                     5�_�   2   4           3   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�/     �   	                echo ": $wlp0s20f3_ip"5��    	   
                  �                     5�_�   3   5           4   
   
    ����                                                                                                                                                                                                                                                                                                                                                             e7�0    �   	                echo " $wlp0s20f3_ip"5��    	   
                  �                     5�_�   4   6           5      
    ����                                                                                                                                                                                                                                                                                                                                                             e7�5     �                k    # L'interface tun0 n'est pas configurée, affiche l'adresse IP de wlp0s20f3 (ou votre interface Wi-Fi).5��                          �       l               5�_�   5               6      
    ����                                                                                                                                                                                                                                                                                                                                                             e7�6    �                ?    # L'interface tun0 est configurée, affiche son adresse IP.5��                          1       @               5��