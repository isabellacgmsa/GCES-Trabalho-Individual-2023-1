# Definir a imagem base com Python
FROM python:3.7.11

# Criar e definir o diretório de trabalho
WORKDIR /src

# Copiar o arquivo pyproject.toml para o contêiner
COPY src/pyproject.toml /src/pyproject.toml

# Copiar os arquivos do projeto para o contêiner
COPY . /src

# Instalar o Poetry
RUN pip install poetry

# Instalar as dependências do projeto
RUN poetry install

# Definir o comando de inicialização da aplicação
CMD ["python", "run.py"]
