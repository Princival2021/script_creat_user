
#!/bin/bash

echo "Criando Usuários e grupos"
groupadd GRP_FIN
groupadd GRP_ADM
groupadd GRP_TEC
useradd vanderlei -c "Usuário Vanderlei" -s /bin/bash -m -p $(openssl passwd -1 Mudar123)
useradd milena -c "Usuário Milena" -s /bin/bash -m -p $(openssl passwd -1 Mudar123) -G GRP_ADM
useradd kaua -c "Usuário Kauã" -s /bin/bash -m -p $(openssl passwd -1 Mudar123) -G GRP_ADM
useradd madruga -c "Usuário Madruga" -s /bin/bash -m -p $(openssl passwd -1 Mudar123) -G GRP_TEC
useradd kiko -c "Usuário Kiko" -s /bin/bash -m -p $(openssl passwd -1 Mudar123) -G GRP_TEC
useradd ademir -c "Usuário Ademir" -s /bin/bash -m -p $(openssl passwd -1 Mudar123) -G GRP_FIN
useradd joao -c "Usuário Joao" -s /bin/bash -m -p $(openssl passwd -1 Mudar123) -G GRP_FIN
useradd paulo -c "Usuário Paulo" -s /bin/bash -m -p $(openssl passwd -1 Mudar123) -G GRP_FIN
mkdir /adm
mkdir /tec
mkdir /fin
chown milena:GRP_ADM /adm/
chown madruga:GRP_TEC/tec/
chown ademir:GRP_FIN/fin/

