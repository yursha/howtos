# Concepts
- Functions must be reentrant. Non-reentrant functions return pointers to static objects owned by the
function. Such functions can be troublesome since a previously returned result can change if the function is called again, perhaps by another thread.
- The functions must do bounds-checking on its argument buffers so as to not write past them. (Handled automatically in Java)

## Bash specifics
Bash functions don't allow to return a value to the caller. When a bash function ends its return value is its status: zero for success, non-zero for failure. To return values, you can set a global variable with the result, or use command substitution, or you can pass in the name of a variable to use as the result variable.

Although bash has a return statement, the only thing you can specify with it is the function's status, which is a numeric value like the value specified in an exit statement. The status value is stored in the $? variable. If a function does not contain a return statement, its status is set based on the status of the last statement executed in the function. To actually return arbitrary values to the caller you must use other mechanisms.

# Return a value

The simplest way to return a value from a bash function is to just set a global variable to the result. Since all variables in bash are global by default this is easy.

```bash
# bash - via global variable
function myfunc() {
    myresult='some value'
}

myfunc
echo $myresult
```

The code above sets the global variable myresult to the function result. Reasonably simple, but as we all know, using global variables, particularly in large programs, can lead to difficult to find bugs.

A better approach is to use local variables in your functions. The problem then becomes how do you get the result to the caller. One mechanism is to use command substitution.

```bash
# bash - via command substitution
function myfunc() {
    local myresult='some value'
    echo "$myresult"
}

result=$(myfunc)
echo $result
```

Here the result is output to the stdout and the caller uses command substitution to capture the value in a variable. The variable can then be used as needed. Not suitable for functions that want printing diagnostic information as a side effect. So you have decide if function will return value or print something but not both at design time.

The other way to return a value is to write your function so that it accepts a variable name as part of its command line and then set that variable to the result of the function.

```bash
# bash
function myfunc() {
    local  __resultvar=$1
    local  myresult='some value'
    eval $__resultvar="'$myresult'"
}

myfunc result
echo $result
```

Since we have the name of the variable to set stored in a variable, we can't set the variable directly, we have to use eval to actually do the setting. The eval statement basically tells bash to interpret the line twice, the first interpretation above results in the string result='some value' which is then interpreted once more and ends up setting the caller's variable.

When you store the name of the variable passed on the command line, make sure you store it in a local variable with a name that won't be (unlikely to be) used by the caller. If you don't, and the caller happens to choose the same name for their result variable as you use for storing the name, the result variable will not get set.

# Declare a function
```bash
# bash
sum () {
    echo (( $1 + $2 ))
}

echo $(sum 3 4)
```
