virtualenv env --python python2.7
source env/bin/activate

pip install -r tilequeue/requirements.txt
cd tilequeue && python setup.py develop && cd ..
pip install -r tileserver/requirements.txt
cd tileserver && python setup.py develop && cd ..
pip install -r vector-datasource/requirements.txt
cd vector-datasource && python setup.py develop && cd ..
