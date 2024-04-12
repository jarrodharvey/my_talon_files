app: vscode
-

test: 
    user.attempt_image_click("/home/jarrod/Pictures/click_symbols/code_magnify.png")

key <phrase>:
    insert('key("')
    insert(phrase)
    insert('")')

sleep <number>:
    insert('sleep(')
    insert(number)
    insert(')')

croc <phrase>: insert("{phrase}: ")