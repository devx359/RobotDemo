
class A:
    x = 10

    def __init__(self, name="deb"):
       # print(self.x)
        self.__name = name
    '''
    def get(self):
        print("get() called")
        return self.__name

    def set(self,naam):
        print("set() called")
        self.__name = naam

    name = property(get, set)
    '''
    @property
    def name(self):
        return self.__name

    @name.setter
    def name(self,value):
        self.__name=value

    @classmethod
    def check(self):
        print("inside check")

    @staticmethod
    def smell(val):
        print(val)


ob = A(name="shaan")
#print(ob.name)
#A.check()
A.smell("fssdf")
print("value of A: "+str(A.x))


def displaydecorator(fn):
    def display_wrapper(str):
        print('Output:', end=" ")
        fn(str)
    return display_wrapper


@displaydecorator
def fun1(sex):
    print(sex)
#vr = decorate(fun1)
#vr("sourav")

#fun1("chorom")

try:
    assert A.x == 11 , "Not equal to 10"

except NameError:
    print("found assertion error ")
except:
    print("caught")

ll = []
ll.insert(1,2)
ll.extend([4,6,1])
print(ll)
it=iter(ll)

while True:
    try:
        print(next(it))
    except StopIteration:
        break;


print("hello")




