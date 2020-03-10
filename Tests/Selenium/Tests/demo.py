x = "abcdef,ghj"
a=5
b=7
c=8
#if 5 > x :
#    print("5 is gretaer than value "+str(x));

#y , z = 22 , 34 ;
#print("y= "+str(y)+" z= "+str(z))

def myfun():
    #print("I am inside myfun "+str(x));
    #print(x[2:4]);
    #print("length "+str(len(x)));
    #arr=x.split(",");
    #print("gh" in x );

    txt = "I want a= {2} b= {1} c = {0}";
    #print(txt.format(a,b,c))
    #print(x.capitalize());
    #print(x.upper())
    #print(x.title())
    print("---------")
    print(bool(0))
    print(bool(5))
    #print(bool(""))
    #print(bool("sdds"))

    mylist = ["ab","cd","ef"]
   # print(mylist[0])
    #mylist[0]="ew";
    #print(mylist)

   # for xy in mylist:
        #print(xy)

    #if "cd" in mylist:
        #print("hell yeah")

    #print(len(mylist))
    arr = []
    for zz in range(5):
       # print(zz)
        arr.insert(zz,10+zz)


    #print(arr)
    arr.append(88)
    #print(arr)
    arr.pop(2)
    #print(arr)
    arr.pop()
   # print(arr)

    #print(type(arr))

    list2 =  list(("apple","cherry"))
    #print(len(list2))

    tuple1 = {11,22,33}

    for x in tuple1:
        print(x)

    tuple1.add(44)
    tuple1.update([233,345,567])

    #print(tuple1)

    tuple1.discard(3456)
    #print("tuple1: "+str(tuple1))
    tuple2 = {221,441}
    #print("tuple2: "+str(tuple2))
    tuple3=tuple1.union(tuple2)

    #print(tuple3)

    mydictionary = {
        "user" : "akbar" ,
        "id" : 1
    }

   # print(mydictionary["user"])
    #print(mydictionary.get("id"))

    for x in mydictionary:
        print(x)
    print("----------------")
    for x in mydictionary.values():
        print(x)

    mydictionary["id"]=2

   # print(mydictionary)



    mydictionary["newkey"]="carmodel"

    for x,y in mydictionary.items():
         print(x,y)








myfun()