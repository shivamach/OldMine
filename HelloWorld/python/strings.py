print("trying basic stuff out")
m1 = "hello"
m2 = "World"
name = "shivam"
univ = "universe"

print(m1,", ",m2)
print(m1.upper())
print(m2.lower())

message = '{}, {}. welcome !'.format(m1,m2.upper())
print(message)
message = message.replace(m2.upper(),name.upper())
#replacing with methods should be precise
print(message)
name = "not shivam"
#trying out replace with f strings
message = f'{m1}, {m2.upper()}. welcome!'
print(message)
message = message.replace(m2.upper(),name.upper())
print(message)

#everything covered ayyay