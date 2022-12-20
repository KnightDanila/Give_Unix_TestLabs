import sys

showArgs = True
if showArgs:
    print(" ".join(sys.argv))

if len(sys.argv) > 1:{
    print("Hi, Catch a crab: " + " ".join(sys.argv[1:]))
}
else:
    print("*"*10)

    print("Hey, what up, what is you name")

    name = input()

    print("Catch a crab: " + name)

    print("*"*10)
