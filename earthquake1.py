from requests import post
from datetime import datetime
import sys
import time
 
level = str(sys.argv[1])
#seconds = str(int(sys.argv[2]) -3) #我把Rain Chi大大的秒數減3秒加速倒數#原本寫法，但會出現負數
second = int(sys.argv[2]) -3

if second < 0:
	seconds = str(second +3)
else:
	seconds = str(second)

ts = datetime.timestamp(datetime.now())+float(seconds)
dt = datetime.fromtimestamp(int(ts))
 
struct_time = time.localtime(int(ts))
tt = time.strftime("%Y%m%d %H%M%S", struct_time) #Eric將時間碼作出修正，方便閱讀



url = "http://192.168.0.131:8123/api/services/script/google_tts"
headers = {"Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiI2ODRjYzg2ODM5ZTY0YmQ5ODE2ZmNmODc5NjVjNzBjMyIsImlhdCI6MTY2MzQ5MTI5MywiZXhwIjoxOTc4ODUxMjkzfQ.oa5JjdpwAWdBE-QTsegFHJ5kGzt1b7rRl5V4g1ZdbS0"}
data = {"level": level, "seconds": seconds,"timestamp": str(dt)}

response = post(url, headers=headers, json=data)
print(response.text)