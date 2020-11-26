#!/bin/bash
sudo apt install python3 python3-pip python3-venv -y

python3 -m venv testing-venv

. testing-venv/bin/activate

pip3 install -r ./requirements.txt

cd service1
pytest --cov .
cd ..
cd service2
pytest --cov .
cd ..

deactivate

rm -rf testing-venv
