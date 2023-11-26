# SFML-Xcode
A Basic Makefile for Compiling an SFML Project

This setup targets beginning programmers who use Xcode on MacOS.

Steps:

1) Download SFML from https://sfml-dev.org.  There are two different downloads for the Mac, depending on your CPU.  To find out, visit the Apple menu in the upper left corner of the display and choose "About This Mac".  If the "Chip" is given as Apple M1, M2, or M3, then you have an ARM CPU (newer Macs).  Otherwise you have an Intel CPU.  Here are download links as of 2023-11-26.  Choose the one for your "Chip".

     * https://www.sfml-dev.org/files/SFML-2.6.1-macOS-clang-64-bit.tar.gz  (*Intel CPU Download*)
     * https://www.sfml-dev.org/files/SFML-2.6.1-macOS-clang-arm64.tar.gz (*ARM CPU Download*)

<img width="286" alt="Screenshot 2023-11-26 at 10 05 59 AM" src="https://github.com/regis-smith/SFML-Xcode/assets/73651070/fdcd8398-8b49-4d2b-a1d3-8e17e6664862">

2) Extract the download to a place you can easily find.  When I use Safari, it automatically extracts the file into my Downloads directory.  You can move and/or rename the folder.  Example: I placed the folder in my Home directory (Finder -> Go -> Home) and renamed it to SFML-2.6.1.

3) Create a Project in Xcode of type "External Build System".

<img width="732" alt="Screenshot 2023-11-26 at 11 07 47 AM" src="https://github.com/regis-smith/SFML-Xcode/assets/73651070/cf354b33-b688-4046-882b-e26e50194420">

<img width="732" alt="Screenshot 2023-11-26 at 11 08 12 AM" src="https://github.com/regis-smith/SFML-Xcode/assets/73651070/8fc6f5e4-be5f-4fc8-9353-e787501e49f0">

<img width="732" alt="Screenshot 2023-11-26 at 11 08 37 AM" src="https://github.com/regis-smith/SFML-Xcode/assets/73651070/aa15b3dd-f540-4d4c-83c7-f628fd447432">

4) Add my Makefile and sfml.xcconfig files to your project, and try to build it.
