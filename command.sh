RunAllTag  - python -m robot -i regression ./
RunExceptTag    - python -m robot -e regression ./
RunWithResultFolder - python -m robot -d results  test.robot     
RunWithCreateVar  - python -m robot -e regression  -v email1:Voratew2@gmail.com ./ - ส่วนใหญ่จะใช้ในการเปลี่ยนภาษา
RunMultipleFiles - python -m robot -d results .

Pabot
install - pip install -U robotframework-pabot
RunWithPabot   - python -m pabot --testlevelsplit ./
RunWithPabotLevelFiles    - python -m pabot --processes 2 ./