@echo off
::此bat僅供win使用 credit by maxrdnew, modified by Eric

::轉call HA用
python earthquake.py %1 %2

::手動測試用，33級地震44秒後抵達
::python earthquake1.py 33 44

::設定LINE相關參數
set line_token="你的賴偷啃"
set msg="地震警報，%1級地震將於%2秒後來襲！"
set sticker="想傳的貼圖"
::貼圖請參照網站
curl -X POST https://notify-api.line.me/api/notify -H "Authorization: Bearer %line_token%" -F "message="%msg%"" -F "stickerPackageId=1" -F "stickerId=%%"
