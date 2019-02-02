#!/usr/bin/env bash

alembic upgrade head
#hypercorn -b 0.0.0.0:8080 run:app  # Hypercorn 0.5.x 目前会导致数据库访问报错
python run.py
