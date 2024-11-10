#!/bin/bash
# Indica que este é um script bash - esta primeira linha (shebang) diz ao sistema qual interpretador usar

for i in {0..50}; do
# Inicia um loop que vai de 0 até 50
# {0..50} é uma expansão de sequência no bash que cria uma lista de números de 0 a 50
# A variável i vai assumir cada valor dessa sequência

    touch "arquivo_$i.txt"
    # Comando touch cria um arquivo vazio
    # O nome do arquivo será "arquivo_X.txt", onde X é o valor atual de i
    
    echo "arquivo $((i + 1)) criado com sucesso"
    # Mostra mensagem de confirmação para cada arquivo criado
    # $((i + 1)) faz uma operação aritmética para mostrar números de 1 a 51
    # (ao invés de 0 a 50 que é o valor real de i)

done
# Marca o fim do loop

echo "Agora sim, você tem 51 novos arquivos"
# Mostra uma mensagem final

