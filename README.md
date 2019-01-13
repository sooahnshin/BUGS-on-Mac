# BUGS-on-Mac
How to install WinBUGS and OpenBUGS on Mac

## OpenBUGS
**This document is originally from [here](https://sites.google.com/site/mmeclimate/-bayesmet/openbugs-on-mac-os-x)!**
1. Install [Homebrew](https://brew.sh/).
1. Open the terminal on your Mac and type: `brew install wine`
1. Download the setup program for OpenBUGS on Windows from [here](http://www.openbugs.net/w/Downloads) (current version: *OpenBUGS323setup.exe*).
1. Still in Terminal, navigate to the directory where the setup program was downloaded.
   * Use `cd` to change directories and `ls` to check the files in your current directory.
   * Probably, it will be in Downloads folder (*i.e.*, type `cd Downloads`)

1. Once you are in the right directory, type: `wine OpenBUGS323setup.exe`
1. OpenBUGS is now successfully installed! To check whether it is working properly, run `R2OpenBUGS.R` file from this repository.
   * The only thing you have to edit in the R file is the directory where OpenBUGS was installed.
   * Use `CMD + SHIFT + .` in Finder to check the hidden directory such as ".wine" folder.
   
## WinBUGS
**This one is much simpler!**
1. Download WinBUGS from [here](https://www.mrc-bsu.cam.ac.uk/software/bugs/the-bugs-project-winbugs/).
2. To check whether it is working properly, run `WinBUGS.R` file from this repository.
   * Again, you have to specify the directory where WinBUGS was installed.
   * Probably, it will be in Downloads folder.
