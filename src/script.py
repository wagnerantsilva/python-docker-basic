from datetime import date
from endereco import Endereco

today = date.today()
print("Today's date:", today)
print("Hello Word Python Docker")

house = [200, 325,789,985,1025,1027,1029]

adress = Endereco()
for i in house:
    print(adress.myAdress(i))