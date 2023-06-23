# Definir a imagem base com Python
FROM python:3.9

# Criar e definir o diretório de trabalho
WORKDIR /src

# Copiar os arquivos do projeto para o contêiner
COPY . /src
# Instalar as dependências do projeto
RUN pip install -r src/requirements.txt

# Definir o comando de inicialização da aplicação
CMD ["python", "app.py"]
