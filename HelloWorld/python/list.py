#trying out loop thing
courses = ['dsp','zitc','hdl','temp']
#end is not working but start is
for index,co in enumerate(courses,start = 1):
	print(index,co)
#list object has no attribute upper
#doing str to lists to str vice versa
courses_str = " - ".join(courses)
print(courses_str)
newlist = courses_str.split(" - ")
print(newlist)
#see very cool
 
lastitem = courses.pop()
print(lastitem)
print(max(newlist)) #max works on alphabets in alphabetical 
courses.sort(reverse = True)#return none as lists are mutating and it hsa many changes here
listt = ['first','second','last','zincoxide'] #can lists have numbers?? no it cant1
lit = sorted(newlist,reverse = True)
print(lit) #sorted works but sort doesnot
print(listt.sort(reverse = True))
#did some tuples and sets
#sets have union and intersection, tuples dont have stuff as they are inmutable
#print(dir(tuple))
#checking set ops on lists
#list1 = [2,4,6,0]
#list2 = [1,4,8,9]
#print(list1.intersection(list2)) not allowed






