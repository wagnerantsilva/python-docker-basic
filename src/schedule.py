from schedule import *
import schedule
import time

def hello():
    print("Hello World...")
    
schedule.every(1).minutes.do(hello)    
    
while True:
    schedule.run_pending()
    time.sleep(1)
    