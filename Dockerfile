# Definir a imagem base com Python
FROM python:3.9

# Criar e definir o diretório de trabalho
WORKDIR /src

# Copiar os arquivos do projeto para o contêiner
COPY . /src
# Instalar as dependências do projeto
RUN poetry install

# Definir o comando de inicialização da aplicação
CMD ["python", "run.py"]
