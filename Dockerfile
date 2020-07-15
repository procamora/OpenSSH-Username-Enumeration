FROM python:2

# docker volume create --name data-45233
# docker build -t app-45233 .
# docker run -it --rm -v data-45233:/usr/src/app:rw app-45233



WORKDIR /usr/src/app

COPY requirements.txt ./
COPY 45233.py ./
COPY dict.txt ./

RUN pip install -r requirements.txt


CMD [ "python", "./45233.py", "10.10.10.181", "--outputFile", "./file.txt", "--userList", "./dict.txt"]
