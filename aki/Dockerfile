FROM python:3.7.1

WORKDIR /usr/src/app

COPY src/requirements.txt ./
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple --no-cache-dir \
        git+https://github.com/richardchien/python-aiocqhttp.git@master \
        git+https://github.com/richardchien/nonebot.git@master
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple --no-cache-dir -r requirements.txt

COPY src/alembic ./alembic
COPY src/aki ./aki
COPY src/config_base.py ./
COPY src/run.py ./

ENV DEPLOYMENT_ENV=production

EXPOSE 8080

COPY ./start.sh ./
CMD ["./start.sh"]
