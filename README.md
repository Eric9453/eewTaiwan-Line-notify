# eewTaiwan地牛wake up 轉 Line-notify通知
EEW地牛預警後，轉通知LINE
WIN/LINX雙版本可用


WIN：通知震度與預報秒數(感謝maxrdnew大大無償提供基本框架)

LINUX：通知震度與預報秒數，以及傳送地牛預報的畫面

進階功能(感謝Rain Chi大大無償提供)：
由bat/shell進一步觸發earthquake.py，將地震參數(震度、預報秒數)傳入HA中進一步做自動化通知
兩組參數在HA中為{{level}}  {{seconds}}
