# Use uma imagem base oficial do Python
FROM python:3

# Define o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app  

# Primeiro copia apenas o requirements.txt
COPY requirements.txt .

# Instala dependências (essa camada fica em cache)
RUN pip install -r requirements.txt

# Depois copia o restante dos arquivos
COPY . .

# Expõe a porta que a aplicação irá rodar
CMD ["python", "main.py"]
