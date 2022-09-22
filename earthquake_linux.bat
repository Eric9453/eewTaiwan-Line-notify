#!/bin/sh
#僅適用於LINUX環境。請將以下內容儲存為earthquake.sh ，並注意檔案權限以免執行失敗。使用方式：由地牛警報發生時觸發此shell，此版本不含震度及預報秒數通知，如需此功能請搭配python於HA中完成
#E.T.

#call py to do TTS in HA creditd by Rain Chi大大
python3 earthquake1.py "$@"

                    #日期，給截圖檔案用的時間戳
                    d=$(date +"%Y-%m-%d %H:%M:%S")

#給通知用的時間戳
df=$(date +"%Y-%m-%d %H:%M:%S")

#系統內建擷取地牛視窗圖，命名為d.png可自行更改
gnome-screenshot -wB --file=d.png

#給LINE用crul傳圖參照的擷圖路徑，第一次觸發時會跳出視窗請先選好儲存位置，請改成你的
image='/home/eric/EK/d.png'

#如果虛擬機擷圖速度慢的再把等待秒數的註解井號打開
#sleep 3s

line_token="你的line notify偷啃"

msg="　
$df 地震來襲警告，
預估震度$1級，將於$2秒後到達！"


curl -X POST https://notify-api.line.me/api/notify \
       -H "Authorization: Bearer $line_token" \
       -F "message=$d $smg" \
       -F "imageFile=@$image"
