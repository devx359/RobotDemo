
class mod1:
    def  __init__(self ,val):
        print("inside constructor with value "+val)

    def  something(self):
        return ("insode something")

    def add(self,a,b):
        val1 = int(a)
        val2 = int(b)
        val3 = val1 + val2
        return val3

    def  subtract(self ,a , b):
        val = int(a) - int(b)
        return val
