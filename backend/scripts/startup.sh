#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT prd_bulk_test_2_de_136393.wsgi:application
