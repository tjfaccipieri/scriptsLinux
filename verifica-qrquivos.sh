#!/bin/bash
# Este script verifica se um arquivo existe e demonstra o uso de exit codes

# Pede ao usuário o nome do arquivo para verificar
echo "Digite o nome do arquivo que deseja verificar:"
read filename

# Verifica se o usuário digitou algo
if [ -z "$filename" ]; then
    echo "Erro: Você não digitou nenhum nome de arquivo!"
    # exit 1 indica que houve um erro na execução
    # Convencionalmente, qualquer código diferente de 0 indica erro
    exit 1
fi

# Verifica se o arquivo existe usando o operador -f
if [ -f "$filename" ]; then
    echo "O arquivo '$filename' existe!"
    # exit 0 indica que o programa executou com sucesso
    # É a convenção para "tudo ocorreu bem"
    exit 0
else
    echo "O arquivo '$filename' não existe!"
    # exit 1 indica erro - neste caso, o arquivo não foi encontrado
    exit 1
fi

# Esta linha nunca será executada por causa dos exit anteriores
echo "Esta mensagem nunca aparecerá"