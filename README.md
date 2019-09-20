# Python with Docker

### Docker

    
**Command test:**

```
    Docker -v
    Docker run hello-world
```

**Dockerfile**
    
```
    FROM python:3

    WORKDIR /usr/src/app

    COPY requirements.txt ./
    RUN pip install --no-cache-dir -r requirements.txt

    COPY . .

    CMD [ "python", "./your-daemon-or-script.py" ]
```
**Create image Docker**
```
    docker build -t dev-python-script .
    RUM:
    docker run --rm -d python-script:latest
```