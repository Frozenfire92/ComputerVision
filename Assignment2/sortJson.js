// Read in our json file
var fs = require('fs');
var map = JSON.parse(fs.readFileSync(process.argv[2], 'utf8'));
// Define some temp variables for sorting and output
var array = [];
var obj = {};
// Put the file into an array of arrays
Object.keys(map).forEach(function(key){
    array.push([key, map[key]]);
});
// Sort the array
array.sort(function(a,b){ return b[1] - a[1]; });
// Place the array back into an object
array.forEach(function(val){ obj[val[0]] = val[1]; });
// Write to a new file
fs.writeFileSync(process.argv[2].replace(".json", "") + ".sorted.json", JSON.stringify(obj, null, 2), 'utf-8');