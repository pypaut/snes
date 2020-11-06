# Elder Scrolls Online

### What is it ?

I could not launch Minion on Linux, so I had the idea to build it myself.
Not quite yet, but the `eso.sh` script will automate the installation of AddOns
for ESO (for a basic Steam Play/ProtonDB installation).

### What to know

`addons.txt` contains a list of addons' IDs. If there is an addon you
want to install, look it up on
[ESOUI](https://www.esoui.com/downloads/index.php), and in the URL of its
description page.

Example : `65` is the ID of the _InventoryGridView_ addon.

```
https://www.esoui.com/downloads/info65-InventoryGridView.html
```

### Usage

Once you know the ID of your addon, add the following line to the `addon.txt`
file : `<id>  <addon's name>`.

The name is actually optional, but I personally can't remember each one with ID
only. I suggest you just mimic what I did for my own list.

Then you can just execute the script :

```
./eso.sh
```

Wait until you see the `Done!` message.

### Current configuration

I use Linux Mint 20 x86\_64, and I play ESO from Steam Play, using ProtonDB
5.0-10.
