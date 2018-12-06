# IBM-i-Python-to-RPG-Java
This project is a test case that demonstrates a bug in IBM i when calling from Python to an RPG program that includes Java code.  It has been discussed on MIDRANGE-L (https://archive.midrange.com/opensource/201810/msg00017.html) and Ryver (https://ibmioss.ryver.com/#posts/1909045).  A user on MIDRANGE-L reported the same issue with PHP  calling RPG that includes Java.


The RPG program will fail the first time Java code is used. In this test case, that’s instantiating a String containing the letter “A”.  When it fails, it will generate a spooled file and 2.2 GB of dump files (to either the root or your home directory).

 
**Environment:**
- IBM i 7.3 (SF99730  18242)
- Java 8  32-bit (SF99725  10)
- python3.ppc64 3.6.7-0
- python3-itoolkit.ppc64 1.5.1-1
 

**Recreating:**
1. Compile the RPG code (if you compile to a different library than QGPL, make sure and change the Python script).
2. Ensure you’re using the correct JVM.
3. Run the Python script.
