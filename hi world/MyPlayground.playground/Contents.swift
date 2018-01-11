//: Playground - noun: a place where people can play

var sup = 22

var hello = "hi world"

let pi = 3.14

print(sup)

print(hello)

print(pi)

print("sup world")

print("sup world")

hello += " " + String(sup)

print (hello)

var apples = 3

var orange = 6

let appleSummary = "I have \(apples)"

let fruitSummary = "I have \(apples + orange ) of fruits"

print(appleSummary)

print(fruitSummary)

apples+=1

print(appleSummary)

let quotes = """
    "fruits" is \(fruitSummary)
    "apples" is \(appleSummary)
"""

print(quotes)

var idk = ["a","b","c","d","e"]

print (idk)

var shoppinglist = [Int]()

print(shoppinglist)

let individualScores = [75, 43, 103, 87, 12]

var teamScore=0

for score in individualScores {
    
    if score > 50   {
        teamScore += 3
    }
    else    {
        teamScore += 1
    }
}
print(teamScore)


