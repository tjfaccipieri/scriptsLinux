#!/bin/bash
# Indica que este é um script bash - esta primeira linha (shebang) diz ao sistema qual interpretador usar

# Pede o nome do usuário
echo "Oi... qual seu nome?"
read username  # Lê a entrada do usuário e armazena na variável username

# Pede a data de nascimento ao usuário
echo "Oi $username, tudo bem com você?? Desculpa, mas qual a sua data de nascimento, no padrão YYYY-MM-DD?"
read birth  # Lê a data de nascimento e armazena na variável birth

today=$(date +%s)  
# Pega o timestamp atual (segundos desde 1970)

seconds=$(date -d "$birth" +%s)  
# Converte a data de nascimento informada para timestamp
# -d permite especificar uma data para conversão

days_from_birth=$((($today - $seconds)/86400))
# Calcula quantos dias se passaram desde o nascimento
# Subtrai o timestamp do nascimento do timestamp atual
# Divide por 86400 (número de segundos em um dia) para converter segundos em dias

years_from_birth=$((days_from_birth / 365))
# Calcula quantos anos completos a pessoa tem
# Divide o total de dias por 365 para obter os anos

remaining_days=$((days_from_birth % 365))
# Calcula os dias restantes após remover os anos completos
# Usa o operador % (módulo) para pegar o resto da divisão por 365

months_from_birth=$((remaining_days / 30))
# Converte os dias restantes em meses aproximados
# Divide os dias restantes por 30 (média de dias em um mês)

# Exibe os resultados para o usuário
echo "$username, você está vivo a $days_from_birth dias já..."
echo "Isso é $years_from_birth anos e $months_from_birth meses de vida"
