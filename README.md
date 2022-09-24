# eewTaiwan地牛wake up 轉 Line-notify通知
EEW地牛預警後，轉通知LINE
WIN/LINX雙版本可用 

WIN：通知震度與預報秒數(感謝maxrdnew大大無償提供基本框架) \
LINUX：通知震度與預報秒數，以及傳送地牛預報的畫面

進階功能(感謝Rain Chi大大無償提供)：
- 由bat/shell進一步觸發earthquake.py，將地震參數(震度、預報秒數)傳入HA中進一步做自動化通知
- 兩組參數在HA中為{{level}}  {{seconds}}

感謝Rain Chi(@rain931215)大大提供原始想法及運作框架，感謝maxrdnew大大跟進優化

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://github.com/Eric9453/eewTaiwan-Line-notify/blob/main/example%20pics/capture1.png">
  <source media="(prefers-color-scheme: light)" srcset="https://github.com/Eric9453/eewTaiwan-Line-notify/blob/main/example%20pics/capture1.png">
  <img alt="Shows an illustrated sun in light color mode and a moon with stars in dark color mode." src="https://user-images.githubusercontent.com/25423296/163456779-a8556205-d0a5-45e2-ac17-42d089e3c3f8.png">
</picture>
