### 未來要做地震分級動作的版本，大於6級的call開門+斷電器+大聲TTS通知的script；否則call單純TTS通知script
### 未來才要完成，現在不要用這支py
#credit by RainChi大大(https://pastebin.com/zR9BWdnK), modified by EricTai
from requests import post
from datetime import datetime
import sys
import time #轉換時間形式用，如無需求可註解
 
level = str(sys.argv[1])
#level = level.replace("+", ""); #把+註解掉，避免local tts停頓問題，有需要可可已打開此註解
#seconds = str(sys.argv[2]) #Rain Chi大大的原code
second = int(sys.argv[2]) -3 #把Rain Chi大大的秒數減3秒供倒數用，會出現負數如下校正

#負數秒數校正，如不需要可以註解掉
if second < 0:
	seconds = str(second +3)
else:
	seconds = str(second)
#如需註解，至此結束

ts = datetime.timestamp(datetime.now())+float(seconds)
dt = datetime.fromtimestamp(int(ts)) #Eric轉換時間形式，方便閱讀
 
struct_time = time.localtime(int(ts))
tt = time.strftime("%Y%m%d %H%M%S", struct_time) #Eric轉換時間形式，方便閱讀  ####這段有點亂，當初在測試

##以下註解未測試
##ha_ip_port = "你的HA主機IP:連接阜"
##ha_token = "你的HA權杖偷啃"
##url = "http://$ha_ip_port/api/services/script/google_tts"
##headers = {"Authorization": "Bearer $ha_token"}

url = "http://這裡放HA的ip跟port/api/services/script/1663426487731"
headers = {"Authorization": "Bearer 這裡放HA的長期存取權杖"}
#data = {"level": level, "seconds": seconds,"timestamp": str(int(ts))} #原時間輸出為時間戳
data = {"level": level, "seconds": seconds,"timestamp": str(dt)} #時間戳改引用常規形式

response = post(url, headers=headers, json=data)
print(response.text)
