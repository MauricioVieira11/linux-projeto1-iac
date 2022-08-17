#!/bin/bash

echo "criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /vem
mkdir /sec

echo "criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEM
groupadd GRP_SEC

echo "criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEM
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEM
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEM

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEM /vem
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /vem
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
