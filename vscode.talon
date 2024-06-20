app: vscode
-

key <phrase>:
    insert('key("')
    insert(phrase)
    insert('")')

sleep <number>:
    insert('sleep(')
    insert(number)
    insert('s)')

croc <phrase>: insert("^{phrase}$: ")