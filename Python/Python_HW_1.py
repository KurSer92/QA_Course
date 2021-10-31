# Python_2. HW_1
# 1) Создать переменную типа String
st = 'this_is_a_string'
# 2) Создать переменную типа Integer
i = 5
# 3) Создать переменную типа Float
f = 5.55
# 4) Создать переменную типа Bytes
b = bytes('всебайты', encoding='utf-8')
# 5) Создать переменную типа List
list_type = ['строка', 321, '654', False]
# 6) Создать переменную типа Tuple
t_type = ('78', 56)
# 7) Создать переменную типа Set
s = set('множество')
# 8. Создать переменную типа Frozen set
fs = frozenset('множество')
# 9) Создать переменную типа Dict
dictionary = {'name': 'Sergei', 'age': 29}

# 10) Вывести в консоль все выше перечисленные переменные с добавлением типа данных.
print(st, type(st))
print(i, type(i))
print(f, type(f))
print(b, type(b))
print(list_type, type(list_type))
print(t_type, type(t_type))
print(s, type(s))
print(fs, type(fs))
print(dictionary, type(dictionary))

# 11) Создать 2 переменные String, создать переменную в которой сканкатенируете эти переменные. Вывести в консоль.
a = 'Python '
b = 'is cool'
c = a + b
print(c)

# 12) Вывести в одну строку переменные типа String и Integer используя “,” (Запятую)
print('Число', 5)
# 13) Вывести в одну строку переменные типа String и Integer используя “+” (Плюс)
print('Number ' + str(5))
