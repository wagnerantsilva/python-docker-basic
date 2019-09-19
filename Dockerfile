# FROM informa ao Docker em qual imagem você baseia sua imagem. No exemplo, Python 3.
FROM python:3.7-slim
# RUN informa ao Docker quais comandos adicionais executar no console bash. No exemplo, 
# criamos uma pasta chamada application e depois instalamos os requisitos com a biblioteca pip 
# que instalamos anteriormente.
RUN mkdir /application

WORKDIR "/application"

# Upgrade pip
RUN pip install --upgrade pip

# Update
RUN apt-get update \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

ADD requirements.txt /application/

ADD src/script.py /application/

RUN pip install -r /application/requirements.txt
# CMD diz ao Docker para executar o comando quando a imagem é carregada. No exemplo, nosso script python.
CMD [ "python", "script.py" ]


