#!/usr/bin/env bash

alembic upgrade head
hypercorn -b 0.0.0.0:8080 run:app
