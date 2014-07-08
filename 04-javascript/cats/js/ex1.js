// Exercise 1 - The Fortune Teller
var kidCount = 27;
var partnerName = 'Wolfgang';
var geoLocation = 'Blue Mountains';
var jobTitle = 'Executive Junior Vice President';
var lifeStory = "You will be a " + jobTitle + " in " + geoLocation +
                ", and married to " + partnerName + " with " + kidCount + " kids.";
console.log(lifeStory);

// Exercise 2 - The Age Calculator
var currentYear = 2014;
var birthYear = 1980;
var age1 = currentYear - birthYear;
var age2 = age1 - 1; // Not their birthday yet.
console.log("They are either " + age2 + " or " + age1);

// Exercise 3 - The Lifetime Supply Calculator
var currentAge = 23;
var maximumAge = 100;
var perDay = 3; // Grams of heroin.
var lifeTimeSupply = perDay * 365.25 * (maximumAge - currentAge);
console.log("You will need " + lifeTimeSupply +
            " to last you until the ripe old age of X"); // 84 kilograms.

// Exercise 4 - The Geometriser
var radius = 15;
var circumference = 2 * Math.PI * radius; // 2 * PI * radius
var area = Math.PI * radius * radius; // PI * radius^2
console.log("The circumference is " + circumference);
console.log("The area is " + area);

// Exercise 5 - The Temperature Converter
var celcius = 18;
var farenheit = (celcius * 1.8) + 32;
console.log(celcius + "°C is " + farenheit + "°F");
farenheit = 1000;
var celcius = (farenheit - 32) / 1.8;
console.log(farenheit + "°F is " + celcius + "°C");
