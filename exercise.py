import datetime
import subprocess
import time

cmd = ['/root/sravya/exercise.exe']
while True:
    result = subprocess.run(cmd, stdout=subprocess.PIPE).stdout.decode('utf-8')

    datetime_object = datetime.datetime.now()

    with open('/usr/share/nginx/html/index.html', "w") as f:
        f.write("<html><body>Hi from python, time: <b>{}</b></p><br />".format(datetime_object))
        f.write("<p>from C: <b>{}</b></p></body></html><br />".format(result))

    time.sleep(5)

