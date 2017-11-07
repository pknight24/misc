console.log("Hello, World!");

function fib(x)
{
    if (x == 0) return 1;
    else return x * fib(x-1);
}

var output = fib(4);
console.log(output);
