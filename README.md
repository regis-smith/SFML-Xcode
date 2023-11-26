# SFML-Xcode
A Basic Makefile for Compiling an SFML Project

This setup targets beginning programmers who use Xcode on MacOS.

Steps:

1) Download SFML from https://sfml-dev.org.  There are two different downloads for the Mac, depending on your CPU.  To find your CPU type, visit the Apple menu in the upper left corner of the display and choose "About This Mac".  If the "Chip" is given as Apple M1, M2, or M3, then you have an ARM CPU (newer Macs).  Otherwise you have an Intel CPU.  Here are download links as of 2023-11-26.  Choose the one for your "Chip".

     * https://www.sfml-dev.org/files/SFML-2.6.1-macOS-clang-64-bit.tar.gz  (**Intel CPU Download**)
     * https://www.sfml-dev.org/files/SFML-2.6.1-macOS-clang-arm64.tar.gz (**ARM CPU Download**)

<p align="center">
<img width="286" alt="Screenshot 2023-11-26 at 10 05 59 AM" src="https://github.com/regis-smith/SFML-Xcode/assets/73651070/fdcd8398-8b49-4d2b-a1d3-8e17e6664862">
</p>

2) Extract the download to a place you can easily find.  When I opened the download in Safari, it automatically extracts the file into my Downloads directory.  You can move and/or rename the folder.  Example: I placed the folder in my Home directory (Finder -> Go -> Home) and renamed it to SFML-2.6.1.

3) Create a Project in Xcode of type "External Build System".

<p align="center">
<img align="center" width="732" alt="Screenshot 2023-11-26 at 11 07 47 AM" src="https://github.com/regis-smith/SFML-Xcode/assets/73651070/cf354b33-b688-4046-882b-e26e50194420">
</p>

You should see "/usr/bin/make" for the "Build Tool" as follows.  (If you don't see this, likely this tutorial is out of date.)

<p align="center">
<img width="732" alt="Screenshot 2023-11-26 at 11 08 37 AM" src="https://github.com/regis-smith/SFML-Xcode/assets/73651070/aa15b3dd-f540-4d4c-83c7-f628fd447432">
</p>

4) Add my main.cpp, Makefile, and sfml.xcconfig files to your project.  Change the first line of Makefile to reflect where you extracted the SFML library.  (If you placed it in your Home directory with name SFML-2.6.1 you do not have to make any changes.)  Edit the part of the first line after "${HOME}/".

<p align="center">SFML_DIR=${HOME}/SFML-2.6.1</p>

so if you extrracted the library into your Downloads folder and did not rename, you can try changing the first line to

<p align="center">SFML_DIR=${HOME}/Downloads/SFML-2.6.1-macOS-clang-64-bit</p>

for Intel CPUs, or

<p align="center">SFML_DIR=${HOME}/Downloads/SFML-2.6.1-macOS-clang-arm64</p>

for ARM CPUs.


5) Try to build it.  If building was successful, you should add the executable to your project's "scheme".

<img width="600" alt="Screenshot 2023-11-26 at 12 30 06 PM" src="https://github.com/regis-smith/SFML-Xcode/assets/73651070/91e7b50a-7ea9-4f43-a74e-6c2bbbbe08f3">
<img width="762" alt="Screenshot 2023-11-26 at 12 31 21 PM" src="https://github.com/regis-smith/SFML-Xcode/assets/73651070/0e075ba1-9e67-4125-bca4-6f95fc873b5e">
<img width="732" alt="Screenshot 2023-11-26 at 12 32 27 PM" src="https://github.com/regis-smith/SFML-Xcode/assets/73651070/7a93eeff-a8a5-4695-929b-2995b3dd4655">


