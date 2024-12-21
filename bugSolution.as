function myFunction(param1:String, param2:int = 0):void {
  trace(param1);
  trace(param2);
}

myFunction("Hello", 10); // Correct usage
myFunction("World"); // Correct usage, param2 defaults to 0

//Improved error handling:
try {
  myFunction(10, "World"); // Will throw an error during runtime
} catch (error:Error) {
  trace("Error: " + error.message);
}

//Type checking:
function myFunctionImproved(param1:*, param2:*):void{
  if(typeof param1 !== "string") {
    throw new Error("param1 must be a String");
  }
  if(typeof param2 !== "number"){
    throw new Error("param2 must be a Number");
  }
  trace(param1);
  trace(param2);
}

myFunctionImproved("Hello", 10);
//myFunctionImproved(10, "World"); // throws error
//myFunctionImproved("Hello"); // throws error