#!/bin/bash

# Script para criar múltiplos arquivos de texto
# O usuário informa quantos arquivos deseja criar e o script os gera sequencialmente

# Função para validar se a entrada é um número positivo
validar_numero() {
    if ! [[ $1 =~ ^[0-9]+$ ]] || [ $1 -eq 0 ]; then
        echo "Por favor, digite um número inteiro positivo!"
        exit 1
    fi
}

# Solicita ao usuário o número de arquivos a serem criados
echo "Quantos arquivos você deseja criar?"
read quantidade_arquivos

# Valida a entrada do usuário
validar_numero $quantidade_arquivos

# Solicita o prefixo para os nomes dos arquivos
echo "Digite o prefixo para os nomes dos arquivos:"
read prefixo

# Inicializa o contador
contador=1

# Loop while para criar os arquivos
while [ $contador -le $quantidade_arquivos ]
do
    # Define o nome do arquivo com prefixo e número
    nome_arquivo="${prefixo}_${contador}.txt"
    
    # Cria o arquivo com uma mensagem dentro
    echo "Este é o conteúdo do arquivo $contador" > $nome_arquivo
    
    # Verifica se o arquivo foi criado com sucesso
    if [ -f "$nome_arquivo" ]; then
        echo "Arquivo $nome_arquivo criado com sucesso!"
    else
        echo "Erro ao criar o arquivo $nome_arquivo"
    fi
    
    # Incrementa o contador
    ((contador++))
done

# Mensagem final
echo -e "\nProcesso concluído!"
echo "Total de arquivos criados: $quantidade_arquivos"
echo "Você pode encontrar os arquivos no diretório atual"
