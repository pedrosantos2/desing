# Imagem base: Ubuntu 22.04
FROM ubuntu:22.04

# Instala dependências necessárias
RUN apt-get update && apt-get install -y wget ca-certificates

# Baixa e instala o binário do Ollama
# ATENÇÃO: Substitua a URL abaixo pela URL oficial de download do Ollama para Linux
RUN curl -fsSL https://ollama.com/install.sh | sh && \
    chmod +x /usr/local/bin/ollama

# (Opcional) Se o Ollama utilizar uma porta específica, exponha-a:
EXPOSE 11434

# Executa o modelo nomic
CMD ["ollama", "pull", "nomic-embed-text"]
