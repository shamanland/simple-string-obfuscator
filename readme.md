Simple String obfuscator
====

Use this simple tool to hide real string constants from decompilation.

![example][1]

Usage
----

Generate byte-array from pseudo-random integers.

```
./obfuscate_string.sh hello
```

Copy output to your code:

```
(new Object() {
    int t;
    public String toString() {
        byte[] buf = new byte[5];
        t = 1220204165; buf[0] = (byte) (t >>> 4);
        t = 1731395377; buf[1] = (byte) (t >>> 15);
        t = -1241489993; buf[2] = (byte) (t >>> 23);
        t = 56640078; buf[3] = (byte) (t >>> 19);
        t = 350056403; buf[4] = (byte) (t >>> 8);
        return new String(buf);
    }
}.toString())
```

Result
----

Before:

````
doSomethingWithSecret("hello");
````

After:

````
doSomethingWithSecret((new Object() {
    int t;
    public String toString() {
        byte[] buf = new byte[5];
        t = 1220204165; buf[0] = (byte) (t >>> 4);
        t = 1731395377; buf[1] = (byte) (t >>> 15);
        t = -1241489993; buf[2] = (byte) (t >>> 23);
        t = 56640078; buf[3] = (byte) (t >>> 19);
        t = 350056403; buf[4] = (byte) (t >>> 8);
        return new String(buf);
    }
}.toString()));
````

[1]: http://2.bp.blogspot.com/-zvc45ju5qs8/U6K8CUfOCCI/AAAAAAAAFYc/5lptaMNmXro/s1600/android-app-secretkey.jpg
