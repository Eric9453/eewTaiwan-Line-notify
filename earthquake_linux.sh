#!/bin/sh
#僅適用於LINUX環境。請將以下內容儲存為earthquake.sh ，並注意檔案權限以免執行失敗。
#使用方式：由地牛警報發生時觸發此shell，此版本已含震度及預報秒數通知，並擷圖後傳至Line以圖文通知
#如需其他進階功能可透過調用earthquake.py於HA中完成(如TTS等)。
#E.T.

#call py to do TTS in HA creditd by Rain Chi大大
python3 earthquake.py "$@"

#給通知用的時間戳
date_n=$(date +"%Y-%m-%d %H:%M:%S")

#Linux系統內建擷取地牛視窗圖，命名為f.png可自行更改
gnome-screenshot -wB --file=f.png

#給LINE用crul傳圖參照的擷圖路徑：
#修改說明：第一次觸發截圖時會系統會跳出小視窗詢問截圖儲存位置，請選好儲存位置後，回到此處改成你的存圖路徑
image='/home/eric/EK/f.png'

#如果虛擬機擷圖速度慢的再把等待秒數的註解井號打開
#sleep 3s

#請填入你的line notify偷啃
line_token="你的line notify token"

#Line傳出的文字訊息，enter可提供換行
msg="　
$date_n 
地震來襲警告：
預估震度$1級，將於$2秒後到達！"

#這裡不用動，謝謝配合
curl -X POST https://notify-api.line.me/api/notify \
       -H "Authorization: Bearer $line_token" \
       -F "message=$msg" \
       -F "imageFile=@$image"
