#!/bin/bash

echo "Criando Diretórios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -m -c "João" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -m -c "Débora" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -m -c "Rogério" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC


echo "Especificando as permissões aos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC  /sec

chmod 770 /adm
chmod 770 /sec
chmod 770 /ven
chmod 777 /publico


echo "Processo finalizado"


