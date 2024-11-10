#!/bin/bash
# Indica que este é um script bash - esta primeira linha (shebang) diz ao sistema qual interpretador usar

# Gera um número aleatório usando o timestamp atual
numero=$(date +%s)  
# Pega o timestamp Unix atual (segundos desde 1970)

numero2=${numero:9:1}  
# Extrai apenas o último dígito do timestamp usando substring
# :9:1 significa: começar na posição 9 e pegar 1 caractere

tentativas=3
# Define o número máximo de tentativas permitidas

echo 'Escolha um número, de 0 a 9'
# Imprime a mensagem inicial para o usuário

for (( i=1; i<=$tentativas; i++ )); do
# Inicia um loop que vai rodar 3 vezes (número de tentativas)

  read -p "Tentativa $i: " chute
  # Lê a entrada do usuário, mostrando qual tentativa está sendo feita
  # -p permite mostrar um prompt antes de ler a entrada

  if [ "$chute" -eq "$numero2" ]; then
    # Verifica se o chute está correto
    echo 'Acerto mizeravi!'
    break  # Sai do loop se acertou
  else
    if [ "$chute" -gt "$numero2" ]; then
      # Verifica se o chute é maior que o número correto
      echo 'Errou rude! Dica: Tente um número menor.'
    else
      # Se não é maior, então é menor
      echo 'Errou rude! Dica: Tente um número maior.'
    fi
  fi

  if [ "$i" -eq "$tentativas" ]; then
    # Verifica se era a última tentativa
    echo "Acabaram as tentativas! O número era $numero2."
  fi
done
