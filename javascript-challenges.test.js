// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and codedMessage +=s a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

const secretCodeWord1 = "Lackadaisical"
// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook"
// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric"
// Expected output: "3cc3ntr1c"

// b) Create the function that makes the test pass.
// create an empty variable to hold our future coded string
//start with a  function and lengthy if else statement
// create a loop to iterate over ever letteracter of our string
 // set our conditions where if [i] which is the current index of the letter is stricly equal to the given letter 
      
//  const encoded = (string) => {
// // create an empty variable to hold our future coded string
//     let codedMessage = ""
// // create a loop to iterate over ever letteracter of our string
//     for (let i = 0; i < string.length; i++) {
//         //create a lengthy if else statement
//         if (string[i] === "a") { //set our conditions where if [i] which is the current index of the letter is stricly equal to the given letter
//         codedMessage += '4'
//     } else if (string[i] === "e") {
//         codedMessage += '3'
//         } else if (string[i] === "i") {
//             codedMessage += '1'
//         } else if (string[i] === "o") {
//             codedMessage += '0'
//         } else {
//             codedMessage += string[i]
//         }
//     }
//     return codedMessage;
// }





//  =============================================================================
//create a function that takes in a string and replaces certain strings into a string of a number
const capitalizeFirstLetter = (string) => {
    return string.charAt(0).toUpperCase() + string.slice(1);
}
//Create a variable to hold the newly formed string
const newWord = ""
const encoded = (string) => {
//.split to split the string into an array with every character being independent
//.map to go through our new array
return string.split('').map(letter => {
// Change ever character to its designated number
    if (letter === 'a') 
        return '4'
    else if (letter === 'e') 
        return '3'
    else if (letter === 'E') 
        return '3'
    else if (letter === 'i') 
        return '1'
    else if (letter === 'o') 
        return '0'
//.join to join our array back into a string
    return letter}).join('')
}
// Jest test
    describe("encoded", () => {
    it("should replace the given letters with number to make it into a 'coded' word", () => {
    expect (encoded(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
    expect (encoded(secretCodeWord2)).toEqual("G0bbl3dyg00k")
    expect (encoded(secretCodeWord3)).toEqual("3cc3ntr1c")
})
})



    


// Pseudo code:

// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

const hand1 = [5, 5, 5, 3, 3]
// Expected output: true
const hand2 = [5, 5, 3, 3, 4]
// Expected output: false
const hand3 = [5, 5, 5, 5, 4]
// Expected output: false
const hand4 = [7, 2, 7, 2, 7]
// Expected output: true

// b) Create the function that makes the test pass.

// Pseudo code:

// function to count occurrences of each element in an array
const countHand = (hand) =>
// Initialize an empty object to store counts
// Iterate through each element in the array for num in arr
// Update counts object with the current element
// counts[num] = (counts[num] || 0) + 1
// "counts" is are accumulator "num" is our currentValue
// Set our initializer to 0
  hand.reduce((counts, num) => ({ ...counts, [num]: (counts[num] || 0) }),{
})
// Function to check if an array represents a full house
const isFullHouse = (hand) => {
// Get the counts of occurrences for each element in the array
  const counts = countHand(hand)
//Create a variable to check if the array has 2 of the same integer value
  const hasPair = Object.values(counts).includes(2)
//Create a variable to check if the array has 3 of the same integer value
  const hasThreeOfAKind = Object.values(counts).includes(3)
//Return both variables to get a fullhouse
  return hasPair && hasThreeOfAKind
}

const result = isFullHouse([5, 5, 5, 3, 3])

// Jest test
describe('isFullHouse function', () => {
  it('should return true for a full house hand', () => {
    expect(result).toEqual(true)
    expect(result).toEqual(false)
    expect(result).toEqual(false)
    expect(result).toEqual(true)
  })
})
