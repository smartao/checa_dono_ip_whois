#!/bin/bash
read -p " Entre com o 3 primeiro octetos da rede (ex: 200.200.200): " net
read -p " Entre com o primeiro IP a ser scaneado: " ini
read -p " Entre com o ultimo IP a ser scaneado: " fim

for((seq=1;ini<=fim;ini++,seq++));
    do echo $seq - IP $net.$ini $(whois $net.$ini|grep -i responsible)
sleep 1;
done

