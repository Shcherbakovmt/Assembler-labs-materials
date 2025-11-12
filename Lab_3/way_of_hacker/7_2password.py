reference = "Ekvxzsdlrl!vkszhjww1!sxixukrrx!rhrijpj0%mkpmybvlsst\"rj%iwpes!wqhjsuwesekqk"
password = ""

for i, char in enumerate(reference):
    # Вычитаем (i % 4 + 1) из кода символа
    password_char = chr(ord(char) - (i % 4 + 1))
    password += password_char

print(password)