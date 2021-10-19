function madLib(verb, adjective, noun) {
  return `I want to ${verb} your mom\'s ${noun} until she thinks I\'m the ${adjective}`;
}

console.log(madLib('make', 'best', 'guac'));

function isSubstring(searchString, subString) {
  return searchString.split(" ").includes(subString);
}

console.log(isSubstring("time to program", "time"));


console.log(isSubstring("Jump for joy", "joys"));

function fizzBuzz(array) {
  let output = []
  array.forEach(element => {
    if (element % 3 === 0 && element % 5 != 0 ) {
      output.push(element);
    } else if (element % 5 === 0 && element % 3 != 0 ) {
      output.push(element);
    }
  });
  return output
}

console.log(fizzBuzz([1,3,5,10,22,30]));


function isPrime(num) {
  for(let i = 2; i < num; i++)
    if(num % i === 0) return false;
  return num > 1;
}

console.log(isPrime(2));
console.log(isPrime(10));
console.log(isPrime(15485863));
console.log(isPrime(3548563));

function sumOfNPrimes(n) {
  output = [];
  for (let i = 2; output.length < n; i++)
    if (isPrime(i)) {
      output.push(i);
    }
  return output.reduce(summed);
  function summed(start , num) {
    return start + num;
  }
}

console.log(sumOfNPrimes(4))
