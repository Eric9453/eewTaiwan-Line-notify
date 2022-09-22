@echo off
::cd c:\\python
::cd C:\Users\T--SY\AppData\Local\Programs\Python\Python38\
::python earthquake.py %1 %2

::python earthquake1.py %1 %2

::python earthquake1.py 1 2


set msg="After %2 seconds a level %1 Earthquake will be coming..."
curl -X POST https://notify-api.line.me/api/notify -H "Authorization: Bearer xMoYGgZRAzAv66Djf2NMMiPHAVW3QjGJQydcud9F05Y" -F "message="%msg%"" -F "stickerPackageId=1" -F "stickerId=403"


pause

::bat教學版本-LINE curl
::set msg="After %2 seconds a level %1 Earthquake will be coming..."
::curl -X POST https://notify-api.line.me/api/notify -H "Authorization: Bearer 賴偷啃" -F "message="%msg%"" -F "stickerPackageId=1" -F "stickerId=403"

::curl -X POST "https://api.telegram.org/bot1388221561:AAEqQ9rJVFDHP2xXpkq8iV72kSoIsIXjFh8/sendMessage" -d"chat_id=610301513&text=Earthquake is coming!!!"

::https://static.worksmobile.net/static/wm/media/message-bot-api/line_works_sticker_list_new.pdf

::bat教學版本-LINE curl
::set msg="地震警報，%1級地震將於%2秒後來襲！"
::curl -X POST https://notify-api.line.me/api/notify -H "Authorization: Bearer 賴偷啃" -F "message="%msg%"" -F "stickerPackageId=1" -F "stickerId=403"
