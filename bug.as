function myFunction(param1:String, param2:int):void {
  trace(param1);
  trace(param2);
}

myFunction("Hello", 10); // Correct usage
myFunction("World"); // Incorrect usage, missing an int parameter
myFunction(10, "World"); // Incorrect usage, parameters are in wrong order and wrong type