# GCES-Trabalho-Individual-2023-1

## PyContinual

O projeto PyContinual é um framework fácil de usar e extensível para aprendizado contínuo (continual learning) em Python. O objetivo desse framework é fornecer uma implementação em PyTorch de vários métodos de aprendizado contínuo, incluindo melhorias em métodos de estado-da-arte, usando a mesma estrutura de treinamento e avaliação.

## Descrição

Algumas características e funcionalidades do PyContinual são:

- Fácil de usar: Você pode facilmente mudar a linha de base (baseline), o modelo principal (backbone) e a tarefa (task) e começar a usar. Por exemplo, você pode especificar o modelo BERT, a linha de base CTR (counterfactual regression), a tarefa ASC (aspect sentiment classification) e os tamanhos de lote de treinamento e avaliação.

- Fácil de estender: Se você quiser usar seu próprio conjunto de dados, modelo ou abordagem, o PyContinual permite que você escreva seu próprio carregador de dados, rede e abordagem. Isso torna o framework flexível e adaptável a diferentes cenários e requisitos específicos.

- Conjunto de papers e implementações: O projeto inclui a implementação em PyTorch de vários papers relevantes na área de aprendizado contínuo, como "Achieving Forgetting Prevention and Knowledge Transfer in Continual Learning", "CLASSIC: Continual and Contrastive Learning of Aspect Sentiment Classification Tasks" e outros. Além disso, o projeto também oferece mais de 40 baselines e variantes para experimentação.

- Suporte a diversos conjuntos de dados: O PyContinual suporta conjuntos de dados de linguagem (classificação de documento/sentença/aspecto, inferência de linguagem natural, classificação de tópicos) e conjuntos de dados de imagens (CelebA, CIFAR10, CIFAR100, FashionMNIST, F-EMNIST, MNIST, VLCS).

- Suporte a diferentes cenários de treinamento: O framework oferece suporte ao aprendizado incremental de tarefas (task incremental learning) e ao aprendizado incremental de domínios (domain incremental learning). Isso permite explorar diferentes configurações e desafios de aprendizado contínuo.

- Modos de treinamento flexíveis: O PyContinual suporta treinamento em uma única GPU, mas também pode ser adaptado para treinamento distribuído em várias GPUs e para treinamento de precisão mista (mixed precision training).

A estrutura do projeto está organizada em diretórios que contêm os resultados, dados processados, dados brutos, carregadores de dados, abordagens de treinamento, arquiteturas de redes e ferramentas de preparação de dados.

## Pré-requisitos

Para executar o projeto, é necessário ter instalados os seguintes pré-requisitos:

- Poetry: Uma ferramenta de gerenciamento de dependências e ambiente virtual para projetos Python. Você pode instalá-lo seguindo as instruções em: [Poetry Installation](https://python-poetry.org/docs/#installation).
- Docker: Uma plataforma que permite criar, implantar e executar aplicativos em contêineres. Você pode instalá-lo seguindo as instruções em: [Docker Installation](https://docs.docker.com/get-docker/).

## Instalação

Para instalar o PyContinual, siga as etapas abaixo:

1. Clone o repositório para o seu ambiente local:

```
git clone https://github.com/seu-usuario/GCES-Trabalho-Individual-2023-1.git
```

2. Navegue até o diretório raiz do projeto:

```
cd GCES-Trabalho-Individual-2023-1
```

3. Crie uma imagem Docker a partir do Dockerfile fornecido no projeto:

```
docker build -t

 pycontinual .
```

## Uso

Para executar o PyContinual com o Docker, siga as instruções abaixo:

1. Inicie um contêiner Docker a partir da imagem criada:

```
docker run -it pycontinual
```

2. Dentro do contêiner Docker, você estará no diretório raiz do projeto. Agora você pode executar comandos e scripts do PyContinual normalmente.

Agora você pode utilizar todas as funcionalidades do PyContinual dentro do contêiner Docker.

## Integração Contínua com GitHub Actions

O PyContinual utiliza o GitHub Actions para integração contínua. O GitHub Actions é uma plataforma de automação baseada em eventos que permite criar fluxos de trabalho personalizados para construir, testar e implantar seu código diretamente no GitHub.

Os arquivos de configuração para os fluxos de trabalho do GitHub Actions estão armazenados no diretório `.github/workflows` do projeto. Esses arquivos definem as etapas a serem executadas em resposta a eventos específicos, como push de código, criação de pull requests ou cron jobs agendados.

Ao utilizar o GitHub Actions no projeto PyContinual, é possível garantir que o build do código, os testes e outras tarefas relacionadas à integração contínua sejam executados de forma automatizada e confiável sempre que houver uma alteração no repositório. Isso ajuda a manter a qualidade do código e facilita a colaboração entre os membros da equipe.

## Documentação com Sphinx

O PyContinual utiliza o Sphinx para gerar sua documentação. O Sphinx é uma ferramenta de documentação amplamente utilizada na comunidade Python, que permite escrever documentação em formato reStructuredText (reST) e gerar diferentes formatos de saída, como HTML, PDF e EPUB.

A documentação do PyContinual está localizada no diretório `docs` do projeto. Dentro desse diretório, você encontrará arquivos reST que contêm a estrutura e o conteúdo da documentação. Para gerar a documentação, execute o seguinte comando:

```
sphinx-build -b html docs docs/_build
```

Isso gerará a documentação em HTML dentro do diretório `docs/_build/html`. Você pode abrir o arquivo `docs/_build/html/index.html` em um navegador para visualizar a documentação gerada.
