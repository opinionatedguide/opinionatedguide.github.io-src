Title: Opinionated Engineering
Date: 2019-7-27 12:00
Modified: 2019-7-27 12:00
Category: Engineering
Tags: Engineering
Slug: OpinionatedEngineering
Authors: Vega Deftwing

[TOC]

# Preface

Hey there.

My name is Vega. I know there are plenty of tutorials and ways to learn online be it on YouTube, SkillShare, or online classes provided for free by various universities. The difference here is there is no content you'll never use, no babysitting, and lots of bias as a result of personal experience. My views of things like what programming languages are bad or what hardware you should buy to learn on will be expressed directly and bluntly. This isn't to say I won't explain my reasoning, just that I'm not going to be apologetic when I say Javascript, PHP, Java, Arduino (at least the 328p), and Windows 10 are trash - though I will still likely talk about all of these things.

I by no means expect you to share my same biases, in fact, I hope you do not and that at one point or another we can discuss why you think I am wrong, as that is the only way I can learn.

With that said, what is this exactly?

This is a guide for understanding the power the humble electron has in our lives. Electricity, digital logic, code, computers, embedded systems, these things are all around us every second of everyday. As I type this I'm wearing a smart watch, I have a smart phone in my pocket, and I'm using a desktop computer. Each of these devices contains dozens of smaller computers, power supplies, wireless interfaces, etc. My goal with this is to teach you how all of this works and how to use it from transistors to high level code to useful user applications.

I will be assuming you are of reasonable technical ability already- that is the concept of how to proficiently use most types of generic software like text editors, navigation of a file manager, etc-  furthermore, I will avoid going into high level math, chemistry, and physics as much as is practical- mostly because knowing these things is typically not actually useful in the daily life of someone who works on any of this beyond those that are doing cutting edge research or are planning to teach, in which case you should actually go to college instead of reading this. For everyone else, welcome. This is the document which can save you going to college and taking classes full of useless information you will inevitably forget and for which employers don't care about to begin with.

Following along will require a few things. The first of which is dedication and time. If you don't have the desire to put in at least a little bit of work there is simply no way I can help, that said, if you're reading this instead of watching Netflix I believe that's already proof enough you want to learn. Next is hardware and software, namely you'll be needing a few development boards and linux, but I'll get into those with time; however, for convince, everything referenced to be downloaded or physical items to be purchased are all listed in Appendix C

Before we get started there are a few things I recommend reading and watching first. These should give you a bit of an overview of some of the things that will be covered to give you at least a tiny bit of familiarity as each concept comes up.

---

I recommend this overview of the topics covered in CS: [Map of Computer Science](https://www.youtube.com/watch?v=SzJ46YA_RaA) by Dominic Walliman

Also by Walliman, a video on [How to Read Math](https://www.youtube.com/watch?v=Kp2bYWRQylk) and the cheat sheet from it:

[How To Read Math, Cheat Sheet](https://live.staticflickr.com/4671/40544016221_61cf8944d1_h.jpg)


# Ⅰ - Community

The only way to be successful in this journey is to make friends along the way. Some of this get's really, really difficult. You *will* get stuck. Having friends to help makes it possible. Find group chats on telegram, join IRC channels, get on some forums, and ask questions on Reddit. Working with people is a lot more fun and you'll learn so much more.

Beyond that, having inspiration each day can be a huge booster shot to your motivation and creativity. Some sites I use nearly daily to finding good new material are:

https://news.ycombinator.com/

https://hackaday.io/ | www.hackster.io/

https://www.bleepingcomputer.com/

https://www.humanreadablemag.com/morningcupofcoding

While much less active, I've found some of these to have great information as well

https://n-o-d-e.net/index.html

https://www.alchemistowl.org/pocorgtfo/

https://www.youtube.com/user/DEFCONConference

(There are many more links in the 'Other Great Resources' section at the bottom of this document)

Oh, and to mention it now

![Image result for dunning kruger effect xkcd](https://imgs.xkcd.com/comics/impostor_syndrome.png)

Yes, there is always a relevant XKCD, and yes, you will always feel like everyone knows more than you. Don't stress about asking stupid questions:

> Frequently in chats, whether telegram, IRC, slack, or discord, someone says something like this:
> 
> <AnonOtter> Anyone know rust? Having an issue.
> 
> How that question is often read:
> 
> <AnonOtter> Can someone to commit to being able to solve my problem with rust, spending as much time as necessary, without them even knowing what the actual problem is or if it's even a rust problem?
> 
> Hopefully it's clear why questions like this rarely result in direct answers.
> 
> - There are very few people who could be called experts in every facet of whatever is being asked
> - Imposter syndrome is common
> - Most people won't write that blank check for time/help commitment
> 
> Instead, share:
> 
> - The goal - "Trying to query for a list of tags on a post" - See [The XY Problem](http://xyproblem.info/)
> - The problem - "I'm getting back these results"
> - The expectation - "but it should be these results"
> - Any context or previous research you've done
> - If possible, a simplified example. 3v4l for php, jsfiddle for html/js/css, etc. are great, otherwise a paste site.
> - What you've already tried
> 
> This allows anyone there to try to help. Many skills transfer well to other languages or platforms. At minimum, you might get an idea for something you haven't tried yet. Sometimes you'll even solve your own problem while narrowing down the simplest possible test case.
> 
> Oh, and don't snark at well-intentioned answers. It's rude and discourages participation.

--from https://bad.pet/q/

The technical community can be ruthless with it comes to expecting people to have 'basic' knowledge sometimes, but don't let it get to you. I do want to provide some general ideas that, while not universally, are generally shared among the engineering and surrounding community:

Ⅰ - Any good solution is fast, easy to understand, and above all elegant.

Ⅱ - Any task which can be automated should be - if a computer can do it faster than you then you shouldn't do it by hand

Ⅲ - Any problem that has been solved in a way that satisfies the above two rules should be looked at for reuse before reinventing the wheel

Ⅳ - Any question which has already been answered should not be left to a human to answer again.

Ⅴ- All knowledge should be free†

† within practicality, trade secrets are obviously a thing, and I'm not crazy. I mean like publicly funded research and what not. While the specifics of this rule vary amongst engineering types it is generally a core belief.

On the note of point Ⅲ...

![Standards](https://imgs.xkcd.com/comics/standards.png)

Though the one I was stressing here was really Ⅳ, you should **always** check the internet before asking in chat. It's not that we're being rude, it's just a matter of courtesy. If you're unsure of the answer or it's validity in your case, by all means ask, but asking good questions, and only when necessary, will quickly help you make friends in chat much faster. Note, there is one exception: if chat is currently talking about something that you know don't know about and it's already relevant to the conversation, it's totally reasonable to interject and ask for a super quick primer on what's going on or a relevant link. This may seem obvious, but a good number of technical chats die because of exactly the aforementioned problems. (or gatekeeping, but that's a whole different matter...) so please don't ask things a search engine can already answer (but don't feel bad asking a question when the all mighty Google can't)

TLDR: RTFM & STFW http://www.catb.org/esr/faqs/smart-questions.html#rtfm

![Arch Logo]({static}/openg/xkcdtime.jpg)

**Finally, **and I can't stress this enough, I think balancing your creativity among other interests and looking for ties between them can lead to more good than any of thing mentioned above. I enjoy playing music, reading, and writing, so I find inspiration in these media. There are countless electrical hardware and software tools that use hands on programming when playing music. In books I find ideas for what an author may have thought only futuristic when written. I never know when my mind will strike similar gold when writing for myself. Find a hobby and bend it to this as you go along. Like photography? Lean about the internals of a camera. Like cars? Look up how the ODB2 interface actually works. Nothing is magic and the internet will likely have answers and give you ways to apply this knowledge that you care about.

In general I've found site specific forms and Reddit to be the best platforms for most things, with some others finding their main following in other places though. For example I'm in a large technical chat group with Furries on Telegram and some open source tools still thrive on IRC. Also, if your reaction to that is "Furries? How can that be relevent?" Well, normally it's not. Most of what we talk about is just normal engineering-y topics, but having something else in common helps. That said, there's more cross over in any community than you might think:

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Custom protogen commission auction Now up ! <br><br>watch the video for more details<a href="https://t.co/TAeAPNtVEB">https://t.co/TAeAPNtVEB</a><br><br>auction link:<a href="https://t.co/Q7ZxERjZW5">https://t.co/Q7ZxERjZW5</a> <a href="https://t.co/aq5iM2nOVE">pic.twitter.com/aq5iM2nOVE</a></p>&mdash; Expensive black cheese (@JtingF) <a href="https://twitter.com/JtingF/status/1215796334420094977?ref_src=twsrc%5Etfw">January 11, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

No matter what you care about, know there's a wide range of communities that would be thrilled to have you, and you can always combine what you learn here with any of the other interests you have to make the things your passionate about better!

<iframe width="100%" height="450" src="https://www.youtube.com/embed/0QO0yZldC2M?list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Further reading:

[Assholes: A Probing Examination](https://www.nomachetejuggling.com/2019/06/03/dont-hire-assholes/)

[Death to Bullshit](https://deathtobullshit.com/) [(mirror)](https://web.archive.org/web/20191217003321/http://deathtobullshit.com/)

# Ⅱ - Learn how to learn

I'm going to keep this short and sweet: Nobody learns (effectively) by being shown what to do. You can watch hundreds of hours of people playing guitar, even explaining how they do it, but you wont be able to randomly pick one up and play if you never have before. Furthermore, as much as you can learn from direct reading and instruction, it has it's place and limits. This guide, book, whatever you want to call it, was never meant to be followed like instructions. You should go out on your own and poke around, get lost in the weeds as you go. If you find a topic dull, don't read it as in depth. I don't want you wasting your time. Break things. Make mistakes. By the end of this you should know what a burning resistor smells like, what it's like to try to recover from a Linux system that just won't boot, and how it feels when a bug has been eluding you for hours and your code still doesn't work. The only way that happens (unless I made a mistake which is also probable) is if you try ideas when you get them and do more than what's in this book.

This struggle is part of learning and proof that you're doing well. These experiences should teach you things in their own right. The smell of burning electronics may help you diagnose a future circuit, the lesson to not fall into a pit of technical debt may help when a bug has engulfed your code, and the late night of terminal only based work as you try to get your computer working again will teach you more than this book ever can.

To quote someone much smarted than myself:

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Tips to really Master Something<br>1. Move away from basics as quickly as possible<br>2. Constantly expose yourself to stuff you don&#39;t understand and later revisit what you thought you understood (but actually didn&#39;t)<br>3. Do cross-disciplinary research to develop a deeper understanding <a href="https://t.co/vHm223qoYe">https://t.co/vHm223qoYe</a></p>&mdash; LiveOverflow 🔴 (@LiveOverflow) <a href="https://twitter.com/LiveOverflow/status/1037296510583689216?ref_src=twsrc%5Etfw">September 5, 2018</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

Finally, there's

> **Cunningham's Law** states "the best way to get the right answer on the internet is not to ask a question; it's to post the wrong answer." ([source](https://meta.wikimedia.org/wiki/Cunningham's_Law))

but note, you should keep in mind the standard warning that comes when first using `sudo` if you plan to use Cunningham's law to your advantage:

> We trust you have received the usual lecture from the local System
> Administrator. It usually boils down to these three things:
> 
> 1) Respect the privacy of others.
> 2) Think before you type.
> 3) With great power comes great responsibility.


# Chapter 1 - The first goal

Every journey needs a place to start, and while many may like to start slow I think a head first approach is best. So that's exactly what we're gonna do. The very first thing we're going to do is install a new operating system (OS) on your computer.

> Quote boxes like these will provide notes throughout the guide, often definitional. If you already understand everything prior to each box, you can probably safely ignore it, though it will occasionally be used for actual quotes as seen prior to this
> 
> Operating System: According to Wikipedia, "An operating system (OS) is system software that manages computer hardware and software resources and provides common services for computer programs." put simply on your hardware this is probably Windows or Mac OS, and it's what everything else runs on top of

You should really make a full backup of your computer before doing this, as installing an operating system can rather easily lead to lost files when you reformat or reparation your drive or when you change settings in the BIOS/UEFI and swap the bootloader.

> Reformat: the bulk storage device in your computer, the hard drive or solid state drive, needs to be formated before use, this sets up a way for the computer and the drive to agree on a base system for how partitions should be setup, speaking of which:
> 
> Repartion: To partition a drive means to take all the space on the hard drive and divide it into partitions onto which you can put a file system. Most operating systems like Windows, Mac OsX, or Linux, use multiple partitions for the operating system to function. Usually a filesystem is set up on each of these partitions, in windows this is typically NTFS for Hard Drives and FAT32 for flash drives, these file systems are effectively the index for all the files you'll put on the drive, and as you may have multiple partitions and multiple file systems on one disk each will have an index to match. As complicated as it may seem this means the partition table can be seen as an 'index of inecies' of sorts. Don't worry if that's a lot to understand right now, we'll come back to this topic in depth.
> BIOS/UEFI: The Binary Input Output System or Unified Extensible Firmware Interface is the thing you see before you computer loads the operating system, usually prompting to press delete or f2 to change settings. This is the system that is used to change the way all the components around the computer talk to one another and at what speed.
> Bootloader: The bootloader sits at a special place on the hard drive selected for boot in the UEFI or BIOS, and is what the computer uses to load the full operating system, most will let you chose what operating system you want to boot if you have multiple installed on you computer at once

Alright, so why do I want you to install a new OS to begin with? Well, the OS we'll be using is called Linux. Linux is actually what powers both android and ChomeOS, and is a common descendant of the same system as Mac OSX as well as almost all of the servers on the internet from massive website like Facebook and Google to small Minecraft servers you can rent online to play with friends. What's cool about Linux is it lets you get much closer to the hardware and see what's going on, and it just generally makes writing code much easier. Furthermore, it's super easy to set up an amazing development environment in Linux for getting work done with code or electronics, and at the end of the day you can still watch YouTube, play *most* games that are on steam, or open up an office suite, just like Windows or Mac. Unlike Windows and (to a lesser extent) Mac though the system is laid out in way so that all the moving parts are exposed and able to be tinkered with. No setting or configuration is locked in and you have total control over your computer with Linux. Furthermore, it's not just easier to run and use software and tools for doing hardware and programming development on Linux, but it's also easier to find and install the tools, as you'll see shortly. Finally, Linux has a great track record of stability, as there are many Linux servers that run 24/7/365 to serve web pages, host services like games, and crunch big data in real time. In fact, all of the world's top 500 super computers use Linux.

Beyond that, there's a degree of respect Linux has for the user that Windows, and to a lesser extent OSX, lack. In Windows 10 ads are being baked into the preinstalled programs from Minesweeper to the Email client, the OS pesters you to use Edge and Bing while simulatiously spying on everything you do. If you attempt to do even remotely system level things it's increasingly easy to get the Frowny Face Blue Screen of Death (BSOD)

![Bsodwindows10]({static}/openg/Bsodwindows10.png)

Add to this the fact that Microsoft [basically laid off their entire testing department](https://www.google.com/search?q=microsoft lays off testing department), and the [nightmare that windows 10 updates have cause](https://www.howtogeek.com/658194/windows-10s-new-update-is-deleting-peoples-files-again/), [forced online accounts](https://readhacker.news/s/4htmg), or well, just read [this list](https://itvision.altervista.org/why-windows-10-sucks.html). You'll see pretty quickly why most 'nerds' have a pretty deep seeded hatred for Microsoft.

I mean, this was a real error message I got when trying to upgrade my system from 8.1 to 10:

![somethinghappened]({static}/openg/somethinghappened.png)

> [Image source](https://answers.microsoft.com/en-us/windows/forum/windows_10/unable-to-upgrade-to-windows-10-something-happened/be12b76d-af02-46a1-a00c-4e4af0c29588)


# Chapter 2 - Let's do it then, Installing Arch Linux

![Arch Logo]({static}/openg/archlogo.png)

Unlike Windows or Mac which are primarily differentiated by versions (Windows XP, Vista, 7, 10...), Linux has two important things to look out for: The distribution and the kernel version number. Linux is actually just the name of the underlying 'core' of the system, known as the kernel, as such, there are literally thousands of Linux variations. Some of the well known variants include Ubuntu, Fedora, OpenSuse, and Arch (No disrespect to the other distros out there!). Each of these has a different target audience, with some meant for servers, some meant for casual users as an alternative to Windows, others as work station for hard core computing. They also ship with different software pre-installed to be accessed after the first boot. The other differentiating factor is the version of the Linux Kernel that they use. Some chose to use an older, battle hardened kernel that is known to be very, very stable, others chose a nice middle ground, while yet others continuously release an update to the newest available kernel. There are pros and cons to each model and each has its place; however, the one I'm going to have you install is know as one of the hardest to work with, but also one of the most cutting edge, fun to tinker around in, and best documented: Arch Linux. Arch is what's known as a rolling release distribution, which means it gets the bleeding edge features and the newest kernel pretty much as fast as possible, though really the biggest thing that makes Arch special is how bare bones it is out of the box, shipping with basically no pre-installed software. In fact, when you first start it up the only thing you'll see is a screen to type and run commands, and that's where we're going to start.

For most distros like Ubuntu or OpenSuse (feel free to look these up, this page isn't going anywhere) there's a nice graphical, point and click installer which helps you install the system and somewhat mitigates potential risk of killing your original OS (Mac/Win) or losing data; however, the goal of this guide is to learn. Arch's install process, entirely by typing commands in this terminal is hard, but that difficulty leads to a deeper understanding and respect for the system as a whole

When we're done you'll have a system that has exactly what you need and nothing you don't. You won't find weird forcibly installed software like Win 10's Candy Crush App here, and your system will only do exactly what you tell it. Of course, this implies you know how to speak it's language and tell it what you want. Thankfully with some practice you'll get used to running Arch and you'll wonder why you ever dealt with other systems to begin with.

Install instructions will vary dependent on your hardware, but I'm going to assume you have a desktop or laptop which shipped with Windows 10 and has a UEFI system. Most laptops newer than ~2016 should be in this category. If your system uses a BIOS or Legacy boot instead, or if you have a mac, this won't apply to you, but you should be able to follow some of the resources I used to make this guide which are linked below along with some searching online to figure it out.

Alright, so what exactly are you getting yourself into? Well, I'll be real with you, a lot. Installing Arch sucks. Things can go wrong, it's not user friendly at all, and is generally a pain, and if you screw up you'll need someone who can restore your computer to at least having Windows on it again so I'll say it again- **Make a backup of your entire hard drive before proceeding, if you don't know how to do this, search it.**

Okay, so, with that said let's dive into it. After you have a backup, you'll need to head on over to https://www.archlinux.org/download/ and if you have a torrent client installed use the provided BitTorrent Downloads, if you have no idea what that is, look at the below box

> BitTorrent: Torrenting is type of download that runs over distributed peer to peer connections, this means you're directly downloading the file from multiple people rather than from one large server. Popular clients on Windows include uTorrent, qBittorrent, and Deluge

You may want to go grab a coffee while it downloads depending on your connection, though the image should be rather small. Once that's done downloading your torrent client should automatically confirm the image by checksum, but as this is a good learning opportunity let's do a manual double check as well.

> checksum: a mathematical summing of the bits in a file combined with some sort of cypher to produce a 'hash' which can be checked to against one that is known, any modification would result in a different hash. This protects against malicious actors putting bad things in the code as well as from a corrupted download.

---

**WINDOWS**: open up a command prompt by pressing ctr+r and typing 'cmd' then enter, and we'll need to navigate to the location of the downloaded file it should be named something along the lines of archlinux-20xx.xx.xx-x86_64.iso and be in your Downloads folder. When you open a command prompt on Windows it should start out in your user folder (C:\Users\%username%\). To list the folders in this folder you can type 'dir' and press enter. You should, at minimum, see folders like 'Downloads' 'Desktop' and 'Documents' to enter the Downloads folder simply type 'cd Dow' and press tab, the line should auto-complete to 'cd Downloads', then press enter. Now you can type 'certutil -hashfile arch' , press tab to complete it to 'certutil -hashfile archlinux-20xx.xx.xx-x86_64.iso' then add 'sha1' on the end so the finally command looks like

```bash
certutil -hashfile archlinux-20xx.xx.xx-x86_64.iso sha1
```

> Note, if this spits out "The process cannot access the file because it is being used by another process." you'll need to close your torrent client or stop seeding the file first!

So let's look at this command. The first part, certutil, is a program on your computer, '-hashfile' says the next string of text is the name of the file we want to examine, and the last part sha1 is the checksum as mentioned before. Finally, if you go back to https://www.archlinux.org/download/ and look under 'Checksums' you can compare the output of the command you just ran against the SHA1 sum provided to be sure you didn't have any errors in the file. This is mostly a security check as in theory someone could provide a 'bad' version of the OS containing malware, but such a version would produce an incorrect checksum, in practice this is extraordinarily uncommon. Though this does also serve to ensure the download wasn't corrupted in any way either.

---

**MAC**: open up a terminal by going to the Utilities fore in Applications and open 'Terminal'. The mac terminal is very, very similar to what you'll use in Linux actually, and the commands here are actually identical. You should see something like

```bash
MacBook:~ username$
```

waiting for input.

That `~` represents that you're in your user or 'home' folder, and assuming you downloaded Arch's install image to your downloads folder you should be able to type

`MacBook:~ username$ shasum -a 1 Downloads/arch`

followed by pressing tab to make that auto complete to something like

`MacBook:~ username$ shasum -a 1 Downloads/archlinux-20xx.xx.xx-x86_64.iso`

upon pressing enter the terminal should print out a long string of text.

So let's look at this command. The first part, shasum, is a program on your computer, '-a 1' says to use the sha1 algorithm instead of something like sha256, and the last part is the filename we want to compute the checksum of. Now, if you go back to https://www.archlinux.org/download/ and look under 'Checksums' you can compare the output of the command you just ran against the SHA1 sum provided to be sure you didn't have any errors in the file. This is mostly a security check as in theory someone could provide a 'bad' version of the OS containing malware, but such a version would produce an incorrect checksum, in practice this is extraordinarily uncommon. Though this does also serve to ensure the download wasn't corrupted in any way either.

---

Okay, so we have the OS, how do you install the damn thing? Well, get ready for a fun time. The first thing you'll need is a flash drive with nothing on it you care about, as it's going to be reformated, which will wipe any data on it. To install an OS you have to create 'bootable media' this used to be done with a CD, though mostly it's done with flash drives now. You'll actually be putting the OS on the flash drive and then using that to put it on your hard drive.

Let's not get ahead of ourselves though, we need room to put the new operating system in! Thankfully Linux is small- really small. Even 50Gb should be plenty for the OS, all your programs, and tons of room to spare for data, but I typically recommend at least 100GB, and since we'll be installing a lot of development tools, it makes sense to do this right to begin with.

---

**Windows**:

When you got your computer with windows is likely that all of the room on your hard drive was preallocated for windows (as it should be!) so we'll need to shrink this down and make room for Linux to live along side Windows. Open the start menu and type 'disk manag' and hopefully "create or format hard drive partitions" will show up as an option. At the bottom you should see a few bars showing partitions on your disk(s). If you have multiple hard drives there will be multiple rows of bars, otherwise there will be only one row. If you have multiple drives it's likely that one is a larger hard drive (HDD) and the other a smaller solid state drive (SSD), if you have room on your SSD use that, if you don't using the HDD will be fine, but the OS may feel slower than you're accustomed to. If you only have one drive, ignore this. Right click in what is likely the largest box, labeled 'primary partition' and chose 'Shrink Volume'. After it finishes querying available disk space enter 102400 as the amount of room to shrink (This is 100GB as there are 1024MB in a GB) or a lower or higher value as you please, but realize this is data you will not be able to access from windows.

> If the window shows 0MB of available shrink space first try running disk cleanup and choose cleanup system files, try turning off system restore, and finally disable the page file. In my experince it's usually the pagefile, which kinda sucks.
> If none of this works, you do have another option: wiping everything and installing linux. This is actually easier, however, it's a bit more extreme, as you won't be able to boot back to windows for anythig. You may instead want to try linux out on an old usused computer first. Either way, you do you, but I'm not liable if things go wrong.
> https://medium.com/@terajournal/increasing-size-of-available-shrink-space-for-hard-drive-partition-in-windows-8fffa50535d3

Alright, we're getting there I promise. You should now have a gray block next to that blue block of space that shows unused space, that's perfect. Next up we'll need to turn Fast Boot off. In my experience turning this off doesn't effect windows boot time at all, and by having it off we'll be able to access window's file from inside linux later. To do this: go to 'edit power plan', then in the top bar navigate back to 'Power Options', select 'Chose what the buttons do' on the left side, click 'Change settings that are currently unavailable' and then un check 'Turn on Fast Startup'.

Okay, now we're finally ready to copy the OS to a flash drive so we can install Arch, to do this, you'll need to download a program called rufus https://rufus.ie/. Download, run, etc. When it opens select the flash drive as your 'device' , press the select button under that and select the archlinux-20xx.xx.xx-x86_64.iso file we downloaded earlier. Everything else should be fine, so click start. This may take a second, in the mean time, open this guide on **another computer** as the next few steps will require a lot of restarting and doing things outside of windows.

---

**MAC**:

Before we go any further I really want to warn you of two things, one, it's going to be harder to follow this guide on a MAC. More steps are involved, and some work arounds are necessary, and more importantly, I have no experience with it. so I'm mostly regurgitating other things I've read. Pages like https://wiki.archlinux.org/index.php/Mac#Installation may prove helpful later.

First, you'll need to open up 'Disk Utility' in Applications/Utilities, then pick your disk and click 'Partition' and click the '+' button to make a new partition. Choose how much space you want to leave on the disk for MacOS and how much you want for Arch. The format of the new partition doesn't matter.

> Note, if your disk is encrypted, you'll need to decrypt first.

Now, you'll need to open a terminal like you did back when checking the checksum. Plug in either an empty flash drive or one which you don't mind erasing, and run

`diskutil list` and you should see something like `/dev/diskX (external, physical)` which is your flash drive. Now run `diskutil unmountDisk /dev/diskX` where X is your flash drive disk number from above, then finally run `dd if=path/to/arch.iso of=/dev/rdiskX bs=1m`. Note that the `of` part has /**r**diskX . The path to your arch iso is probably something like `~/Downloads/archlinux-20xx.xx.xx-x86_64.iso`

This command won't print anything while it's running, but when it's done you'll see a new line asking for input. Two more notes ripped straight from https://wiki.archlinux.org/index.php/USB_flash_installation_media#In_macOS:

> To view progress, send SIGINFO by pressing `Ctrl+t`. Note `diskX` here should not include the `s1` suffix, or else the USB device will only be bootable in UEFI mode and not legacy. After completion, macOS may complain that "The disk you inserted was not readable by this computer". Select 'Ignore'. The USB device will be bootable.

Now you should be good to carry on with the guide

---

> of note, the following guide will be assuming you're installing Linux on the same drive as Windows or MacOS, making it applicable for most systems right away; however, I strongly recommend getting an extra SSD and giving Linux it's own disk outright instead. This is far easier to do in a desktop, but if you have a laptop with a CD drive you may be able to put a SSD in it's place. SSD prices have been steadily declining over the pas few years, but as of the time of writing a 250Gb ssd should be available for under 50 USD. I'd recommend a larger disk though, with 500Gb being plenty for most people

While this guide should lead you though step by step, it may be helpful to follow the offical installation guide as well, which is available at https://wiki.archlinux.org/index.php/installation_guide. Furthermore, while slightly outdated, this flow chat is a nice refrence as well: https://i.imgur.com/Hokk8sK.jpg

despite the technically complexity to get to it, the best place for Arch Linux support, even for installation, is in the IRC (Internet Relay Chat) channel #archlinux on Freenode. https://wiki.archlinux.org/index.php/Arch_IRC_channels

Obviously if you need this you'll need IRC open on a differnt device than the one you're installing from. There are plenty of IRC clients available for any platform though.

☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠

> ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
> Seriously, backup your shit. I've done this countless times and have still managed to accidentally wipe a drive. There's a good chance you're about to completely murder your windows install. This is a necssary evil to learn, and I assure you'll be happy you've done all this, but this next bit is actual hell for people. I'm sorry it gets so bad so early. I promise it's worth it, okay?
> ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
> 
> The next section requires a lot of reboots and has steps where you can't have this guide open on the computer you're working on. Don't be stupid.

---

**MAC**: Beware, none of the following was writen with a MAC in mind, and as such I strongly recommend you read https://wiki.archlinux.org/index.php/Mac#Installation and look for where my instructions deviate from what's recommended here.

---

Now you'll need to power off your computer. Turn it back on and as you do mash the everliving hell out of both f2 and delete (unless you know what key gets you into the UEFI / BIOS settings). This should bring up a menu that either looks super fancy or looks stright out of the 80's. Either is fine. The setting we're looking for is 'Secure Boot' it's probably under a menu called 'Boot' or 'Security'. You'll need to shut this off. In theory secure boot should protect against a nasty kind of virus called a rootkit, in practice it doesn't and only serves to make installing linux more annoying, don't worry, I'm a security nut and am comfortable leaving it off. Exit and save settings, and as your computer boots again mash F11 or whatever key gets you to a boot menu, and select your USB key. If it shows up twice try the first one first, if that doesn't work try the other one. (If you end up back in Windows just restart and go back into the bios settings, go to 'Boot' and reorder the boot menu entries so your flash drive is the first option) The system should boot first to a screen with a few options, pick Arch Linux if you have to or just wait for it to move on. You should, with any luck, see a list of text flash down the screen that looks roughly like

```bash
[OK] doing thing
[OK] starting thing
[OK] did thing
```

> If something comes up as [FAILED] even though you still get to the login prompt, don't worry about it for now

Then, you should be greeted by a minimal prompt that looks like

```bash
root@archiso ~ #
```

and that's it. Congrats, you've already made massive progress.

This is arch, but it's not actually installed yet, right now your entire computer is running off the flash drive. So let's get it installed.

You'll need an internet connection to do anything, if you can connect you computer to the network though ethernet directly, that should be much, much easier than doing things though wifi. If you absolutely must do things though wifi, well, first, really don't. I mean, you can, but's a solid pain. I'm going to assume you're not. Cool.

If you didn't connect your computer to ethernet before you started arch, the first thing you should type in this prompt is

```bash
systemctl restart dhcpcd
```

this manually restarts the service that asks the network for an IP address, which you need to do since currently the system is in such a minimal state it won't do that automatically.

Now, try

```bash
ping archlinux.org
```

if you see something like '64 bytes from apollo.archlinux.org', congrats! You're online! If not, you may try a different network or wireless if applicable (seriously, it's a pain)

From here, you'll need to see the names of the hard drives on your system. run 'lsblk -f'.

but what does that even mean? well, let's learn about another command! 'man'

for most commands on linux if you type 'man' before the command with no flags (the -x things after the command) it'll open a manual page for the command. Read here to figure and try to figure out what lsblk is and what -f does.

> lsblk lists information about all or the specified block devices. The lsblk command reads the sysfs filesystem to gather information.
> The command prints all block devices (except RAM disks) in a tree-like format by default. Use lsblk --help to get a list of all available columns.
> ...
> The default output as well as default output from options like --topology and --fs is subject to change, so whenever possible you should avoid using default outputs in your scripts. Always explicitly define expected columns by --output columns in environment where a stable output is required.
> ...
> -f, --fs
> Output info about filesystems. This option is equivalent to "-o NAME,FSTYPE,LABEL,MOUNTPOINT". The authoritative information about filesystems and raids is provided by the blkid(8) command.

Okay? Well, that probably doesn't mean much so lets focus on the important bits

"lsblk lists information about all or the specified block devices. The lsblk command reads the sysfs filesystem to gather information."

Block devices are devices that have 'blocks' of information, like hard drives, flash drives, solid state drives, sd cards, etc.

"-f, --fs ... Output info about filesystems."

This means we'll be able to see what type of file system is on each block device.

So, we can use this command to see information like we saw graphically back when we opened disk management in windows, only now with their linux names. In linux each block device is actually stored as a file, as bizarre as that may seem. This file is actually located in the dev folder which sits on top the root folder. The root folder is simply designated by a single '/' so a normal file structure may look like '/home/USERNAME/Documents/office/' and so on. It's worth noting that '/' is actually a folder in itself, it's just the absolute bottom folder, hence it's called the root folder. So the dev folder is located at /dev. In /dev there's a lot of things, but at the moment what we're really concerned about is the storage devices. so, looking at this example output from `lsblk` you'll see three storage devices /dev/sda /dev/sdb and /dev/nvme0n1

```bash
vega@linux ~ # lsblk -f
NAME    FSTYPE LABEL    UUID                                 FSAVAIL FSUSE% MOUNTPOINT
sda
├─sda1
├─sda2
├─sda3
└─sda4
sdb
├─sdb1
└─sdb2
nvme0n1
├─nvme0n1p1  ntfs   Recovery 36C8A86BC8A82B57
├─nvme0n1p2  vfat            E2AB-10F2
├─nvme0n1p3  ntfs            DE54B4D854B4B51D
└─nvme0n1p4
```

What do these mean? Well, most drives in linux are simply designated by a /dev/sdX where x is just the next available letter in the alphabet, though on some newer systems like mine, you may find some blazing fast SSDs actually use that other odd nvme syntax. Both work exactly the same way for what were doing.

looking at that output again you'll see each device has multiple things under it. For example /dev/sda has /dev/sda1 all the way though /dev/sda4. Each of these are the separate partitions. In this particular example, sda is actually the flash drive we're running off of, so you can see that it is currently where our root file is '/' on /dev/sda1 and that it's an ext4 file system (I'll explain this a bit more in a bit) you'll also see there's another partition that's formatted as fat32 for boot, but all of these are on the flash drive because they're on sda.

For Simplicity now we're actually going to look at a simpler 'lsblk -f' output with only /dev/sda and sdb. sda is still the boot usb stick you're on, but sdb is now the singular drive in a laptop that has windows installed and available free space in accordance with this guide.

```bash
root@archiso ~ # lsblk -f

sdb
├─sdb1      ntfs   Recovery 36C8A86BC8A82B57
├─sdb2      vfat            E2AB-10F2
├─sdb3        ntfs            DE54B4D854B4B51D
└─sdb4
```

alright, so now on sdb we see there's 4 partitions (sdb1,2,3,4) where in this case we have sdb2 as a ~512Mb vfat partition, sdb3 as a 300Gb NTFs partition, and then that blank partition we made on sdb4. That 512Mb partition contains the bootloader for both windows and soon linux. The larger NTFS file system is where Windows and all your programs documents and other things you've done on your computer in the past live. I hope now it's obvious why I urged backups, as we're about to play around with things a bit.

We're going to need to make some changes this list tough, as we actually need one more small division in the partition table. run the command

```bash
root@archiso ~ # cfdisk /dev/sdb
```

this should bring up a strange command line based almost graphical interface which you can used to edit, add, or remove partitions. With that 100Gb (or whatever you chose free space we made earlier), let's divide it into two partitions, one that's 8GB and the other that's just what's left. We're doing this so we have somewhere to put SWAP in a second, but let's get to that later, for now just use your arrow keys and highlight the large empty block and select new, select primary, then make it 8GB, which is 8*1024Mb or 8192, and then select end. Finally write it, then quit. Whew. Bit stressful even for me. Don't worry, Linux get's much much easier, especially when we get our graphical tools back.

now, run lsblk again. You should see something like

```bash
root@archiso ~ # lsblk
sdb
├─sdb1      ntfs   Recovery 36C8A86BC8A82B57
├─sdb2      vfat            E2AB-10F2
├─sdb3        ntfs            DE54B4D854B4B51D
├─sdb4
└─sdb5
```

so now we need to format these partitions with a file system. For the root file system, where we're gonna put all the programs, files, and the OS itself we'll use the ext4 file system. It's by far the most common file system for linux. To do this look at the lsblk output and look for the large empty space we left (not the 8Gb space we just made!) and run

```bash
root@archiso ~ # mkfs.ext4 /dev/sdxy
```

where xy is the correct letter and number for your partition, in the above example that's /dev/sdb4, as sdb5 is the 8Gb partition we just made

alright, that's actually most of the really hard stuff done. Now we need to mount both the file system we just made and the boot filesystem. run:

```bash
mount /dev/sdbx /mnt
mount /dev/sdby /mnt/boot
```

where x is the same as the above x and y is the number of the partition with the windows boot manager. sdby should be roughly 500 megabytes and be vfat, it may appear as 'EFI partiton' in cfdisk if you're unsure.

Next up we need to install the base of the os to these drives, this is actually pretty easy just run

[TODO] Arch linux's install has changed a bit since this was written. Now, more arguments are required at install time as the base Linux kernel is no longer included in base. I've changed this here slightly, but it's very likely still missing some things.

```bash
pacstrap /mnt base base-devel linux systemd
```

then, we need something that tells the system the names of our partitions and how to mount them at boot. Thankfully, the system can generate (most) of this for us, just run

```bash
genfstab -U /mnt > /mnt/etc/fstab
```

what this command does is looks at the id's of the drives in /mnt (the ones we manually mounted when we ran mount a few commands ago) and redirects those id's and the settings used to mount them (which were default) and writes that output using '>' as a redirect to a file stored in /mnt/etc/fstab. Because /mnt is the location where we mounted the harddrive, it's actually writing a file to the hard drive now, just as pacstrap just did.

Alright, next we need to use a command that you'll probably never use again- chroot. This changes your root directly to be higher up the chain, effectively cutting off access to lower files, though we need to do this to install our bootloader, again this is easy

```bash
root@archiso ~ # arch-chroot /mnt
```

which will change the above to look like: ' root@archiso ~ # ' to ' root@archiso / # ' as that '~' was actually a shorter representation of being in /home/root (there's actually a user nammed root by default, and the user has it's own home directory. It's easy to confused root the user with root the directory, but you'll get it eventually if you don't now that's okay c: )

now we can install the bootlooder with

```bash
root@archiso / # bootctl install
```

Now we need to add a bootloader entry for arch. We're going to use a very simple command line text editor called nano. it's sorta like notepad on windows.

```bash
root@archiso / # nano /boot/loader/loader.conf
```

this will bring up a text editor, it says how to operate it at the bottom (ctr+o to write out = save, crt+x to exit, etc)

enter, exactly: (Note line 2 says linuZ-linux, that's not a typo, and replace the x with your root partiton)

```bash
title        Arch Linux
linux         /vmlinuz-linux
initrd         /initramfs-linux.ing
options     root=/dev/sdbx rw
```

and for our last trick before we reboot save and exit nano with ctr+o, ctl+x then, run

```bash
root@archiso / # nano /boot/loader/loader.conf
```

and enter

```bash
timeout 3
default arch
```

then, we're ready to reboot into the new OS!

run consecutively,

```bash
root@archiso / # exit
root@archiso / # reboot
```

and pull the flash drive out. If all went well your system should boot to Arch. If it didn't, first make sure it's set to boot to arch in the BIOS/UEFI's boot settings, and then if things are still broken try to figure out why, there are plenty of people in the community willing to help, including me.

Assuming it booted back up to a similar looking prompt but with no flash drive we have to do some house keeping but you'll have a bad ass system in no time.

First things first enter 'root' for the user name, this should let you login.

then run 'passwd' this will prompt you to set a password. For the love of god don't forget it.

Next you'll need to set a hostname, this is how your computer id's itself on the network, so might help if you make it something sensible like 'usernamelinux' to do this run

```bash
echo 'mynewawesomehostname' > /etc/hostname
```

then let's add a user, as using root all the time is very unsafe. To do so run:

(I recommend using the same password you used for root)

```bash
useradd -m -G wheel mycrappyusername

followed by,

passwd mycrappyusername
```

I swear to you we're getting there.

run

```bash
EDITOR=nano visudo
```

then find the line that says

```bash
# %wheel ALL=(ALL) ALL
```

and remove the '#'

As an explanation, the '#' is turning that line in that file into a comment, in programming it's common practice to use comments to disable sections of code so say we had a program:

```python
for i in range(5)
    #print(i)
    print(i/2)
```

the `#` before `print(i)` is preventing it from actually executing so the output of this would be {1/2,1,3/2,2,5/2} instead of {1,1/2,2,1,3,3/2,4,2,5/2,5}

Anyway, with that out of the way let's find fix up networking so we can get online and run updates

run `ip link` and look for the name of your network interface. If it's a wired adapter it should be enpXsY where X and Y are number, wif is similar but uses wlp instead of enp. To make sure the network brings itself up on each boot let's enable `dhcpcd` - that service we restarted way back when- on that interface. Just run

```bash
systemctl enable dhcpcd@enpXsY.service

this enable it at each boot however we should
start it now because this is the frist time

systemctl start hdcpcd@enpXsY.service
```

next up, we should make sure things know what language we speak. Assuming you want to use US english just run

```bash
locale-gen

followed by,

localectl set-locale LANG=en_US.UTF-8
```

Timezones, run each independently

```bash
tzselect

timedatectl list-timezones

timedatectl set-timezone Zone/SubZone

hwclock -systohc -utc

timedatectl set-ntp true
```

It's worth noting Linux and Windows use differenent clock standards so every time you reboot between the two windows will messup the clock, to fix it in WINDOWS you can run

```bash
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\TimeZoneInformation" /v RealTimeIsUniversal /d 1 /t REG_DWORD /f
```

in an admin command prompt

Alright, we're getting close to graphical stuff now, I swear. Remember that 8Gb partion we made a while ago, time to use it. Now that we're in the full OS the're a good chance the location names of the partitions changed so run `lsblk -f`  again and figure out where that 8Gb portion is

```bash
lsblk -f

mkswap /dev/sdXY

swapon /dev/sdxy
```

then, we need to edit the fstab file we generated earlier.

Let's look at what the fstab file looks like right now. We can read a file from the command line without opening it up for editing with `cat`, so run

```bash
cat /etc/fstab
```

and you can see what it looks like. See all those super long UUID's? We need the right one of those for our new swap area. Thankfully there's an easier way to do this than writing it down on a sticky note.

if we run `lsblk -no UUID /dev/sdxy` (obviously substitute x and y) you'll get this UUID, so let's just append it onto the end of the fstab file!

Remember how we used the '>' character before to write the output of genfstab to /etc/fstab, well you can also use two of that same character to *append* an output to a file. However, before we do that let's be safe rather than sorry and make a backup of the fstab file by first moving to the /etc directory then making a copy of the file

```bash
cd /etc
cp fstab fstab.bak
lsblk -no UUID /dev/sdxy >> fstab
```

note we didn't need to type /etc/ before each fstab because that's a file in the folder we're already in.

but we're not done yet. use `nano` to open up the fstab file and edit it so the last line we just appended looks more like:

```bash
UUID=whateverthisis none swap defaults 0 0
```

Save and close nano and then to finish up swap all we need to do is edit one more file

```bash
nano /etc/sysctl.d/99-sysctl.conf

and add the single line

vm.swappiness=10
```

Alright, lets run an update and reboot!

For now to do updates we'll use pacman (short for package manager)

run 'pacman -Syyu'

The -S says to Sync, or actually apply the updates, the double y's say to force grab the newest database (usually only use one y) and u means upgrade. If you want more detail run `man pacman`

Once that's done you can run `systemctl reboot`

Finally, we're going to get a graphical environment running.

Once the system reboots login with your username, not root. When you type your password **you won't see anything**, but it is actually typing!

then run:

```bash
sudo pacman -S xf86-video-vesa mesa
```

This command uses sudo or 'superuser do' because you're now logged in as a user, and as such need admin privileges to install software. This is part of why Linux is so secure. Pacman, again, is just 'package manager' , `-S` tells pacman to sync the requested packages from the server and the other two things are the two packages we want right now, both are used for video output.

To install the correct driver for your graphics hardware you can run

```bash
these next few commands use 'pipe' the character above enter on most US keyboards

lspci | grep -i VGA

and if that doesn't turn up anything

lspci | grep -i 3D
```

to find the vendor of your graphics card. If the output contains NVIDIA run

```bash
sudo pacman -S xf86-video-nouveau
```

for INTEL run

```bash
sudo pacman -S xf86-video-intel
```

and for AMD run

```bash
sudo pacman -S xf86-video-amdgpu
```

if you have multiple, it's safe to install both.

Alright, now we need to install the desktop environment. Because this guide to this point is probably already melting your brain I'll take it easy for a bit and we can install KDE-Plasma.

KDE Plasma is pretty big though, so we're gonna want to be sure we're using fast mirrors before we do anything else

```bash
sudo pacman -S reflector
```

then we're going to temporarily switch to the root account using `su` all you have to do is type su and enter, then type the password

now run

```bash
reflector -c us -n 25 -f 5 > /etc/pacmand.d/mirrorlist
```

Finally to install Plasma run

```bash
sudo pacman -S xorg-server xord-utils xorg-xinit xterm plasma kde-applications

then

sudo systemctl enable ssdm

amixer sset Master unmute

and finally, lets see the epic payoff of all the effort

sudo systemctl start ssdm
```

Note that KDE Plasma is fairly large to download and a bit resource intensive. As an alternative if on older hardware

```bash
sudo pacman -S xorg-server xorg-utils xorg-xinit xterm mate mate-extra lightdm

then

sudo systemctl enebale lightdm

amixer sset Master unmute

and finally, lets see the epic payoff of all the effort

sudo systemctl start lxdm
```

Alright, now you can take a few minutes to get used to how your new computer works, play with settings, etc.

before you wrap up lets do a tiny bit of houskeeping

```bash
sudo pacman-key --init
sudo pacman-key --populate
sudo pacman -S git --needed
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -Acs
sudo pacman -U
yay -S zsh
chsh -s /bin/zsh
```

from now on you can just open a terminal and type `yay` followed by your password to run updates.

[TODO] Make NTFS drives accesible and auto mount

## So Why Did I do all of that exactly?

Linux makes development of code particularly easy, so, let's write some code!

The first language we're going to try out is called python. Python is an interpreted language, meaning each block to be executed can be run one at a time, to show you, let's install it.

Because we installed yay earlier you could use either that or pacman, but let's just use yay for simplicity. From here on out I'll be coping directly from what my terminal prompt looks like. Yours, for now, probaly looks similar to:

```bash
username@root /current/folder : command -to -be executed
```

However, mine looks like

```bash
╭─vega@lyrae /current folder
╰─➤  command -to -be -executed
```

so, install python just like we've installed other programs with python or yay

```bash
╭─vega@lyrae ~
╰─➤  yay -S python
```

once that's done you should be able to start the python interpreter by simply typing `python` and pressing enter. This will give you a new prompt that takes python code as input

```bash
╭─vega@lyrae ~
╰─➤  python
Python 3.7.2 (default, Jan 10 2019, 23:51:51)
[GCC 8.2.1 20181127] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>>
```

the `>>>` is the prompt asking for input, go ahead and just try `1 + 1` for now

```python
>>> 1 + 1
2
```

Okay, who cares though, right? let's try something a bit cooler. Say you wanted to add up all the odd integers up to 72? This isn't something that's trivial to do on most calculators and would be a real pain by hand, but it's trivial to do in python. The code to run this in python is

```python
#note, this is to 37 because we're multiplying i by 2 below, so we only have to go until 2*i = 72 or i = 36.
#EXCEPT, the range function includes the first number and excludes the last, so we actually use range(1,37)
sum = 0
for i in range(1,37):
    sum = sum + (2*i+1)

print(sum)
```

when you type this in the prompt you'll actually be able to enter multiple lines when you write the for loop. There's no clear way to explain this in text, you'll just have to try it and see how it works, note the way python set up looping is by indentation, so you'll need to press tab when the prompt lets you type the line `sum = sum + i` so that it's obviously a 'child' of the for loop.

after you run the print statment you should see the output

```bash
╭─vega@lyrae ~
╰─➤  python
Python 3.7.2 (default, Jan 10 2019, 23:51:51)
[GCC 8.2.1 20181127] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> sum = 0
>>> for i in range(1,73):
...     sum = sum + i
...
>>> print(sum)
2628
>>> exit()
╭─vega@lyrae ~
╰─➤
```

telling us the answer is 2628. To make you feel like a bad ass, you actually just wrote code that's equivalent to this math    $$\sum_{n=1}^{72} n$$   pretty cool right? But that's math? Who cares? Let's do something cool!

Python code doesn't have to be written in line by line, you can put it an a file and the computer will run that file as a program, so let's do that! But to do that we're gonna need something better than a terminal editor or an equivalent to notepad. There are actually text editors that make writing code much easier. Let's go grab the 'Visual Studio Code' editor. Hopefully by now you know the command! (The name of the package is just `code`)

super quick detour: while you can open graphical programs though the start menu down in the lower left hand corner just like on Windows, you can actually open a program directly from the terminal. Interestingly, this can make a program that opens in a new window a 'child process' of the terminal, which is why we normally don't do this. What this normally means is that if you start a program from the terminal - the parent- and then close the terminal, the child process, in this case the graphical program you started, will die too. Strangely, VSCode actually separates itself from it's parent process almost immediately, which is why we can start it from a terminal and then close the terminal and it should stay running. so, let's do that.

```bash
╭─vega@lyrae ~
╰─➤ code
```

and a new window should pop up. It'll probably open with a few tabs welcoming you, asking if you want to install a theme, if you are okay sending VSCode usage info, etc. Uncheck boxes so these don't come up each time and answer questions as you please. Then, we're going to go up to the top and chose

 `file -> new file`  Then, down at the bottom right of the editor you should see something that says `plain text` click that and a box will appear asking for the name of the language you're working with. Obviously chose python.

alright, now we're ready to code! Let's put a bit more interesting of a program in and then we'll talk about what it does line by line. I stole this code from https://matplotlib.org/2.0.2/examples/animation/animate_decay.html

```python
#!/bin/python3
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation


def data_gen(t=0):
    count = 0
    while count < 1000:
        count += 1
        t += 0.1
        yield t, np.sin(2*np.pi*t) * np.exp(-t/10.)


def init():
    ax.set_ylim(-1.1, 1.1)
    ax.set_xlim(0, 10)
    del xdata[:]
    del ydata[:]
    line.set_data(xdata, ydata)
    return line,

fig, ax = plt.subplots()
line, = ax.plot([], [], lw=2)
ax.grid()
xdata, ydata = [], []


def run(data):
    # update the data
    t, y = data
    xdata.append(t)
    ydata.append(y)
    xmin, xmax = ax.get_xlim()

    if t >= xmax:
        ax.set_xlim(xmin, 2*xmax)
        ax.figure.canvas.draw()
    line.set_data(xdata, ydata)

    return line,

ani = animation.FuncAnimation(fig, run, data_gen, blit=False, interval=10,
                              repeat=False, init_func=init)
plt.show()
```

So you can just copy and paste all of this into VSCode, then use ctrl+s to save it, and let's save it in the Documents folder as test.py - the .py extension is for python files.

Before we talk about our code, let's see it run!

Open up a terminal, and run `cd Documents` to get to your documents folder, `ls` to see what's in there, then `./test.py` to run the program.

```bash
╭─vega@lyrae ~
╰─➤ cd Documents
╭─vega@lyrae ~/Documents
╰─➤ ls
test.py
╭─vega@lyrae ~/Documents
╰─➤ ./test.py
```

Oops! that probably didn't run. If you look at the errors it will tell you you're missing matplotlib ad numpy, let's go get those

```bash
╭─vega@lyrae ~/Documents
╰─➤ yay -S python-matplotlib python-numpy
```

Now it should work! run `./test.py` again, and now you should see a decaying sine wave. Still not exactly something that get's the heart racing, but it does prove the power of programming! The code did all of that in under 50 lines of text!

Frankly, the code that makes this work is a bit complicated but we can go over some of the important bits

at the very top there are four important lines:

```python
#!/bin/python3
import numpy as np
import matplotlib.pyplot as plot
import matplotlib.animation as animation
```

the first line uses a shebang `#!`  followed by python's location, this tells Linux to use python (specifically python3) to run the code underneath, actually, that's the location of the python program we installed earlier. In Linux, most of your programs can be found in /bin

Next we have a bunch of imports. In most programming lanuges you don't want to reinvent the wheel so you'll use libraries. These are well documented, heavily tested, and optimized blocks of code you can use that you don't really need to understand how work under the hood, only how to use them. Although not used here, the most basic example would be advanced math in the math library, like

```python
╭─vega@lyrae ~
╰─➤  python
Python 3.7.2 (default, Jan 10 2019, 23:51:51)
[GCC 8.2.1 20181127] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import math
>>> math.sin(1)
0.8414709848078965
>>> math.pow(2,4)
16.0
>>> exit()
```

on line 6 the math library, which gave us access to sin and exponent functions, was imported. We don't know how `math.sin()` works, but we know it does, and that's fine.

The same is true for `numpy` and `matplotlib` above, both of these are libraries, matplot lib is what handled actually putting the data on the screen, and numpy as can be seen on line 12 of the program:

```python
yield t, np.sin(2*np.pi*t) * np.exp(-t/10.)
```

is used for doing some of the math. Numpy is a common python library used for doing more advanced math really fast, we're not going to worry about that right now though.

the next thing you should notice is how the code is organized into blocks with `def name():` like `def data_gen(t=0):` or `def init():` these blocks of code are called functions and they let programmers break up code into re-usable pieces or just wrap up a lot of complicated things to make code more readable, for example imagine a function that takes two numbers and does hundreds of lines of complicated math with them (eww)

```python
def mathyMess(num1, num2)
    num1 = math.sin(num1) + math.pow(num1,num2)
    # imagine hundreds more lines here
    return result
```

this would make it so latter in your code anytime you needed to do this math again you could just use

```python
thing = mathyMess(42, 12)
otherThing = mathyMess(0, 2)
finalThing = thing + otherThing
```

this is much, much easier to read than a copy and pasted version without these functions or 'blocks of code' furthermore, if you accidentally made a mistake somewhere in the math in mathyMess you can fix it there rather than in each independent copy individually.

For now, we're going to take a bit of a break from code, but we'll be back.

## Okay, so what?

So, yeah, you can develop python just fine in Windows. Installing it is just a matter of going online and fetching an exe installer and checking the right boxes. There's nothing here you can't do in windows. If that's the case why do any of this.

Frankly the answer is complicated. The gist of it is that Linux actually exposes things in a way that while might be possible in windows will probably be much more difficult. Even in the above, when we installed python and a few libraries there was no need to open a web browser and each package is maintained and verified in a way that makes installation easy, secure, and reproducible.

But more than that, Linux actually exposes the system to the user and doesn't try to hide it's inner workings, rather, for many things Linux implies that you should manually edit the config files, look at how programs use various resources, and peer into how the system actually handles any given task.

You'll start to see this more as we move forward though these next few chapters. Speaking of...


# Chapter 3 - Into the hardware

One of the nifty things about Linux is you don't need to install extra software to check out the deeper parts of your hardware. While on windows you might need a tool like CPU-Z to look at information about the CPU on Linux you can do it out of the box. Let's get started on that then!

## The CPU

![CPUS]({static}/openg/cpus.jpg)

These are CPUS or Central Processing Units. They're the beating heart of your computer, doing the day-to-day number crunching. The rectangular one of one of the first CPU's in the lineage leading up to CPU's like the ones used in desktop's today, with further sucessors shown in order from top left to the bottom right. The metal-capped one at the bottom right, while old, is visulally quite representative of a moden desktop CPU, though the CPUs in a laptop or smart phone do look quite differnt still.

One of the nifty things we do pretty easily in linux is get information about our hardware directly. Just as when we were installing Arch and we used `lsblk` to see an overview of the disks on the system, we can use some other tools to find out some other information about the system. Let's start off basic and see what CPU you have. Go ahead and run

```bash
╭─vega@lyrae ~
╰─➤  cat /proc/cpuinfo
```

This is actually just using that same `cat` command we used before. This time we're using it to read the system generated file that tells us about the processor in this system. I'm going to provide the output from my system for reference:

```bash
processor       : 0
vendor_id       : AuthenticAMD
cpu family      : 23
model           : 1
model name      : AMD Ryzen 7 1700 Eight-Core Processor
stepping        : 1
microcode       : 0x8001137
cpu MHz         : 2018.119
cache size      : 512 KB
physical id     : 0
siblings        : 16
core id         : 0
cpu cores       : 8
apicid          : 0
initial apicid  : 0
fpu             : yes
fpu_exception   : yes
cpuid level     : 13
wp              : yes
flags           : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr_opt pdpe1gb rdtscp lm constant_tsc rep_good nopl nonstop_tsc cpuid extd_apicid aperfmperf pni pclmulqdq monitor ssse3 fma cx16 sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdrand lahf_lm cmp_legacy svm extapic cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw skinit wdt tce topoext perfctr_core perfctr_nb bpext perfctr_llc mwaitx cpb hw_pstate sme ssbd sev ibpb vmmcall fsgsbase bmi1 avx2 smep bmi2 rdseed adx smap clflushopt sha_ni xsaveopt xsavec xgetbv1 xsaves clzero irperf xsaveerptr arat npt lbrv svm_lock nrip_save tsc_scale vmcb_clean flushbyasid decodeassists pausefilter pfthreshold avic v_vmsave_vmload vgif overflow_recov succor smca
bugs            : sysret_ss_attrs null_seg spectre_v1 spectre_v2 spec_store_bypass
bogomips        : 7688.44
TLB size        : 2560 4K pages
clflush size    : 64
cache_alignment : 64
address sizes   : 43 bits physical, 48 bits virtual
power management: ts ttp tm hwpstate eff_freq_ro [13] [14]
```

Alright, that's a whole lot of information, let's break it down.

First of all, almost all modern Central Processing Units (CPUs) have multiple cores, and as with most things in computers the're counted from 0, so on a 4 core computer you'll have cores 0, 1, 2, and 3. Multiple cores simply let your computer do things in parallel, running multiple programs or tasks at the same time

Next is the vendor ID, family, model, name, and stepping. My processor is an AMD Ryzen 7 1700. There's a pretty good chance your CPU will be made by Intel, and as such the family, model, name, and what not will reflect that. AMD and Intel are practically the only two laptop and desktop CPU providers, though in the feature we'll work with boards that use CPU's made by other manufactures. Really, most of this doesn't matter. Some CPUs are nicer than others, and if you follow the market or care it's easy to get a sense of a CPU's speed just based on it's name, but let's move on for now.

Next is

```bash
microcode       : 0x8001137
cpu MHz         : 2018.119
cache size      : 512 KB
```

Each of these things is very important, but I'm going to start with cpu MHz as it's probably the easiest to understand, however, to understand this we'll need to get even a bit lower level than this and learn about the electronic component that changed humanity: the transistor.

### Clock Speed

![transistor]({static}/openg/transistor.jpg)

However, to get to that we've gotta go just a bit further down the rabbit hole to the relay. Relays are super simple to understand, they're just a metal switch that is pulled open or closed using another input signal (usually a magnet pulling/pushing the switch closed/open) basically imagine a light switch, where the switch itself is controlled by yet another electrical signal. Relays are slow though, they require a physical metal plate to move to change the connection. Because of this they have limited reliability and worth note they're actually loud. You can hear an audible click of the switch as they change state.

Enter the vacuum tube. Though rarely used today outside of high end audio and old radios, for a period of time the logic inside a computer used these tubes. Essentially theres three important parts of the tube, the Cathode, Plate and Grid. Put very simply the Cathode emits electrons and the Plate collects them. Where it gets interesting is the grid in between. By applying a voltage to the grid a signal can be controlled giving us the same ability to turn something on or off by a third wire as in the relay.

> Worth note but irreverent for digital electronics, tubes and transistors can actually pass only a percentage of the input back out, based proportionally on the input. This actually means that both tubes and transistors can act as an amplifier, using a small input range to control a much larger signal. A single tube or transistor in conjunction with other supporting components can be used to make a functional amplifier.

Though the real break though here was the fact that this was no longer a mechanical system. With relays there was a very slow limit on the rate at which they could respond reliably, but with tubes this increased exponentially. Tubes were still expensive, large, and power hungry though. However, with their advent early computers saw a massive boost in speed with a decrease in cost

Finally, enter the transistor. The physics here isn't that far removed from the vacuum tube, only now instead of a vacuum the electrons are moving though a semiconductor - typically silicon. Again this brought a massive shrink in physical size and increase in that rate at which it could respond. Pictured above are two discrete transistors, however, this is where things get mind blowing:

The Ryzen 1700 CPU in the computer I'm typing this on has 4,800,000,000 transistors in a package that is only 213 mm², and finally, we can refrence the number output by `cat /proc/cpuinfo`

At the moment I got that output the transistors where being turned on and off at a rate of 2018Mhz. or 2Ghz. However, this system can run up to roughly 3.8Ghz. The faster this speed the faster your computer; however, your CPU will also use more power and run hotter. It's for this reason that most systems adjust the speed based on load. Doing simple things like writing this document and as seen with that output my system runs at nearly half speed which is actually the slowest it can run. Because the computer is hardly doing anything right now the majority of that switching is actually just doing nothing but using power running 'no operation instructions' the functional equivalent of just running 0+0 while it it waits for something to do.

The OS itself actually tells the processor what speed it should be running at. In Windows, when you change your power plan to 'high performance' one of the major things it does is not allow the processor to run at a slower speed, and in Linux you can similarly control this using some cpu speed commands. We'll get to that later though.

Finally it's worth note that on some systems, primarily high end desktops, you can actually run your processor outside of factor specifications by increasing the maximum clock rate of the processor. Doing this can lead to system stability issues and obviously leads to a higher power usage and heat output though. This process is known as 'overclocking'  as your taking the internal clock of the processor beyond it's rating. My CPU, a Ryzen 1700, has actually been over clocked in order to get 3.8Ghz at all times on all of the cores.

### Microcode

Modern processors are very, very complicated. So complicated in fact that there is a full very tiny computer in your processor. This computer does multiple things, but the main one we'll talk about is the translation between types of machine code. In order to understand this we'll need to look a basic program written in the language 'C'.

```c
int main() {
  int a;
  int b;
  a = 8;
  b = 16;
  a = a + b;
  return 0;
}
```

This code first makes two integers, a and b, gives them values, then adds them together and stores the result back into a. Finally, the program returns a 0 to the operating system in order to say "I ran without errors".

Unlike python which get's converted to something the computer can understand as it executes C is compiled before hand. This makes it so programs written in C are much, much faster than those written in python, though obviously C code is more difficult to write. Compilation is the process of turning a program into a file full of instructions the computer actually understands. This happens in two steps, first the program is turned into assembly code, for the above code this results in an output that looks like

```c
        push    rbp
        mov     rbp, rsp
        mov     DWORD PTR [rbp-4], 8
        mov     DWORD PTR [rbp-8], 16
        mov     eax, DWORD PTR [rbp-8]
        add     DWORD PTR [rbp-4], eax
        mov     eax, 0
        pop     rbp
        ret
```

As you can see, this is incredibly difficult to read to a 'normal' person, so even though we're not there yet.

This in turn gets turned into binary as can bee seen by this screenshot generated using https://godbolt.org/

![2019-02-08-145014_2400x522_scrot]({static}/openg/godbolt.png)

See the weird numbers next to each instruction? like 4004b255? That's a base 16 number or hexadecimal usually refered to as 'Hex'. Hex is what is used by most computer guys to represent numbers because computers operate in base 2, or binary- like 01001100, which is very difficult to read and type accurately, however, base 10, the normal numbering system your used to, makes translating between binary and decimal a bit uncomfortable as the common factor is 5, an number that is both odd and in turn not a factor of two, where as 16 is $2^4$ so that means we can easily represent binary like this:

| Binary | Hex | Decimal |
| ------ | --- | ------- |
| 0000   | 0   | 0       |
| 0001   | 1   | 1       |
| 0010   | 2   | 2       |
| 0011   | 3   | 3       |
| 0100   | 4   | 4       |
| 0101   | 5   | 5       |
| 0110   | 6   | 6       |
| 0111   | 6   | 7       |
| 1000   | 8   | 8       |
| 1001   | 9   | 9       |
| 1010   | A   | 10      |
| 1011   | B   | 11      |
| 1100   | C   | 12      |
| 1101   | D   | 13      |
| 1110   | E   | 14      |
| 1111   | F   | 15      |

Okay, so now those 1's and 0's are what your computer actually reads to run instructions. We'll come back to this later, but since we're here I'll drop this [link]( https://www-user.tu-chemnitz.de/~heha/viewchm.php/hs/x86.chm/x86.htm)

Where you can see how these 1's and 0's are arranged to tell the computer what to do. That is super advanced for where we are now though, so let's get back on track- what the hell is micro code already?

Well, it turns out that modern processors are still compatible with some really, really old code. All the way back to the first 8086 processor made by Intel in 1978. It was here that the x86 instruction set - the instructions like 'mov' , 'push', and 'add' above that define the x86 architecture were born. Originally these were 16bit CPUs, that is each instruction only had 16 1's and 0's but soon the i386 came along and used 32bits. Back when 32 bit computers were common this is what this was in reference to. As with all things technology progressed and 64bit cpu's came along. Many attempts were made to make 32bit programs run with backwards comparability at high speeds on these CPU's, though in the end AMD made the method used today, dubbed the x86_64 instruction set. Overtime this instruction set was expanded with various additions. We can actually see the names of these additions that are available on the CPU in the system by looking yet again at the output of `cat /proc/cpuinfo` and looking at the flags section. While not all of these signify instruction set additions, many do. The most common 'famous' if you will is SSE, of which there have been multiple revision, the first version alone adds [70 instructions](https://en.wikipedia.org/wiki/Streaming_SIMD_Extensions), which are used to make math faster

Alright, so finally, enter Mircocode. At some point all of this became a lot to manage and processor designs evolved even further, getting exponentially more complicated and faster with more and more instructions, so they added this little computer which has the primary duty of turning the mess of countless possible instructions into yet even smaller instructions that the heavy duty 'real' processor does. Every once in a while a problem will be found in the way this is done, or a security vulnerability in the hardware itself may be found, and your CPU manufacture will release a microcode update.

That update version is what you see on that line of `cat /proc/cpuinfo`

Now, at the beginning of this guide I said I wouldn't provide useless information, and I'm sure that all looks pretty useless without more context. In general, this is interesting because you can (and will need to) write some assembly code by hand every now and then. Thankfully, its usually not x86 assembly which is very, very difficult to write but instead assembly on much smaller, micro controllers (basically really tiny computers), where that assembly is necessary because the system is so limited.

### Cache

Okay, next up is cache. Cache, just like in the real world, is a small place to store things. Most people like to think the majority of what a computer does is raw number crunching, doing hard math, but the truth is more often than not it's just moving data around. This follows a path from slowest and cheapest storage up to the fastest but most expensive. Typically this order looks a bit like

Hard Drive -> Solid State Drive -> Ram -> Cache -> Registers , where the price for storage on a hard drive can be under \$0.10Gb, Ram upwards of \$10Gb, and Cache and registers, which are storage baked directly onto the CPU, cost much, much, more to implement.  It's of note that these not only are digitally faster with each jump, but also usually physically close. A hard drive can be 10's of feet of wire from the CPU while the RAM can be a few inches at best, and the cache and registers are physically in the CPU dye. Most of the data above the HDD/SSD level is actually just smaller subsets of each previous pool. In fact, on modern CPU's there are actually usually 3 levels of cache, each with a progressively smaller size but increase in proximity to the executed instruction.

Put simply, just as with adding more Random Access Memory (RAM) to your system, having more cache means more information can be within arm's reach of the CPU to do work on at any moment.

Let's take a look. install the `hwloc` package using yay and then run `lstopo` and you should get an output that looks a bit like this

![lstopo]({static}/openg/lstopo.png)

The stuff on the right are connections around the system, you can ignore those for now, but see the various cache layers, designated by L3, L2, L1d and L1i, and you can see how each core has it's own cache. Finally, you can see that each core has two processing units? Hey, wait, what's that all about?

Hyper threading, or SMT, or whatever the new term is for it, is a way of adding paths for doing things to keep every part of the CPU active. We'll go into this more later, but for now, suffice it to say it's a way of getting just a bit more performance out of a system.

### Interrupts

While not listed in the /proc/cpuinfo output , it's still relevant to bring up CPU interrupts, which are, fittingly, listed in /proc/interupts

![procint]({static}/openg/procint.png)

> Output of `cat /proc/interupts` on my system

![netdataint]({static}/openg/netdataint.png)

> Output of information for the first 3 cores on my system displayed graphically using Netdata

CPU interrupts are a bit confusing because the term interrupt can refer to the action itself, the code that executes, or the general concept. In general a CPU interrupt is when something needs to poke the CPU to tell it to interrupt what it's doing. This can be when physical pin in the CPU gets a signal, a timer going off, or a program dividing by 0. We'll cover this more in depth later, but from the hardware perspective what's relevant is the CPU is generally so fast compared to other actions that the rest of the system mostly just triggers an interrupt to let the CPU know that a task the CPU asked to be done has completed. The most common example is requesting data from disk (Hard drive or SSD) takes so long, even at just a few milliseconds, that the CPU can get millions of things done while it waits for the request to be fulfilled. So rather than waste that time having the CPU poke the device asking "Are you done yet? Are you done yet?" the disk (or the controller it's hooked up to, like the chipset) issues an interrupt to the CPU to let it know a task has completed. USB works in a similar way, though the really old keyboards with the circular connector (PS2) actually did interrupt the CPU directly on each key press.

We'll come back and explore this more later, but if you're really interested you can read ahead by going over these links and reading these man pages: [Oreilly on Interupts](https://www.oreilly.com/library/view/understanding-the-linux/0596005652/ch04s06.html), [Oreilly cont.](https://www.oreilly.com/library/view/understanding-the-linux/0596005652/ch04s02.html), `man trap`,  `man syscall`, 

### Power

the CPU is one of the most power hungry parts of your computer, and as such it does some interesting things to try to keep it's power usage lower. Namely, it'll turn it's clock speed to do less operations per second as previously mentioned, but theres other things like entering sleep and hibernation states the processor is also capable of. The main thing you might want to concern yourself with from a performance to power consumption stand point is how aggressive this clock speed changing is. You can go as extreme as to tell the system to never let the processor get to full speed or to say 'only run at max speed all the time'. The latter is actually quite useful as often it can take quite a few clock cycles after a heavy load is started for the processor to come up to speed, but if it's always running full steam ahead this is a non issue. This entire topic is particularly relevent to laptops, and on Arch you may want to install a program to manage some of this for you or set sane defaults to save battery. I've had good luck using the `tlp` package. the `cpupower` package is helpful for looking at how arch handles cpu scaling and it lets you directly set these min and max frequencies or pick the scaling governor to handle how aggressive the switching is.https://wiki.archlinux.org/index.php/CPU_frequency_scaling#cpupower

I very strongly recommend looking into this on any system though, as by default some CPUs will run at the minimum frequency only.

![cpupower]({static}/openg/cpupower.png)

We'll talk about delivering power to the CPU in a bit, when we talk about the Voltage Regulation Module (VRM) on the Motherboard.

### Physically, what and where is this thing?

The CPU is on a square or rectangular board that is usually covered by a large heat sink used to keep it cool under load. It connects to the motherboard via hundreds of small, gold plated pins to send and receive signals (which well will discuss in depth later) from all around the system. Even though most modern CPUs are x86_64, generation to generation and cross manufacturer there are changes in the number of pins and the way they are arranged, meaning getting a new processor that's not from the same generation usually won't work. Furthermore, most laptops have soldered on processors that can not be upgraded to begin with.

## RAM

![RAM]({static}/openg/ram.jpg)

 This is RAM or Random Access Memory. The above two sticks are the normal sized used in desktop PCs, this form factor is called a DIM while the bottom two are from laptops and are called SO-DIMS, the placement of the notch is an indicator of the generation of RAM, with neraly all modern ram being a consecutive generation of the DDR standard. At the time of writing (Q2,2019) DDR4 is common in new, medium to high end devices, with many DDR3 devices still being used. Of note many more compact devices solder the ram chips directly to the board, meaning there is no form factor to consider.

Just like the CPU, RAM has a speed at which it operates as well, Typically it's listed in MHz still, but speeds range from ~1.8Ghz to ~3.8Ghz at the time of writing, dependent DDR3 or 4. While DDR4 has faster clock speeds, it does typically have a higher overall latency, meaning theres a longer delay between when when data is requested to when it's delivered, albeit at a much higher total throughput. This is a massive topic in of itself, yet is also pretty niche as outside of some pretty specialized applications RAM speed and latency has a relatively minor impact, though faster is typically better.

okay, let's move on to ram in Linux.

While support for this will vary depending on your motherboard, you should be able to see information about your ram by running `sudo dmidecode --type 17`

The output will probably repeat multiple times, printing once for each physical stick of ram in your system. I actually have 4 sticks, but I'll just be showing one:

![dmiram]({static}/openg/dmiram.png)

You should note that many of the things mentioned above can be seen here, though I do want to look at some things here.

First, size. This is an 8Gb or 8192Mb stick of ram. Obviously the more ram the better, but you may find strange ram configurations where there's a mix of ram sizes in a system. This can be bad for performance though, because of memory channels.

Most modern systems use 2 or 3 memory channels, to simplify a bit, it makes it so two sticks of ram can have their speed be used in parallel. Think about it like a parking lot, if you have a total of 4 parking lots you could, theoretically, hook them all up in a straight line with one entrance/exit shared among them. This would be pretty stupid though, as it would severely bottleneck traffic going though. Instead you may want to add a separate entrance and exit for each, but that quickly becomes expensive. Instead, most systems use a mix of the two, connecting a pair of sticks together, allowing for added capacity, but allowing for multiple pairs to be inserted independently. A lot of people don't fully fill all the available memory slots on their motherboard though, so instead of having 4 lots with 2 entrances you should be able to have 2 and 2, unless you mistakingly put the sticks in wrong, leaving one 'entrance' closed entirely while the other now has a ton of capacity. On my motherboard these 'lots' are labeled A1, A2, B1, and B2. Looking above you can see the stick we're looking at here is the A1 lot. It's because of this that you should ideally have a multiple of as many sticks of ram as you do memory channels. For example, if you have a two channel motherboard and CPU then you want either 2, 4, or 8 sticks of ram. Most motherboards top out at 4 sticks though, with 2 channel and 2 sticks being the most common configuration.

Next, I want to look at the line that says 'Type Detail: Synchronous Unbuffered (Unregistered)' this is referencing another type of ram, which is buffered and error correcting (ECC) memory. This type of ram is almost strictly used in servers and is special because there's actually an extra physical memory die on the card. If you look above you'll notice each stick has sets of 8 black memory dies. ECC memory actually has 9 dies. The reason there are normally 8 dies is simple- there's 8 bits in a byte. Servers don't work on some magic 9-bit in a byte system, instead, this extra bit per byte is used to ensure the data hasn't been corrupted. The math behind this can get complicated and weird, but for now let's just go with it. Buffered memory is basically just adding an extra 'buffer' between the read/write and again, it's a server thing.

Finally I want to point out the voltage. Much like a CPU the voltage a Ram module runs at is important, and needs to be kept very stable. However, it may need bumped up if the RAM is running at a particularly high speed or if it's set higher than factory (overclocked).

Some RAM actually includes a special memory profile, often called XMPP, which can be applied in the BIOS/UEFI settings to make sure you're getting the absolute best performance out of you RAM before manual overclocking. This may actually overclock your CPU a bit as well as a bit of a side effect.

There's a program on your system called `free` which can be used to see how much RAM you have, how much is in use, etc. Let's run free with the -h flag so we can see the amounts with nice units.

```bash
╭─vega@lyrae ~
╰─➤  free -h
              total        used        free      shared  buff/cache   available
Mem:           31Gi       4.5Gi        23Gi       488Mi       3.3Gi        26Gi
```

You can see I have 32Gb of RAM total (it get's truncated to 31 because it's actually like 31.99, units are weird), with ony 4.5Gb used. Most people complain about Chorme eating all their RAM but the truth is unused RAM is wasted RAM. The OS will manage RAM for you, and if you run out start using swap (that partition we made eariler).

Let's take a deeper dive, reading the man page for free with `man free` we can see it uses information from /proc/meminfo, so lets look at that file ourselves using `cat /proc/meminfo`.

One of the most interesting things to point out here is the concept of Dirty memory.

'Dirty' memory is the amount of information that has been modified in memory, but that has not been saved back onto the permanent storage (SSD/HDD). If you were to suddenly lose power this information would be lost.

Pagefaults and misses are also important. Because these topics are a bit hard to summarize I'm going to recommend you read [the Wikipedia page on Pagefaults](https://en.wikipedia.org/wiki/Page_fault) and on [Cache Misses](https://en.wikipedia.org/wiki/CPU_cache#Cache_miss). It's okay if you don't understand everything you're reading. Hopefully as you read more later and gain more experience the terms you didn't know will 'click' and you'll understand. 

Going back to when cache was mentioned though, RAM's primary job is to hold bulk information that's in use a bit closer to the CPU. For example if you load a large image file it'll first get copied to ram and then be processed though cache in chunks, this is because there just simply isn't enough cache on the CPU to hold a large image.

## The Motherboard

![mobo]({static}/openg/mobo.jpg)

This is an older motherboard, but still new enough to have modern parts. Let's start by looking at the the most obvious physical features and move to smaller things from there.

The most obvious thing to point out is the size of the motherboard. This is a mATX motherboard, which is considered the normal size for most systems. Most gaming or DIY computers will use full size ATX motherboards, which look very similar but are a bit longer vertically, allowing for more expansion slots - those horizonal black bars - among other features. Other formfactors include ITX, a smaller form factor with only a single expansion slot, eATX (extended ATX) which is rarely used now, and SSI and EEB which are both server motheboard sizes.

The large, white square is the CPU socket. This is an older board made for an AM3+ processor. The AM3+ processor line, as well as most consumer processors from AMD use a PGA or Pin Grid Array socket. these CPUs have many pins on the bottom which fall into these holes to make contact. Before the CPU is inserted the metal leaver arm, seen at the bottom of the socket if you look carefully, is raised and the CPU should smoothly plop right in, after which the arm can be lowered. Modern Intel CPUs follow a similar-ish mechanism, only instead of having a bunch of pins that go into holes the 'pins' are actually tiny springy pieces of metal on the motherboard which make contact with pads on the CPU, that socket looks a bit like this, albeit this is an old one:

![File:CPU Socket 775 T.jpg]({static}/openg/581px-CPU_Socket_775_T.jpg)

([img source](https://commons.wikimedia.org/wiki/File:CPU_Socket_775_T.jpg))

If you're looking at a server or high end workstation you may actually run into a single motherboard with multiple CPU sockets. These are becoming less common with time, but even though there are multiple CPUs the system still operates as one larger system. For example, I have access to a system with 4, 8 core, 16 thread cpu's to give for a total of of 64 threads. Giving this beautiful sight:![64t]({static}/openg/64thread.png)

Clearly, a server with that much horsepower will use a lot of electricity though, and there is some overhead for the system when getting information from one physical CPU to another.

Above and left of the CPU on you'll see a bunch of copper coils in little boxes and some small metal cylinders, as well as a cluster of these with a large, 4-hole plug a bit further left, directly above the big aluminum heat sink. This all makes up the VRM or Voltage Regulation Module. The connector there is where the CPU power plug from the PC power supply would be plugged in. The power needs to be carefully controlled, filtered, and adjusted based on the needs of the CPU, that's what all of this is for. Generally the beefier and faster a CPU, the larger the VRM. The VRM also needs to dissipate a good amount of heat on higher end systems so many nicer motherboards will cover this up with a large heatsink.

Moving on from the CPU you'll see 4 vertical slots next to socket, these are where the RAM sticks are inserted. You'll notice they're color coded as to indicate which slots share the communication channel, so in this case you'd want to put the first memory stick in the blue slot closest to the socket, followed by the black slot closest to the socket, then repeat.

While we're looking at this side of the board- next to the RAM slots you'll see two things of note. First, that black circular thing is actually a little buzzer. A lot of even modern systems have these on board to buzz error codes out in morse code if something goes wrong. Below that is a large, 20 or 24 pin connector (most modern systems use the 24pin varient) which is where the power supply is plugged in to provide power to the motherboard (with the exception of the CPU) as well.

On the other side of the CPU and down a little you'll see a sizable metal heatsink. This is covering the chipset. We'll come back to what the chipset does in a bit. This motherboard is actually a bit weird, on most motherboards the chipset is found almost directly below the RAM, but in general look for a large heatsink and it's probably under that.

Below the chipset here are 4 expansion slots, all of which use the PCI-e standard in this case. We'll come back to these in a bit.

In the bottom right of the motherboard there are 6 SATA connectors, here each is a different color (for no apparent reason?). These are for connecting storage like hard drives.

Vertically in line but closer to the center of the board you'll also spot a coin cell battery. This is so the system can keep time with use of an on board Real Time Clock (RTC) even when fully powered down and disconnected from wall power.

Along the bottom you'll see various connectors with pins sticking out, these are mostly for front panel connections- where the USB, audio, power button, etc. from the front of your case connect.

Finally, along the top of the back left edge you'll see the metal tops of the main 'rear i/o' for the computer. These are all the main connections for your system. The bulk of the system's USB ports, networking, and audio ports will be found here.

So, how do we get any information from the motherboard? Well, in case it wasn't already obvious, the motherboard isn't really one thing. It's more a common interconnect point and routing system than anything; however, it does have some of it's own responsibilities. To start small let's look at one small, but exceedingly import role of the motherboard: fan and temperature control.

To see what your fans are doing on Linux you'll need to grab the package `lm_sensors` with yay, then you can run run `sudo sensors-decect` and mash enter until it's done. After this you should be able to run `sensors` and see an output similar to this one:![sense]({static}/openg/sensors.png)

Of note, depending on your system, there's a small chance nothing will be detected at all or that some information will be wrong. Even in my case this is true as my CPU fan is reporting 0 RPM. Actually entering your motherboard's UEFI or BIOS settings may expose more information, but we'll talk about that more later.

Alright, so that's coll and all, but what else can you do?

Alright, let's move on to seeing the system buses, namely, the pci bus.

The pci bus is where most of the system's add in cards, controllers, and the like connect. Here's a shortened version of the ouput of `lspci` from my system

```bash
00:00.0 Host bridge: Advanced Micro Devices, Inc. [AMD] Family 17h (Models 00h-0fh) Root Complex
00:00.2 IOMMU: Advanced Micro Devices, Inc. [AMD] Family 17h (Models 00h-0fh) I/O Memory Management Unit
00:01.0 Host bridge: Advanced Micro Devices, Inc. [AMD] Family 17h (Models 00h-1fh) PCIe Dummy Host Bridge
00:01.1 PCI bridge: Advanced Micro Devices, Inc. [AMD] Family 17h (Models 00h-0fh) PCIe GPP Bridge
 ...
00:08.1 PCI bridge: Advanced Micro Devices, Inc. [AMD] Family 17h (Models 00h-0fh) Internal PCIe GPP Bridge 0 to Bus B
00:14.0 SMBus: Advanced Micro Devices, Inc. [AMD] FCH SMBus Controller (rev 59)
00:14.3 ISA bridge: Advanced Micro Devices, Inc. [AMD] FCH LPC Bridge (rev 51)
00:18.0 Host bridge: Advanced Micro Devices, Inc. [AMD] Family 17h (Models 00h-0fh) Data Fabric: Device 18h; Function 0
 ...
00:18.7 Host bridge: Advanced Micro Devices, Inc. [AMD] Family 17h (Models 00h-0fh) Data Fabric: Device 18h; Function 7
01:00.0 Non-Volatile memory controller: Phison Electronics Corporation E12 NVMe Controller (rev 01)
02:00.0 USB controller: Advanced Micro Devices, Inc. [AMD] X370 Series Chipset USB 3.1 xHCI Controller (rev 02)
02:00.1 SATA controller: Advanced Micro Devices, Inc. [AMD] X370 Series Chipset SATA Controller (rev 02)
02:00.2 PCI bridge: Advanced Micro Devices, Inc. [AMD] X370 Series Chipset PCIe Upstream Port (rev 02)
03:00.0 PCI bridge: Advanced Micro Devices, Inc. [AMD] 300 Series Chipset PCIe Port (rev 02)
 ...
03:07.0 PCI bridge: Advanced Micro Devices, Inc. [AMD] 300 Series Chipset PCIe Port (rev 02)
07:00.0 USB controller: ASMedia Technology Inc. ASM1143 USB 3.1 Host Controller
08:00.0 Ethernet controller: Intel Corporation I211 Gigabit Network Connection (rev 03)
0a:00.0 PCI bridge: Advanced Micro Devices, Inc. [AMD] Device 1470 (rev c3)
0b:00.0 PCI bridge: Advanced Micro Devices, Inc. [AMD] Device 1471
0c:00.0 VGA compatible controller: Advanced Micro Devices, Inc. [AMD/ATI] Vega 10 XL/XT [Radeon RX Vega 56/64] (rev c3)
0c:00.1 Audio device: Advanced Micro Devices, Inc. [AMD/ATI] Vega 10 HDMI Audio [Radeon Vega 56/64]
0d:00.0 VGA compatible controller: NVIDIA Corporation GP106 [GeForce GTX 1060 6GB] (rev a1)
0d:00.1 Audio device: NVIDIA Corporation GP106 High Definition Audio Controller (rev a1)
0e:00.0 Non-Essential Instrumentation [1300]: Advanced Micro Devices, Inc. [AMD] Zeppelin/Raven/Raven2 PCIe Dummy Function
0e:00.2 Encryption controller: Advanced Micro Devices, Inc. [AMD] Family 17h (Models 00h-0fh) Platform Security Processor
0e:00.3 USB controller: Advanced Micro Devices, Inc. [AMD] Family 17h (Models 00h-0fh) USB 3.0 Host Controller
0f:00.0 Non-Essential Instrumentation [1300]: Advanced Micro Devices, Inc. [AMD] Zeppelin/Renoir PCIe Dummy Function
0f:00.2 SATA controller: Advanced Micro Devices, Inc. [AMD] FCH SATA Controller [AHCI mode] (rev 51)
0f:00.3 Audio device: Advanced Micro Devices, Inc. [AMD] Family 17h (Models 00h-0fh) HD Audio Controller
```

Alright, clearly there's a lot going on here, and on first glance it doesn't even look all that useful. But let's look deeper. From this output we can see some interesting things. Starting from the top you'll see there's a lot of internal AMD things that are just handling routing, really these probably don't matter. the first interesting things to look at is `01:00.0 Non-Volatile memory controller: Phison Electronics Corporation E12 NVMe Controller (rev 01)` which is telling me that my super speedy NVMe solid state drive is at the address 01:00.0 on the pci bus and despite being made by a consumer brand (I think mine's a Silicon Power? though I have another that's made by Samsung) the actual controller on the device is made by Phison, a reputable brand for NVMe controllers.

next thing of note is

```bash
02:00.0 USB controller: Advanced Micro Devices, Inc. [AMD] X370 Series Chipset USB 3.1 xHCI Controller (rev 02)
02:00.1 SATA controller: Advanced Micro Devices, Inc. [AMD] X370 Series Chipset SATA Controller (rev 02)
```

You can see here that I have a separate controller for my USB 3.1 ports and that it's sharing pci lanes with my sata controller. In theory, this means If I'm working one or both of these really hard, the other may be slower.

next is:

```bash
07:00.0 USB controller: ASMedia Technology Inc. ASM1143 USB 3.1 Host Controller
08:00.0 Ethernet controller: Intel Corporation I211 Gigabit Network Connection (rev 03)
```

What's interesting here is I have another 3.1 controller, on an entirely different set of lanes. Really, this is a fault of USB that it's not very clear, this is actually a USB 3.1 gen 2 controller, so each port has a top speed of 10gb/s, compared to the 5gb/s of the other controller.

You'll also see that my network interface is being handled by an Intel network controller, despite this system having an AMD CPU.

moving on:

```bash
0c:00.0 VGA compatible controller: Advanced Micro Devices, Inc. [AMD/ATI] Vega 10 XL/XT [Radeon RX Vega 56/64] (rev c3)
0c:00.1 Audio device: Advanced Micro Devices, Inc. [AMD/ATI] Vega 10 HDMI Audio [Radeon Vega 56/64]
0d:00.0 VGA compatible controller: NVIDIA Corporation GP106 [GeForce GTX 1060 6GB] (rev a1)
0d:00.1 Audio device: NVIDIA Corporation GP106 High Definition Audio Controller (rev a1)
```

Here you'll see some devices can actually use multiple IDs for one physical device. both of the 0c:00.x 'devices' are actually for the 'Vega56' graphics card (Often called GPU for graphics processing unit) made by AMD Radeon, while the 0d:00.x devices are for the GTX1060 card made by Nvida that I have in this system as well. Of note, having both of these in one system is exceedingly uncommon, and my use case is strange; however, It is common to see systems which have a gpu integrated into the CPU (which will still appear in this list) and have a separate larger GPU in the system as well.

If you continue down this list you'll see there's yet another USB controller and a audio controller among other things.

What's cool is this information relates back to something we saw earlier when looking at the CPU:

![lstopo2]({static}/openg/lstopo.png)

See all those PCI ids on the right side, those directly correlate with a lot of the above.

Finally, if you want a lot more information you can run `sudo lspci -v` to see even more info about anything, for example, here's the output about my GTX1060 GPU:

```bash
0d:00.0 VGA compatible controller: NVIDIA Corporation GP106 [GeForce GTX 1060 6GB] (rev a1) (prog-if 00 [VGA controller])
    Subsystem: Micro-Star International Co., Ltd. [MSI] GP106 [GeForce GTX 1060 6GB]
    Flags: bus master, fast devsel, latency 0, IRQ 78
    Memory at f6000000 (32-bit, non-prefetchable) [size=16M]
    Memory at c0000000 (64-bit, prefetchable) [size=256M]
    Memory at d0000000 (64-bit, prefetchable) [size=32M]
    I/O ports at c000 [size=128]
    Expansion ROM at f7000000 [disabled] [size=512K]
    Capabilities: [60] Power Management version 3
    Capabilities: [68] MSI: Enable+ Count=1/1 Maskable- 64bit+
    Capabilities: [78] Express Legacy Endpoint, MSI 00
    Capabilities: [100] Virtual Channel
    Capabilities: [250] Latency Tolerance Reporting
    Capabilities: [128] Power Budgeting <?>
    Capabilities: [420] Advanced Error Reporting
    Capabilities: [600] Vendor Specific Information: ID=0001 Rev=1 Len=024 <?>
    Capabilities: [900] Secondary PCI Express <?>
    Kernel driver in use: nouveau
    Kernel modules: nouveau
```

The most notable thing here is actually at the end:

```bash
Kernel driver in use: nouveau
Kernel modules: nouveau
```

tells us I'm using the nouveau driver and kernel modules instead of one of the alternatives on the Nvida card in my system If I wanted to I could switch this over to the proprietary Nvidia driver to get a pretty nice speed boost in some applications.

> I'm not really worried about this because I'm mostly just using the Vega56 card. The nvidia card is there strictly for CUDA support in some workloads.

Much like lspci, there's also `lsusb`, which as you can imagine, tells us information about the USB devices on the system. I have a LOT of usb devices on this system so I'll just paste in a snippet:

```bash
Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 001 Device 003: ID 0c45:6340 Microdia Camera
Bus 001 Device 008: ID 28de:1142 Valve Software Wireless Steam Controller
Bus 001 Device 006: ID 258a:0013
Bus 001 Device 005: ID 05e3:0745 Genesys Logic, Inc. Logilink CR0012
```

You'll see here that USB hubs, input devices, webcams, etc. all show up. Anything that's hooked up through USB should appear here. The device with ID 258a:0013 isn't really telling us anything though. What we do know is the first part is the USB Vendor ID. This is an ID that vendors of USB devices have to purchase to uniquely id their products.

upon looking this id up online, it appears it's used for a generic USB keyboard.

For completeness I'll mention, the first part of the id, the x's in xxxx:yyyy is the vendor id, while the y's are the product id.

Finally, I'd like to mention `dimdecode`. according to the manual page:

> dmidecode is a tool for dumping a computer's DMI (some say SMBIOS) table contents in a human-readable format. This table contains a description of the system's hardwarecomponents, as well as other useful pieces of information such as serial numbers and BIOS revision. Thanks to this table, you can retrieve this information without having to probe for the actual hardware. While this is a good point in terms of report speed and safeness, this also makes the presented information possibly unreliable.

we've already used this to get information about the system ram, but other things can be read as well. For example, going back to the pci slots from above running `sudo dmidecode --type 9` will tell you what physical slots correspond to what bus address among other information, for a full list of available types simply look at the dmidecode man page with `man dmidecode`.

### Chipset

The chipset is a chip usually located in the bottom right 1/4 of a motherboard underneath a heatsink. The chipset coordinates the data flow between the processor and most of everything else- excluding the few direct-CPU attached things like the Graphics card. Older systems had both a Northbridge and and a SouthBridge as two separate chips, but everything modern has just the single chip, as the Northbridge, which had memory the memory controller, isn't necessary on modern systems where the memory controller has been integrated into the CPU itself.

For the most part, the chipset on a motherboard will match a certain CPU socket, that is each generation of CPU will have it's own chipset and socket; however, this is not always the case as sometimes one chipset may support multiple CPU generations or a CPU generation will work with multiple chipsets. This is the case with AMD's ryzen line where a first generation Ryzen CPU such as the Ryzen 1700 will work in a motherboard with an x370, x470, or x570 chipset, and a third generation Ryzen CPU such as the Ryzen 3700 will work in any motherboard with one of those as well, albeit running a generation mis-match may result in degraded performance or missing features (such as lacking PCIe 4.0).

Finally, it's notable that the chipset typically acts as a PCIe lane 'splitter' of sorts, turning (usually) 4 lanes into may more so that more devices may be attached. This can be particularly important when many high bandwidth devices are attached though, as even though these lanes are split, there's still only that original 4 lanes of bandwidth to go around.

![Chipset]({static}/openg/Chipset.png)

> [Source](https://www.intel.com/content/dam/www/public/us/en/documents/product-briefs/z370-chipset-product-brief.pdf)

![chipsetamd]({static}/openg/chipsetamd.png)

> [Source](https://en.wikichip.org/wiki/amd/microarchitectures/zen)

### Expansion slots

![pciep]({static}/openg/pciep.jpg)

> Two PCI-e 1x expansion cards, one for USB 3.0 and one for audio. Of note, most motherboards have both functions built in.

Most modern expansion cards connect though the PCI Express or PCIe bus. This standard, much like DDR, has gone though multiple generations of bandwidth doubling. Currently consumer devices offer up to PCIe 3.0 but devices with both 4.0 and 5.0 should be on the market shortly.

PCIe cards are used for just about anything you could imagine, form adding a more powerful graphics card, more usb ports, a higher end sound card, to some more esoteric things like specific task accelerators (encryption, compression) or even a software defined radio.

No matter what the device is you have to keep in mind its physical and electrical requirements. That is, do you have a slot long enough to accommodate the card and can you provide power to it.

This may seem odd, but unlike most connections (think USB or Ethernet) which may support varying speeds (usb2 vs 3) but are still physically the same size, the more bandwith hungry a PCIe device, the larger the physical connection. The largest available is a 16x connection, while the smallest is a 1x. The most commonly used lane arrangements are 1x, 4x 8x, and 16x. The motherboard shown above has one 16x connector and three 1x connectors. If you have a card that is electrically wired for 4x it will definitly work in any slot physically designed for 4x or greater, and it will still work in a 1x slot of that slot is open ended- this means the 'back' of the slot is open, allowing the card's connector to go past the actual physical connection. Similarly, many 16x physical slots only have 8x actually wired. If you use a card which elecrically needs more connections it will almost certainly still work, but may have degraded performance. Similarly, if you have a card which expects a PCIe gen 3 16x connection but the best you have available is a PCIe gen 2 connection, it will run at half speed. To be extra clear:

PCIe 1 @ 16x == PCIe 2 @ 8x == PCIe 3 @ 4x

Similarly, putting a card which only supports PCIe Gen 2 into a Gen 3 slot will not suddenly make the card faster, even if it was to compensate, that is, if the card is made for PCIe Gen 2 @ 16x and you put it in a PCIe Gen 3 @ 8x slot, it will still run at half speed because it's the lowest gen number of the card or the slot that determines how many lanes are actually needed.

Unfortunately, PCIe lanes, that is if you add together all the available 16x's and 8x's etc. on a given CPU are usually pretty limited. If the only extra card you plan on adding is a graphics card, you'll be fine, but if you intend to add a graphics card, sound card, network card, etc. all at once you may find that you've either run out of physical slots or that a card is running with less than ideal bandwidth as a 16x slot may 'give up' 8 of it's lanes becoming an 8x slot so that another card can function at all.

Of note, the number of physical lanes and slots the mother board has probably greatly exceeds the number of lanes actually going to the CPU, so even if it appears you have plenty of room to add cards you may end up accidentally starving one for bandwidth.

Finally, from a power perspective most motherboards will supply up to 75 watts to a card through the motherboard, but power hungry cards like the Nvidia and AMD graphics cards in my system may require external power connections. Also, some server boards cap PCIe power delivery to only 25 watts without an external power supply, so just be careful with compatibility.

There are some other standards other than PCIe worth mentioning though.

Older standards such as PCI, AGP, and ISA were all used before the widespread adoption of PCIe and while their availability is declining, PCI cards are still often for sale, you need to be very careful to only get PCIe cards and not PCI cards if your system doesn't support them.

Both AGP and ISA have been phased out a long time ago, but very old cards may poke up now and then. If you're into vintage computers you may want to look the standards up to learn more.

![pciecards]({static}/openg/pciecards.jpg)

> Top: a 16x pci-e graphics card and a 1x pcie networking card
> 
> Bottom: an ISA networking card and an AGP graphics card, not pictured is the PCI connector

### ROM/BIOS/UEFI

Motherboards have to coordinate the communication of all the peripherals on the system and their own internal buses, furthermore, they have to have some sort of minimal configuration settings for setting things like which drive to boot off of or what speed the CPU or RAM should run at. These configuration settings are stored in some ROM or 'Read Only Memory', which is an independent chip on the motherboard. This configuration is read by the Binary Input Output System (BIOS) or the Unified Extensible Firmware Interface (UEFI). UEFI is essentially just the newer replacement for BIOS, and usually includes a compatibility mode for BIOS based hardware. When you first turn on the system you can typically mash either the delete or F12 key to enter this configuration page. It's typically from this interface that you'd select your boot device, change your CPU or RAM clock speed, and set the system time. On that note, the system also likely has a battery on board which power's the on-board real time clock, which allows the system to maintain the time even when disconnected from power. On some systems the ROM is actually volatile meaning if this battery dies and the system is disconnected from power you may loose the BIOS/UEFI settings.

Of note, you may need to update the UEFI or BIOS of a system which is sometimes done via a special admin command within windows but more commonly done by downloading a file to flash drive, putting the drive in a specific usb port, and loading the update file. When this is done it's common to lose all UEFI/BIOS settings as well, as it overwrites the ROM.

Finally, it should be noted that it's pretty easy to make your system not boot or boot-loop if you break things here. So, be careful. If you set your fan speeds slower to make the system quieter then everything overheats and dies, well, ヽ（´ー｀）┌

Because this varies per motherboard there's no universal way to describe how it looks or works. Some boards will support a lot more configuration than others, with really the only nearly definite options you'll find at the time of writing being a switch to enable virtualization extensions (for running virtual machines) and a switch to turn of Secure Boot, which you likely had to do to install Arch to begin with.

Further reading [How To Geek: What Is UEFI, and How Is It Different from BIOS?](https://www.howtogeek.com/56958/htg-explains-how-uefi-will-replace-the-bios/) 

### VRM

The VRM or 'Voltage Regulation Module' serves a simple but important task of ensuring that the CPU (or processor in question) receives a constant voltage or voltage that makes sense for it's current clock speed.

Essentially the VRM may contain multiple stages of current and voltage regulation modules. The more of these stages the more stable the voltage and the more current can be delivered. For most cases, this can be left alone, but it's incredibly important when over clocking, as to overclock a CPU or GPU it's usually necessary to increase the voltage, which is typically done from within the BIOS/UEFI or from a configuration utility inside the OS in the case of the GPU.

You can typically tell how strong a particular VRM is by counting the number of 'chokes' on the board.

[TODO, add pictures of chokes]

## Graphics Card (or integrated graphics)

![gcards]({static}/openg/gcards.jpg)

> A wide array of graphics cards spanning multiple generations. The majority pictured are made by Nvidia

Most 'beefier' systems have a graphics card, but (almost) every computer that can output a video signal has dedicated graphics processing of some sort. For many lower end or low power systems (especially laptops) this graphics processing unit, or GPU, is built into the CPU and uses the systems same ram for video. For larger systems there's typically a larger graphics card (often the graphics card is called a GPU as shorthand; however, the GPU is technically just the processor on the board), which is a separate device hooked up though an expansion connection (like PCIe). Typically these cards differ from their integrated into the CPU counterparts in that they're much, much faster and drink much more power. In general the GPU is required because while CPUs are great at very fast consecutive operations like taking '1+1=a, a+1=b, b+1=c' the GPU is really good at parallel operations like '1+1=a, 2+2=b, a+b=c', where both of the first two operations can be done at the same time by different processing units before being manipulated together in the third operation. In reality, this is because the modern GPU really only treats pushing color data to the screen as a secondary operation, instead it's main purpose is to do complex matrix and vector math which is what goes into drawing polygons in a 3D scene, and these matrix operations are massively parallel. So while a CPU has  at the high end a dozen cores, a GPU may have multiple thousand. These cores are much more limited in what they can do of coarse, and typically run at a lower clock speed than the CPU, but for their purpose they absolutely shred though large data. This has given rise to GpGPU Computing, or General Purpose Graphics Processing Unit Computing, where in the GPU is used for things other than graphics, like accelerating data base searchers or training AI models.

As a brief note, historically graphics cards served primarily to actually draw to the screen, with some only having a fixed number of characters they could draw for rendering a text interface and others having a quite limited color palette that dictated how final images would look.

Today, there are three primary manufactures of GPUs: Nvidia, AMD, and Intel.

The largest player in the space, Nvidia, makes cards targeted primarily to gamers in their GTX and RTX lineup, and has cards meant for professional/compute tasks in their Tesla and Quadro lines. While the two lines are very similar technically they vary mostly in drivers and compute bit depth, with the professional cards providing the ability to do higher resolution floating point calculations easier. This is primarily done for market segmentation though- to prevent professional from buying the much cheaper (albeit still far to expensive) 'gaming' cards. All of Nvidia's cards support CUDA, a programming framework that makes it easier to take advantage of Nvidia's cards for GpGPU purposes.

AMD is currently offering little competition to Nvidia in the high end; however, their more midrange cards have found great success as they perform plenty well for the majority of games and compute work loads at what is often a fraction of the cost. Of note, AMD cards do not support CUDA, though they do support a variety of open standards that serve the same purpose. This is still an issue though, as many programs that can take advantage of GpGPU acceleration depend on CUDA and therefor require an Nvidia card. Nvidia has frequently been quite hostile to the open source community and their drivers significantly lag behind in quality and performance compared to AMD's for Linux.

Also of note, AMD makes many 'APU's or Accelerated Processing Units, which is just branding for their take on graphics integrated into the CPU. However, AMD's integrated graphics, at least at the moment, far out do Intel's offerings. Intel, at the moment, only offers integrated graphics that are less than stellar performers. Despite this, laptops with Intel Integrated Graphics are very common due to their low power usage. Intel's Integrated Graphics have very good drive support though, both on Linux and Windows.

As of the time of writing, Intel is starting to send prototype graphics cards to vendors in a bid to break out of the integrated graphics only space.

Moving into the actual hardware itself let's look at three graphics units, starting with Intel Integrated.

Both Intel and Amd offer integrated graphics of various capability that usually pair reasonably well with the CPU they share the die with. Below is an image of the inner workings of a ryzen cpu with integrated graphics, showing the actual CPU cores (I believe this is a 4 core eight thread system?) in CCX0, the memory controller, and the very large Vega series GPU on the right. This looks to be a Vega11 GPU as you can count the 11 stacks of Compute Units in the GPU section. Of note, if you get a CPU with integrated graphics and don't actually use it because you're getting a separate, more powerful card , then you're effectively paying for a large amount of hardware you're not using. As you can see below, if the GPU was not there, there would be a lot more room to add more CPU cores or other features to the CPU to make it more powerful. Unfortunately, due to market segmentation even if the actual cost to add these extra cores would be the same or less as the iGPU's cost, a CPU of the equivalent size would likely be much more expensive.

Finally, it should be noted the iGPUs share system memory for graphics memory, which is actually one of their most limiting factors- as system memory (RAM) is optimized for a different kind of access pattern, it is not nearly as fast as GDDR or HMB2, both of which are memory technologies that have been optimized for use with graphics devices. 

![1900px-raven_ridge_die_(annotated)]({static}/openg/1900px-raven_ridge_die_(annotated).png)

> [Source](https://en.wikichip.org/wiki/amd/microarchitectures/zen)

Moving on to graphics cards, Looking above at the stacks of graphics cards above, you'll probably notice that a graphics card is basically just a full separate motherboard and processor on a card. Really, this is pretty accurate, as there is a separate compute device (the GPU), ram (GDDR or HBM), and io (fan control, etc.) on the board. Of course, the Graphics card can't really be used as a full separate computer, but thinking about it as such isn't entirely wrong either. In fact, graphics cards really harken back to much older systems where it was common to add a math co-processor chip along side the CPU to make some mathematical operations faster.

## Storage

![disks]({static}/openg/hdds.jpg)

> Pictured here are 3 hard drives, 2 of which are 'full size' at 3.5" and the the other a 'laptop drive' at 2.5", the left most hard drive has been opened up, which has certainly ruined it as dust has gotten in. Below the smaller Hard drive is an NVMe ssd, a micro sd card, and a flash drive. All of which are examples of solid state storage

Permanent storage is rapidly evolving, but the old guard: hard drives and tape storage aren't going anywhere either. But why use one over the other? How do you interact with them in Linux?

[TODO] mention hdd, ssd, sata, nvme, usb-storage, sd, scsi, u.2, m.2, tape, floppy, zip

hdparm

### HDDs

Hard disk drives or 'HDDs' are sometimes called "spinning rust" because unlike other modern storage devices they're fundamentally mechanical.

Looking at the delidded hard drive you'll see they're pretty simple in their basic construction: a magnetized needle(s) move across (a) platter(s) and flip bits accordingly. These platters typically spin at 5400 or 7200 RPM, with the faster meaning data can be read and written faster as well. Hard drives generally are not used for speed though, as compared to other alternatives they're extraordinary slow. Instead, they run at 'good enough' speeds for most things- like storing video, music, etc. while being much less expensive than solid state options and with a proven reliability and without suffering from data loss when left without power for long periods of time. That said, just like any storage medium, over time data can be corrupted, so backups are still a must.

When a Hard drive is powered off, the head will typically 'park' off the platter (this is part of why the delidded plater above died, as it parked incorrectly) and transportation should be pretty safe, however, when running and spinning quickly they're pretty fragile, and this is why so many older laptops have dead drives: the gyroscopic effects of spinning something that fast make it resistant to a change in orientation, causing things to scrape, scratch, or otherwise go wrong. Thankfully most 2.5" hard drives have been hardened against this now; however, it's still a good idea to store and run hard drives with as much protection from vibration and shock as possible. In fact, yelling at a hard drive [has been shown](https://www.youtube.com/watch?v=tDacjrSCeq4) to hurt performance.

At the end of the day, for bulk media storage that you still want to be able to access quickly or for backups, hard drives are still one of the best options.

Most hard drives connect though either SATA or SAS, with almost all consumer drives being SATA, and enterprise drives using a mix. SAS has some extra features and depending on the drive may be capable of writing an reading at the same time, a nifty trick SATA drives can't do without alternating between the two rapidly.

For bulk storage servers you can get insane capacities, and building one yourself isn't all that hard. Here's mine:![powervault]({static}/openg/powervault.jpg)

> A modified powervault MD1000 with a hard drive poking out and the computer - being used an archive server - it connects to. It currently is only housing three, 3Tb SAS hard drives.

For working with hard drives in Linux you're best friend is `hdparm` lets use it to look at some disks. First we need to pick a disk to look at, running `lsblk` you should be able to see all the disks on your system, and I'll be looking at my main data drive which is a 3.7Tb drive on /dev/sdg

The first thing we should do is get an idea about the disk usage, to do that I'll go to the mount point of the disk on my system ( it's mounted at /run/media/vega/raid despite the fact it's no longer in a raid array, we'll come back to this)

so first I'll run `df -h` , that `-h` on most Linux commands means to make the output human readable, printing things in terms of Gigabytes or Terabytes etc instead of just a raw byte count.

```bash
Filesystem      Size  Used Avail Use% Mounted on
/dev/sdg2       3.7T  2.3T 1.5T  62%  /run/media/vega/raid
```

Alright, so I already have the disk 62% used, let's give that a closer look by firing up `ncdu` at the mount point. This will take a little while to scan, the more files the longer it will take. After spending a few minutes to analyze the disk I'm greeted with this:

![ncdu]({static}/openg/ncdu.png)

From this you should be able to plainly see that the majority of the hard drive is taken up by Archived files, Music, Games, Videos, and Pictures. Pretty Mundane, but I could easily dive into the Archives and see why they're so big and save myself some space

None of this is really all that interesting though, so what about speed? How fast or slow is the hard drive? Now is where hdparm comes in. Reading the man page you'll find the the `-T` and `-t` flags both perform disk read bench marks, one cached reads, the other raw, so let's run `sudo hdparm -Tt /dev/sdg`

This gives:

```bash
/dev/sdg:
 Timing cached reads:   22946 MB in  2.00 seconds = 11492.36 MB/sec
 Timing buffered disk reads: 556 MB in  3.01 seconds = 184.91 MB/sec
```

You should immediately notice that cached reads are absolutely insanely high compared to buffered, in reality it's because it was using RAM for cache, and RAM really is that fast. The reads of bulk data on the other hand? A little under 200MB/sec is actually quite fast for a hard drive. Anything between 1-200 is normal. You'll soon see that compared to SSDs though, this is kind of disappointing.

But, moving on, another few interesting flags available in hdparm are `-g` which displays the "geometry" of the drive: cylinders, heads, sectors, etc., `-H` for tempature.
This begs the obvious question: what are cylinders, heads, and sectors
[TODO]

Another thing of note is S.M.A.R.T tests, while not exclusive to hard drives, they're particularly useful for them as most hard drives give a lot of warning signs before failing out right. In
order to get in-depth S.M.A.R.T info on your drive, you'll likely need to run a test first, after which you can view the results. To do this on Linux you can run

```bash
yay -S smartmontools
sudo smartctl -i path/to/disk
```

Finally, a quick note about Western Digital Green drives: Linux eats them. Thankfully you can use hdparm to fix this. From the man page:

> -J
> Get/set the Western Digital (WD) Green Drive's "idle3" timeout value.  This timeout controls how often the drive parks its heads and enters a low power  consumption  state.
> The  factory  default is eight (8) seconds, which is a very poor choice for use with Linux.  Leaving it at the default will result in hundreds of thousands of head load/un‐
> load cycles in a very short period of time.  The drive mechanism is only rated for 300,000 to 1,000,000 cycles, so leaving it at the default could result in premature failure
> not to mention the performance impact of the drive often having to wake-up before doing routine I/O.
> WD  supply a WDIDLE3.EXE DOS utility for tweaking this setting, and you should use that program instead of hdparm if at all possible.  The reverse-engineered implementation
> in hdparm is not as complete as the original official program, even though it does seem to work on at a least a few drives.  A full power cycle is required for  any  change
> in setting to take effect, regardless of which program is used to tweak things.
> A  setting  of  30 seconds is recommended for Linux use.  Permitted values are from 8 to 12 seconds, and from 30 to 300 seconds in 30-second increments.  Specify a value of
> zero (0) to disable the WD idle3 timer completely (NOT RECOMMENDED!).

[Shouting in the Datacenter (YouTube)](https://www.youtube.com/watch?v=tDacjrSCeq4&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz)

### SSD

Solid state drives, like HDDs, come in many capacites, speeds, and form factors; however, SSDs come in many, many more than HDDs. The primary two of note at the moment are SATA SSDs and NVMe SSDs. Sata SSDs are typically the same size and shape (though sometimes a bit thinner) as the normal 2.5" laptop hard drive; however, some other standards are used such as mSATA and m.2. Unfortunately, the m.2 spec is slightly confusing, with some drives being SATA based and some being NVMe based, and the m.2 slot itself supporting any mix (just SATA, just NVMe, or both), so when getting a drive you need to be careful that your motherboard's m.2 slot and the drive are compatible.

The main reason you'd want to use NVMe is because it's much, much faster. NVMe drives are often many times faster than their SATA equivilents, and as of the time of writing, only slightly more expensive, albeit not supported on all systems.

All SSDs regradless of type consist of 3 main parts: The Controller, the NAND, and some RAM. (okay, technically not all SSDs have ram, but that's sorta misleading)

[TODO]
Optane, NVMe, Sata, technically all flash, Ram disks, different controllers, MLC, TLC, etc.

### Cloud Storage (Some one else's drives)

This is opinioned guide, so now that's about to show: Dont do it. All cloud storage is is someone else's disks. If you want to use it as a backup sure, but I don't see why- it's much less expensive to just backup the reallly important stuff to a hosted server continually and periodically (weekly, monthly, whatever) backup to some external disks that you keep somewhere else. Not to mention the privacy concerns. Like, really? You want to put allllll your family pictures under the all seeing eyes of Google or Microsoft. Nah. I'll pass.

### Portable

Most fixed disk enclosures suck, albeit they can be less expensive. I'd recommend getting a portable multi-drive enclosure that runs over whatever the fastest connection you have is (Thunderbolt, USB 3.1, etc.). You can even get usb->nvme adapters, albeit they have a nasty amount of bandwidth limiting.

Most off-the-shelf flash drives have ass cooling and will over-heat them selves to death when you use them for things like installing operating systems regularly, so I recommend just getting a bulk pack of cheap, low capacity ones to toss when they finally kick the bucket and a few nice USB->SATA or USB->NVME adapter for  your main portable storage needs. Failing that, you can always use your phone if you've got a nice high capacity SD card in it or plenty of spare internal storage. The problem with that is MTP or 'Media Transfer Protocol' is a buggy, slow mess, and there's no other clean way to transfer things from a phone. So ¯\\_(ツ)_/¯

<blockquote class="twitter-tweet"><p lang="ro" dir="ltr">Recuperación de datos de µSD nivel: F*cking Master of the Universe. <a href="https://t.co/B9egCrW4WJ">pic.twitter.com/B9egCrW4WJ</a></p>&mdash; ChuxMan Skywalker (@MrChuxMan) <a href="https://twitter.com/MrChuxMan/status/1288054419985248257?ref_src=twsrc%5Etfw">July 28, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>



### The Past

Floopy, Zip Disks, and Tape? Really? Yes. And yes, they're still used, so you should probably know at least a little about them.

[TODO]

Floppy, Zip, tape

### RAID and Disk Pools

[TODO]

Zfs, hardware raid, software raid, emulated hardware (bios), etc.

## Network Interfaces

![NICS]({static}/openg/nics.jpg)

Pictured here are three Network Interface cards or a NIC. The three on the left are for WiFi (though some of this form factor may include bluetooth as well) while the one on the right has an ethernet port for wired access. Most computer's will not have a separate card for the wired interface though, as most motherboard's have a wired network interface built in.

NICs also include the wireless chipset used for connecting to a cell tower and really any radio communication device in general.

Older NICs include those used for Dial-Up connections and some obscure wireless methods that predate WiFi.

### Ethernet

[TODO] rj45, ethernet over infiniband, speed bases

### WiFi

[TODO]

Channels 12, 13, 14. 2.4 v 5, wifi 6, weird authentication, etc

### High Bandwidth

[TODO], infiniband, DMA, 10GbE+, Multigig

At the end of the day, nothing is faster than a truck filled with drives.

### The Future

[TODO]

wifi6, 10gbe rj45 and beyond, cellular, sdr

### The Past

[TODO]

coax network, infrared, sneakernet

## Power Supply

The Power Supply Unit or PSU does what you think. It takes power from the wall and turns it into power for the computer. This isn't the chapter on voltage and current, so I'll spare some of the details, but effectively you want a power supply that can deliver plenty of power and that has clean power. A given power supply usually has a rating like '500w' for 500 watts, but this is usually a bad indicator, as they could be refering to multiple things- you see a desktop power supply usually outputs multiple voltages (-12, +12, +5, +3.3) and each one of those lines will have a different maximum power output. Typically, the one that's most relevant is the +12 rail, as both the GPU and CPU will likely run on that and they're what draws the most power. So, you can actually check just this rail by taking the voltage (+12V) times the max current (amperage) on that line (let's use 20A) to see the max power (so 12*20=240 watts)

Also note that the power supply itself may be of varrying quality, with the voltage 'ripple' and the efficiency being important as well. Voltage ripple occurs when the supposed-to-be 12V line instead outputs a signal that's varying a little, so let's say you measure the +12V line and it reads 12.2V now, then a minute later reads 11.8V, that's quite a bit of ripple when you expect a constant +12V. Generally you can trust the power supply is decent about this though so long as the power supply is also pretty efficient. Telling efficiency is easy too, as there's a nifty specification that most PC PSU's have called "80 plus" and it's rated by a metal-value system, so an 80+ bronze power supply is already (typically) much better than one without the rating, and an 80+ Gold is even better, going on up to Platinum.

Most PC PSU's are in the ATX format, the same specification used to size motherboards, and the majority of desktops use a standard ATX power supply, though smaller systems may opt for one of the smaller standards such as SFX. Servers typically have their own power supplies which look a bit strange as they're basically the shape of an elongated brick, but they're like that so they can be easily swapped in and out. Often server power supplies are redundant so a new one could be put in while the system is still on in many cases.

Main takeaway here, if some one is talking about an ATX PSU they're talking about the power supply in a desktop. Often they're (less than safely...) used in other applications as they're cheap and often easy to find used or salvaged from old systems.

[TODO] add pictures

## Cooling

Blower, air flow vs static pressure, fan size liquid, heat pipes, pwm vs DC control

## Peripherals

### Keyboards

HID or Human Interface Device, is the standard over which most mice, keyboards, and game controllers talk to the computer. Unfortunately, it's also a pretty lame standard. You can't just input arbitrary Unicode or send fancy data back to the keyboard to control fancy RGB lights, because of this it's common to need extra drivers per device

[TODO]

5pin din, PS2, USB



# Chapter 3.1 - How to know what to buy

[TODO - possibly move]



# Chapter 3.2 - Legacy Hardware

[TODO]

Parallel, Serial, Tape, CD, gameport

# Chapter 3.3 - Architectures

From the README.md file at https://github.com/radareorg/radare2

> ## Architectures
>
> i386, x86-64, ARM, MIPS, PowerPC, SPARC, RISC-V, SH, m68k, m680x, AVR, XAP, System Z, XCore, CR16, HPPA, ARC, Blackfin, Z80, H8/300, V810, V850, CRIS, XAP, PIC, LM32, 8051, 6502, i4004, i8080, Propeller, Tricore, CHIP-8, LH5801, T8200, GameBoy, SNES, SPC700, MSP430, Xtensa, NIOS II, Java, Dalvik, WebAssembly, MSIL, EBC, TMS320 (c54x, c55x, c55+, c66), Hexagon, Brainfuck, Malbolge, whitespace, DCPU16, LANAI, MCORE, mcs96, RSP, SuperH-4, VAX.

Which is only further complicated by:

> ## File Formats
>
> ELF, Mach-O, Fatmach-O, PE, PE+, MZ, COFF, OMF, TE, XBE, BIOS/UEFI, Dyldcache, DEX, ART, CGC, Java class, Android boot image, Plan9 executable, ZIMG, MBN/SBL bootloader, ELF coredump, MDMP (Windows minidump), WASM (WebAssembly binary), Commodore VICE emulator, QNX, Game Boy (Advance), Nintendo DS ROMs and Nintendo 3DS FIRMs, various filesystems.

and

> ## Operating Systems
>
> Windows (since XP), GNU/Linux, GNU/Darwin, GNU/Hurd, Apple's {Mac,i,iPad,watch}OS, [Dragonfly|Net|Free|Open]BSD, Android, QNX, Solaris, Haiku, FirefoxOS.

plus, the above lists are by no means exhaustive. Clearly there's no shortage of CPU architectures (virtual or physical) that can be present on a system which can be running any of a number of operating systems which may use a variety of ways of actually storing the executable instructions, so, let's take a look at what all of this actually means. First, let's start with the different architectures you're likely to run into and what makes them different:

[TODO]

For more information on embedded architectures and in-depth comparisons look at Chapter 14.1. For info on Virtual machines (for hosting Linux or for languages like Java) look to Chapters 8 and 17



# Chapter 4 - Back to the Root of Things

We've been using file in /proc and /dev thoughout this, but we never really looked to see what else is in there. Let's do that.

We'll actually start with /dev

```bash
╭─vega@lyrae ~
╰─➤  cd /dev
╭─vega@lyrae /dev
╰─➤  ls -la
total 4
drwxr-xr-x  22 root root         4600 Feb  8 06:03 .
drwxr-xr-x  18 root root         4096 Jan 26 22:05 ..
crw-rw-rw-   1 root root      10,  56 Feb  8 06:03 ashmem
crw-r--r--   1 root root      10, 235 Feb  8 06:03 autofs
crw-rw-rw-   1 root root     511,   0 Feb  8 06:03 binder
drwxr-xr-x   2 root root          520 Feb  8 06:02 block
drwxr-xr-x   2 root root          200 Feb  8 06:02 bsg
crw-------   1 root root      10, 234 Feb  8 06:03 btrfs-control
drwxr-xr-x   3 root root           60 Feb  8 06:02 bus
lrwxrwxrwx   1 root root            3 Feb  8 06:03 cdrom -> sr0
drwxr-xr-x   2 root root         5700 Feb  8 06:03 char
crw-------   1 root root       5,   1 Feb  8 06:03 console
lrwxrwxrwx   1 root root           11 Feb  8 06:02 core -> /proc/kcore
drwxr-xr-x   2 root root           60 Feb  8 06:02 cpu
crw-rw----   1 root realtime  10,  60 Feb  8 06:03 cpu_dma_latency
crw-------   1 root root      10, 203 Feb  8 06:03 cuse
drwxr-xr-x   8 root root          160 Feb  8 06:02 disk
crw-rw----+  1 root audio     14,  73 Feb  8 06:03 dmmidi4
crw-rw----+  1 root audio     14,  89 Feb  8 06:03 dmmidi5
crw-rw----+  1 root audio     14, 105 Feb  8 06:03 dmmidi6
crw-rw----+  1 root audio     14, 121 Feb  8 06:03 dmmidi7
drwxr-xr-x   3 root root          140 Feb  8 06:03 dri
crw-------   1 root root     242,   0 Feb  8 06:03 drm_dp_aux0
crw-------   1 root root     242,   1 Feb  8 06:03 drm_dp_aux1
crw-------   1 root root     242,   2 Feb  8 06:03 drm_dp_aux2
crw-------   1 root root     242,   3 Feb  8 06:03 drm_dp_aux3
crw-------   1 root root     242,   4 Feb  8 06:03 drm_dp_aux4
crw-rw----   1 root video     29,   0 Feb  8 06:03 fb0
lrwxrwxrwx   1 root root           13 Feb  8 06:02 fd -> /proc/self/fd
crw-rw-rw-   1 root root       1,   7 Feb  8 06:03 full
crw-rw-rw-   1 root root      10, 229 Feb  8 06:03 fuse
crw-------   1 root root     254,   0 Feb  8 06:03 gpiochip0
crw-------   1 root root     254,   1 Feb  8 06:03 gpiochip1
crw-------   1 root root     240,   0 Feb  8 06:03 hidraw0
------------------------------------------------------------------------------------
to make this output shorter I stripped out hidraw 1-5,10-12
------------------------------------------------------------------------------------
crw-rw----+  1 root root     240,   6 Feb  8 06:03 hidraw6
------------------------------------------------------------------------------------
to make this output shorter I stripped out hidraw 7-9
------------------------------------------------------------------------------------
crw-rw----   1 root realtime  10, 228 Feb  8 06:03 hpet
drwxr-xr-x   3 root root            0 Feb  8 06:03 hugepages
crw-------   1 root root      10, 183 Feb  8 06:03 hwrng
lrwxrwxrwx   1 root root           12 Feb  8 06:03 initctl -> /run/initctl
drwxr-xr-x   4 root root          880 Feb  8 06:03 input
crw-rw-rw-   1 root render   241,   0 Feb  8 06:03 kfd
crw-r--r--   1 root root       1,  11 Feb  8 06:03 kmsg
crw-rw-rw-   1 root kvm       10, 232 Feb  8 06:03 kvm
drwxr-xr-x   2 root root           60 Feb  8 06:02 lightnvm
lrwxrwxrwx   1 root root           28 Feb  8 06:03 log -> /run/systemd/journal/dev-log
crw-rw----   1 root disk      10, 237 Feb  8 06:03 loop-control
drwxr-xr-x   2 root root           60 Feb  8 06:03 mapper
crw-rw----   1 root video    239,   0 Feb  8 06:03 media0
crw-r-----   1 root kmem       1,   1 Feb  8 06:03 mem
crw-------   1 root root      10,  57 Feb  8 06:03 memory_bandwidth
crw-rw----+  1 root audio     14,  66 Feb  8 06:03 midi4
crw-rw----+  1 root audio     14,  82 Feb  8 06:03 midi5
crw-rw----+  1 root audio     14,  98 Feb  8 06:03 midi6
crw-rw----+  1 root audio     14, 114 Feb  8 06:03 midi7
drwxrwxrwt   2 root root           40 Feb  8 06:02 mqueue
drwxr-xr-x   2 root root           60 Feb  8 06:03 net
crw-------   1 root root      10,  59 Feb  8 06:03 network_latency
crw-------   1 root root      10,  58 Feb  8 06:03 network_throughput
crw-rw-rw-   1 root root       1,   3 Feb  8 06:03 null
crw-------   1 root root     243,   0 Feb  8 06:03 nvme0
brw-rw----   1 root disk     259,   0 Feb  8 06:03 nvme0n1
brw-rw----   1 root disk     259,   1 Feb  8 06:03 nvme0n1p1
brw-rw----   1 root disk     259,   2 Feb  8 06:03 nvme0n1p2
crw-r-----   1 root kmem       1,   4 Feb  8 06:03 port
crw-------   1 root root     108,   0 Feb  8 06:03 ppp
crw-------   1 root root     248,   0 Feb  8 06:03 pps0
crw-------   1 root root      10,   1 Feb  8 06:03 psaux
crw-rw-rw-   1 root tty        5,   2 Feb  8 16:37 ptmx
crw-------   1 root root     247,   0 Feb  8 06:03 ptp0
drwxr-xr-x   2 root root            0 Feb  8 06:03 pts
crw-rw-rw-   1 root root       1,   8 Feb  8 06:03 random
crw-rw-r--+  1 root rfkill    10,  55 Feb  8 06:03 rfkill
lrwxrwxrwx   1 root root            4 Feb  8 06:03 rtc -> rtc0
crw-rw----   1 root realtime 250,   0 Feb  8 06:03 rtc0
brw-rw----   1 root disk       8,   0 Feb  8 06:03 sda
brw-rw----   1 root disk       8,   1 Feb  8 06:03 sda1
brw-rw----   1 root disk       8,   2 Feb  8 06:03 sda2
brw-rw----   1 root disk       8,  16 Feb  8 06:03 sdb
brw-rw----   1 root disk       8,  17 Feb  8 06:03 sdb1
brw-rw----   1 root disk       8,  32 Feb  8 06:03 sdc
brw-rw----   1 root disk       8,  33 Feb  8 06:03 sdc1
brw-rw----   1 root disk       8,  34 Feb  8 06:03 sdc2
brw-rw----   1 root disk       8,  48 Feb  8 06:03 sdd
brw-rw----   1 root disk       8,  64 Feb  8 06:03 sde
brw-rw----   1 root disk       8,  65 Feb  8 06:03 sde1
brw-rw----   1 root disk       8,  66 Feb  8 06:03 sde2
brw-rw----   1 root disk       8,  67 Feb  8 06:03 sde3
brw-rw----   1 root disk       8,  68 Feb  8 06:03 sde4
brw-rw----   1 root disk       8,  80 Feb  8 06:03 sdf
brw-rw----   1 root disk       8,  81 Feb  8 06:03 sdf1
brw-rw----   1 root disk       8,  82 Feb  8 06:03 sdf2
brw-rw----   1 root disk       8,  96 Feb  8 06:03 sdg
brw-rw----   1 root disk       8,  97 Feb  8 06:03 sdg1
brw-rw----   1 root disk       8,  98 Feb  8 16:37 sdg2
drwxr-xr-x   4 root root           80 Feb  8 06:03 serial
crw-rw----+  1 root optical   21,   0 Feb  8 06:03 sg0
crw-rw----   1 root disk      21,   1 Feb  8 06:03 sg1
------------------------------------------------------------------------------------
to make this output shorter I stripped out sg2-6
------------------------------------------------------------------------------------
crw-rw----   1 root disk      21,   7 Feb  8 06:03 sg7
drwxrwxrwt   2 root root           80 Feb  8 16:37 shm
crw-------   1 root root      10, 231 Feb  8 06:03 snapshot
drwxr-xr-x   4 root root          760 Feb  8 06:03 snd
brw-rw----+  1 root optical   11,   0 Feb  8 06:03 sr0
lrwxrwxrwx   1 root root           15 Feb  8 06:02 stderr -> /proc/self/fd/2
lrwxrwxrwx   1 root root           15 Feb  8 06:02 stdin -> /proc/self/fd/0
lrwxrwxrwx   1 root root           15 Feb  8 06:02 stdout -> /proc/self/fd/1
crw-rw-rw-   1 root tty        5,   0 Feb  8 15:49 tty
crw--w----   1 root tty        4,   0 Feb  8 06:03 tty0
------------------------------------------------------------------------------------
to make this output shorter I stripped out tty1-62
------------------------------------------------------------------------------------
crw--w----   1 root tty        4,  63 Feb  8 06:03 tty63
crw-rw-rw-   1 root uucp     166,   0 Feb  8 06:03 ttyACM0
crw-rw----+  1 root tty        4,  64 Feb  8 06:03 ttyS0
crw-rw----+  1 root uucp       4,  65 Feb  8 06:03 ttyS1
crw-rw----+  1 root uucp       4,  66 Feb  8 06:03 ttyS2
crw-rw----+  1 root uucp       4,  67 Feb  8 06:03 ttyS3
crw-------   1 root root      10,  61 Feb  8 06:03 udmabuf
crw-------   1 root root      10, 239 Feb  8 06:03 uhid
crw-rw-rw-+  1 root root      10, 223 Feb  8 06:03 uinput
crw-rw-rw-   1 root root       1,   9 Feb  8 06:03 urandom
drwxr-xr-x   2 root root          200 Feb  8 06:03 usb
crw-------   1 root root      10, 240 Feb  8 06:03 userio
drwxr-xr-x   4 root root           80 Feb  8 06:03 v4l
crw-rw----   1 root tty        7,   0 Feb  8 06:03 vcs
crw-rw----   1 root tty        7,   1 Feb  8 06:03 vcs1
------------------------------------------------------------------------------------
to make this output shorter I stripped out vcs2-6
------------------------------------------------------------------------------------
crw-rw----   1 root tty        7,   7 Feb  8 06:03 vcs7
crw-rw----   1 root tty        7, 128 Feb  8 06:03 vcsa
crw-rw----   1 root tty        7, 129 Feb  8 06:03 vcsa1
------------------------------------------------------------------------------------
to make this output shorter I stripped out vcsa2-6
------------------------------------------------------------------------------------
crw-rw----   1 root tty        7, 135 Feb  8 06:03 vcsa7
crw-rw----   1 root tty        7,  64 Feb  8 06:03 vcsu
crw-rw----   1 root tty        7,  65 Feb  8 06:03 vcsu1
------------------------------------------------------------------------------------
to make this output shorter I stripped out vcsu2-6
------------------------------------------------------------------------------------
crw-rw----   1 root tty        7,  71 Feb  8 06:03 vcsu7
drwxr-xr-x   2 root root           60 Feb  8 06:03 vfio
crw-------   1 root root      10,  63 Feb  8 06:03 vga_arbiter
crw-------   1 root root      10, 137 Feb  8 06:03 vhci
crw-rw----+  1 root kvm       10, 238 Feb  8 06:03 vhost-net
crw-------   1 root root      10, 241 Feb  8 06:03 vhost-vsock
crw-rw----+  1 root video     81,   0 Feb  8 06:03 video0
crw-rw----+  1 root video     81,   1 Feb  8 06:03 video1
crw-rw-rw-   1 root root       1,   5 Feb  8 06:03 zero
```

Alright, I know what you're thinking.

What. The. Actual. Fuck.

And honestly, yeah. But first, lets talk about what we just did.

## Permissions

if you run `ls` it normally shows you the all the folders, shortcuts, and files in a directory, except it excludes any hidden files. In linux you can make a file or folder hidden simply by naming the folder with a '.' at the beginning, so naming a folder `.nsfw` will mark it has hidden. Hidden doesn't really mean much though as most file managers allow you to view hidden files/folders by checking a box, and in this case, we can see hidden items by using the -a flag for ls. running `man ls` you'll see the -a flag just stands for 'all' and does exactly what I've said.

further down you'll see the '-l' flag gives a "long listing format" which is an almost impressively bad description. This means that on each listing will be displayed like this:

```bash
Permissions   numOfLinks owner group size month date time name

example:
drwxr-xr-x    2 vega vega     4096 Jul  7  2018 Documents
```

So let's break that up further. Linux permissions are incredibly powerful, and are set up like this

d rwx rwx rwx , the d, or lack there of, species weather a file is a directory (folder) or file.

Less commonly you may see 'l', 'c', or 'b', as we do here in the /dev folder.

'l' is the easiest to understand, it's a link or shortcut. That's why you'll see an arrow pointing to where it leads at the end

'c' is a character special file, 'b' is a special block file.

Finally, you may also see either 'p' or '|' here for named pipes- more about that in a bit too.

There are other possibilities here two, of which you can learn about by running `info ls`

The vast majority of the time you will only see 'd' or '-' designating a file or directory though

Moving on to the 'rwx' blocks, these stand for read, write, and execute respectively and each block in order states the permission of the owner of the file, those that are in the same group as the owner, and everyone else, for this reason these permissions will almost exclusively be set such that permissions are lost with each level, for example a file with

-rwxr--r-- , is a file (no 'd'), which may be read, written, or if it is a program ran, by the owner, yet by anyone else in the same group as the owner or anyone else on the system may only be read. So if we changed the permissions on that python file we wrote back in Chapter 2 to be this then while anyone else could see the code, they couldn't run it without making a copy.

with that let's skip over the number of links, as I've never found it particularly useful and jump to the owner and group fields. The owner of a file is a single user, usually the one who created it. The root user is often the owner of important system files, which is why we have to temporarily use root account when we do many admin actions, such as updating or installing programs using `sudo`.

(note, yay calls sudo automatically and you should NOT run yay with sudo)

The group is almost nonsensical on single user systems, though many Linux systems today still have many users, so you may have user groups such as 'students' and 'staff' at a school.

Next is size, this is pretty self explanatory, as its just the size of the file. Directories do take some space on the disk as they have to store the bit of their own permissions, name, and so on. On this note, directories are a bit strange in regards to the 'execute' flag that was previously mentioned. On a directory, rather than stating if a user can execute a directory (this wouldn't make any sense!) it says weather or not a user can see what's in the directory at all, almost like a lock on a file cabinet.

Next is the file modification time, finally followed by the items name, both of which are self explanatory.

To round this off we need to talk about how to change these permissions using `chown` and `chmod`

`chown`, as the name implies, changes the owner, note, you need to also have permission to change the owner, so often times this require using `sudo` as well.

For example running

```bash
╭─vega@lyrae ~
╰─➤  sudo chown vega:vega someFile
```

would change both the owner and group to me, vega (assuming I exist on your system)

but what if you want to change every file in a directory?

```bash
╭─vega@lyrae ~
╰─➤  sudo chown -R vega:vega someFolder
```

the -R flag (Recursive) means to apply the change to every sub folder and directory

Using `chmod` is pretty easy too, though there are two ways to use it.

The first, which is easier to understand is with direct flags such as

```bash
╭─vega@lyrae ~
╰─➤  chmod +x on a file to mark it as executable
```

The other uses the octal system to set flags. Octal has 3 bits:

| Octal |        |            |
| ----- | ------ | ---------- |
| Octal | Binary | Permission |
| 0     | 000    | ---        |
| 1     | 001    | --x        |
| 2     | 010    | -w-        |
| 3     | 011    | -wx        |
| 4     | 100    | r--        |
| 5     | 101    | r-x        |
| 6     | 110    | rw-        |
| 7     | 111    | rwx        |

Now, you should notice some of those options are nonsenes? being able to write to a file you can't read? being able to execute a file you can't read? In practice this leads to only some of these being used, but I digress to use these in chmod simply run

```bash
╭─vega@lyrae ~
╰─➤  chmod 764 someThing
```

which would set permissions to -rwxrw-r--

Finally one last oddity. Using `ls -la` you'll see two more files that are very strange one named '.'  and another '..' ; '.' is actually the current folder, as bizzare as this sounds, effectively when you run a command with '.' as an argument it is replaced with the full path to the current folder. In practice this isn't used much, but it means running something like `cd .` just takes you nowhere. I assure you are practical uses though. More relevant is '..' which is the previous directory. so if you're currently in /a/b/c/d and you run `cd ..` you'll be taken to /a/b/c

To round this conversation off , as previously mentioned, '~' represents your home directory. This usually means it expands out to /home/yourUsername which can be particualy helpful if you are say, in /dev and want to get to your documents folder you can use `cd ~/Documents` instead of `cd /home/user/Documents`

With all of that out of the way let's finally look at /dev !

## /dev, the devices folder

Alrighty then, first, a heads up. My /dev folder will have some things yours wont. I'm on a desktop with a lot of hardware, drives, input devices, etc. And I've installed hundreds of programs, some of which interface with the system at a low enough level to necessitate extra files in here. For that reason some are going to be skipped over let's take these in blocks of 10

```bash
drwxr-xr-x  22 root root         4600 Feb  8 06:03 .
drwxr-xr-x  18 root root         4096 Jan 26 22:05 ..
crw-rw-rw-   1 root root      10,  56 Feb  8 06:03 ashmem
crw-r--r--   1 root root      10, 235 Feb  8 06:03 autofs
crw-rw-rw-   1 root root     511,   0 Feb  8 06:03 binder
drwxr-xr-x   2 root root          520 Feb  8 06:02 block
drwxr-xr-x   2 root root          200 Feb  8 06:02 bsg
crw-------   1 root root      10, 234 Feb  8 06:03 btrfs-control
drwxr-xr-x   3 root root           60 Feb  8 06:02 bus
lrwxrwxrwx   1 root root            3 Feb  8 06:03 cdrom -> sr0
drwxr-xr-x   2 root root         5700 Feb  8 06:03 char
crw-------   1 root root       5,   1 Feb  8 06:03 console
lrwxrwxrwx   1 root root           11 Feb  8 06:02 core -> /proc/kcore
```

Here I've included . and .. in the output for reference, but we'll immediately move on.

'ashmem' is something that is on my system as a part of a project with the end goal of running android apps natively on linux called 'anbox' it's still in early development, and is very difficult to run on arch

'autofs' is a configurable system for mounting and unmounting storage as it is used

'binder' is another component of 'anbox'

'block' is a directory which contains numbered links to the file system blocks used previously (such as sda)

'bsg' is a directory with files that, again, represent your drives at a hardware level. You can open the bsg folder and run `ls` followed by `lsscsi` and compare the outputs to understand. This is practially just an artifact of older systems now.

'btrfs-control' is used when you have drives on the system formated with the btrfs file system, this is a file system that is still in heavy development primarily targeted at storage arrays that are resilient to drive failures

'bus' is a folder which contains a folder 'usb' which contains folders for each usb host controller on the system, and then their devices

'cdrom' is actually a link to the new location of cdroms- sr0 , but, still, it's use it pretty duh

'char' is a folder which contains links to a lot of other things in /dev for use with legacy things

'console' is again a legacy component and is effecively the same as tty, which is always the current terminal. to be explained more when we get to the tty's

'core' a link to /proc/kcore is a direct way to read memory, used mostly for debugging

```bash
drwxr-xr-x   2 root root           60 Feb  8 06:02 cpu
crw-rw----   1 root realtime  10,  60 Feb  8 06:03 cpu_dma_latency
crw-------   1 root root      10, 203 Feb  8 06:03 cuse
drwxr-xr-x   8 root root          160 Feb  8 06:02 disk
crw-rw----+  1 root audio     14,  73 Feb  8 06:03 dmmidi4
...
crw-rw----+  1 root audio     14, 121 Feb  8 06:03 dmmidi7
drwxr-xr-x   3 root root          140 Feb  8 06:03 dri
crw-------   1 root root     242,   0 Feb  8 06:03 drm_dp_aux0
...
crw-------   1 root root     242,   4 Feb  8 06:03 drm_dp_aux4
```

'cpu' is a folder which contains a character file named mircocode. If you enable msr it can also allow you to r/w model specific registers. I don't even know what this means. You'll never work on this directly, moving on.

'cpu_dma_latency' is something to do with making sure changing between power states (sleep) doesn't take to long, otherwise the system will just refuse to do. Not used directly by anyone really

'cuse' is fuse for character devices, ref fuse below

'disk' is the way most modern things access the disk, with separate folders for by id, label, path, or uuid

'dmmidi' is for MIDI or Musical Instrument Digital Interface devices. I have multiple on this system.

'dri' contains links to your graphics cards, this is part of the direct rendering manager for video things (3D, games, etc)

'drm_dp_aux' each represent an output from the GPU, so think of these as the actual cables between the monitor and the computer

```bash
crw-rw----   1 root video     29,   0 Feb  8 06:03 fb0
lrwxrwxrwx   1 root root           13 Feb  8 06:02 fd -> /proc/self/fd
crw-rw-rw-   1 root root       1,   7 Feb  8 06:03 full
crw-rw-rw-   1 root root      10, 229 Feb  8 06:03 fuse
crw-------   1 root root     254,   0 Feb  8 06:03 gpiochip0
crw-------   1 root root     254,   1 Feb  8 06:03 gpiochip1
crw-------   1 root root     240,   0 Feb  8 06:03 hidraw0
------------------------------------------------------------------------------------
to make this output shorter I stripped out hidraw 1-5,10-12
------------------------------------------------------------------------------------
crw-rw----+  1 root root     240,   6 Feb  8 06:03 hidraw6
------------------------------------------------------------------------------------
to make this output shorter I stripped out hidraw 7-9
------------------------------------------------------------------------------------
```

'fb0' is your framebuffer - I can't do this justice https://www.kernel.org/doc/Documentation/fb/framebuffer.txt, in practice you're unlikely to ever use this, but it's very good to know

'fd' is for file descriptors, which are now in /proc this is part of how the system internally handles file reads and writes

'full' literally just returns no space left when accessed, used to test how a program responds to a disk full error

'fuse' Filesystems in User Space is a system which allows for interesting virtual drives (think things like GoogleDrive) to be accessible to the native system among other things. This is a very heavily used part of the system and worth a deeper look if you're interested

'gpiochip' is for general purpose input/output like with exposed pins that can be used on development board such as the raspberry pi

'hidraw' is for raw communication with Human Interface Devices (mouse, keyboard, gamepad) and allows for custom drivers, like those necessary for RGB backlit keyboards

```bash
crw-rw----   1 root realtime  10, 228 Feb  8 06:03 hpet
drwxr-xr-x   3 root root            0 Feb  8 06:03 hugepages
crw-------   1 root root      10, 183 Feb  8 06:03 hwrng
lrwxrwxrwx   1 root root           12 Feb  8 06:03 initctl -> /run/initctl
drwxr-xr-x   4 root root          880 Feb  8 06:03 input
crw-rw-rw-   1 root render   241,   0 Feb  8 06:03 kfd
crw-r--r--   1 root root       1,  11 Feb  8 06:03 kmsg
crw-rw-rw-   1 root kvm       10, 232 Feb  8 06:03 kvm
drwxr-xr-x   2 root root           60 Feb  8 06:02 lightnvm
lrwxrwxrwx   1 root root           28 Feb  8 06:03 log -> /run/systemd/journal/dev-log
crw-rw----   1 root disk      10, 237 Feb  8 06:03 loop-control
```

'hpet' "High Precession Event Timer" is for internal timer-y things

'hugepages' - read this https://wiki.debian.org/Hugepages , these are actually pretty important as they can make a large impact on performance, especially with virtual machines

'hwrng' hardware random number generator, rarely used directly, often not trusted due to known faults, typically used though the soon to be mentioned 'urandom' interface - https://main.lv/writeup/kernel_dev_hwrng.md

'initctl'  part of the init system, just dont touch it

'input' is a directory which contains links to all input devices, going to /dev/input/by-id can explicitly tell you how some devices are connected, and can be a way to extract input form devices for input in your own programs

'kfd' has little documentation- appears to be for AMD GPU accelerated compute

'kmsg' is the i/o of `dmesg` which itself is the main system log

'kvm' is the kernel virtual machine, used for running virtual machines. We'll talk about this more much later.

'lightnvm' use for NVMe drives

'log' no shit, access using `sudo journalctl`

'loop-contol' - http://man7.org/linux/man-pages/man4/loop.4.html, effectively used to mount images or or other file systems to be read as a separate block device

```bash
drwxr-xr-x   2 root root           60 Feb  8 06:03 mapper
crw-rw----   1 root video    239,   0 Feb  8 06:03 media0
crw-r-----   1 root kmem       1,   1 Feb  8 06:03 mem
crw-------   1 root root      10,  57 Feb  8 06:03 memory_bandwidth
crw-rw----+  1 root audio     14,  66 Feb  8 06:03 midi4
crw-rw----+  1 root audio     14,  82 Feb  8 06:03 midi5
crw-rw----+  1 root audio     14,  98 Feb  8 06:03 midi6
crw-rw----+  1 root audio     14, 114 Feb  8 06:03 midi7
drwxrwxrwt   2 root root           40 Feb  8 06:02 mqueue
drwxr-xr-x   2 root root           60 Feb  8 06:03 net
crw-------   1 root root      10,  59 Feb  8 06:03 network_latency
crw-------   1 root root      10,  58 Feb  8 06:03 network_throughput
```

'mapper' is primarily used for LVM systems, https://wiki.archlinux.org/index.php/LVM, which is used for more advance disk management but comes with disadvantages in complexity and inter-OS compatibility

'media0' is the i/o file for a webcam

'mem' is direct access to the system's physical memory. This is dangerous. There's almost no reason to do this directly, unless you're writing a low level driver

'memory_bandwidth' - as the name implies. Rarely used

'midi' direct access to midi devices. Documentation on dmmidi vs midi unclear

'mqueue' used for interprocess comunnication

'net' contains virtual network adapters, will likely contain 'tun' by default, used for interprocess communication in weird ways.

'network_latency' and 'network_thoughput' is primary used to specify current minimum necessary requirements for the network, used for power saving on wireless adapters

```bash
crw-rw-rw-   1 root root       1,   3 Feb  8 06:03 null
crw-------   1 root root     243,   0 Feb  8 06:03 nvme0
brw-rw----   1 root disk     259,   0 Feb  8 06:03 nvme0n1
brw-rw----   1 root disk     259,   1 Feb  8 06:03 nvme0n1p1
brw-rw----   1 root disk     259,   2 Feb  8 06:03 nvme0n1p2
crw-r-----   1 root kmem       1,   4 Feb  8 06:03 port
crw-------   1 root root     108,   0 Feb  8 06:03 ppp
crw-------   1 root root     248,   0 Feb  8 06:03 pps0
crw-------   1 root root      10,   1 Feb  8 06:03 psaux
crw-rw-rw-   1 root tty        5,   2 Feb  8 16:37 ptmx
crw-------   1 root root     247,   0 Feb  8 06:03 ptp0
drwxr-xr-x   2 root root            0 Feb  8 06:03 pts
```

'null' literally just discards anything it receives. Useful when a command outputs junk when doing things, and getting rid of the junk. '/dev/null' is referred to regularly in jokes in technical circles

'nvmexxxx' the system NVMe storage device(s), will only exist if you have an NVMe solid sate drive

'port' used for direct access to i/o ports. Dangerous

'ppp' point-to-point protocol. Similar to /net/tun - https://stackoverflow.com/questions/15845087/what-is-difference-between-dev-ppp-and-dev-net-tun

'pps0' pule per second provides a pulse once per second

'psaux' , `ps` provides a snapshot of currently running system processes, `ps aux`, where aux: 'a' is all user processes, 'u' is show user/owner, and 'x' processes not attached to a terminal

'ptmx', pseudo terminal master/slave, used for virtual terminals, like the one's you've been opening in KDE

'ptp0' precession time protocol, links to realtime clock

'pts' interval virtual filesystem, used for things like docker. Works closely with 'ptmx'

```bash
crw-rw-rw-   1 root root       1,   8 Feb  8 06:03 random
crw-rw-r--+  1 root rfkill    10,  55 Feb  8 06:03 rfkill
lrwxrwxrwx   1 root root            4 Feb  8 06:03 rtc -> rtc0
crw-rw----   1 root realtime 250,   0 Feb  8 06:03 rtc0
brw-rw----   1 root disk       8,   0 Feb  8 06:03 sda
brw-rw----   1 root disk       8,   1 Feb  8 06:03 sda1
...
brw-rw----   1 root disk       8,  96 Feb  8 06:03 sdg
brw-rw----   1 root disk       8,  97 Feb  8 06:03 sdg1
brw-rw----   1 root disk       8,  98 Feb  8 16:37 sdg2
```

'random' waits for true randomness and will block things from finishing until enough entropy is generated

'rfkill' kills all radio transmission on system

'rtc' real time clock, direct access - we'll talk more about real time clocks and time in networking.

'sdxn' the 'normal' representation of block devices like HDDs, SSDs, and flash drives to the system. Each number is a partition

```bash
drwxr-xr-x   4 root root           80 Feb  8 06:03 serial
crw-rw----+  1 root optical   21,   0 Feb  8 06:03 sg0
crw-rw----   1 root disk      21,   1 Feb  8 06:03 sg1
...
crw-rw----   1 root disk      21,   7 Feb  8 06:03 sg7
drwxrwxrwt   2 root root           80 Feb  8 16:37 shm
crw-------   1 root root      10, 231 Feb  8 06:03 snapshot
drwxr-xr-x   4 root root          760 Feb  8 06:03 snd
brw-rw----+  1 root optical   11,   0 Feb  8 06:03 sr0
lrwxrwxrwx   1 root root           15 Feb  8 06:02 stderr -> /proc/self/fd/2
lrwxrwxrwx   1 root root           15 Feb  8 06:02 stdin -> /proc/self/fd/0
lrwxrwxrwx   1 root root           15 Feb  8 06:02 stdout -> /proc/self/fd/1
```

'serial' contains references to serial devices by id or path

'sgx' are mostly just remaps of other devices for legacy support

'shm' is for shared memory, to be passed between programs

'snapshot' is used for hirenation

'snd' sound devices raw access, legacy and probably will not work

'sr0' used for optical media

'**stderr**' is the standard error interface, try `echo 1 > /dev/stderr` - you should see an error return code depending on your terminal setup

'**stdin**' is the standard input interface, try `echo hello | cp /dev/stdin /dev/stdout`

'**stdout** interface, try `echo hello > /dev/stdout`

```bash
crw-rw-rw-   1 root tty        5,   0 Feb  8 15:49 tty
crw--w----   1 root tty        4,   0 Feb  8 06:03 tty0
...
crw--w----   1 root tty        4,  63 Feb  8 06:03 tty63
crw-rw-rw-   1 root uucp     166,   0 Feb  8 06:03 ttyACM0
crw-rw----+  1 root tty        4,  64 Feb  8 06:03 ttyS0
crw-rw----+  1 root uucp       4,  65 Feb  8 06:03 ttyS1
crw-rw----+  1 root uucp       4,  66 Feb  8 06:03 ttyS2
crw-rw----+  1 root uucp       4,  67 Feb  8 06:03 ttyS3
```

### TTY's, these are important:

'tty' the currently active terminal, try `echo 1 > /dev/tty`

'ttyx' are virtual consoles accessible though **ctrl+alt+fx,** where fx is a function key. You should ben on tty7 by default, go ahead and try it now. Note you may need to hold the 'fn' key as well

'ttyACMx' or 'ttyUSBx' are attached USB devices that can be accessed as a virtual terminal. This is mostly used for development boards, and we'll be using this later

'ttySx' are serial port terminals, rarely used outside of scientific or server gear. The physical connector usually looks similar to VGA cable. Your motherboard may well have a serial port header for adding this even if you don't physically see one available on the outside of the case

```bash
crw-------   1 root root      10,  61 Feb  8 06:03 udmabuf
crw-------   1 root root      10, 239 Feb  8 06:03 uhid
crw-rw-rw-+  1 root root      10, 223 Feb  8 06:03 uinput
crw-rw-rw-   1 root root       1,   9 Feb  8 06:03 urandom
drwxr-xr-x   2 root root          200 Feb  8 06:03 usb
crw-------   1 root root      10, 240 Feb  8 06:03 userio
drwxr-xr-x   4 root root           80 Feb  8 06:03 v4l
crw-rw----   1 root tty        7,   0 Feb  8 06:03 vcs
crw-rw----   1 root tty        7,   1 Feb  8 06:03 vcs1
...
crw-rw----   1 root tty        7,   7 Feb  8 06:03 vcs7
crw-rw----   1 root tty        7, 128 Feb  8 06:03 vcsa
crw-rw----   1 root tty        7, 129 Feb  8 06:03 vcsa1
...
crw-rw----   1 root tty        7, 135 Feb  8 06:03 vcsa7
crw-rw----   1 root tty        7,  64 Feb  8 06:03 vcsu
...
crw-rw----   1 root tty        7,  71 Feb  8 06:03 vcsu7
```

'udmabuf' Uniform Direct Memory Access Buffer https://github.com/ikwzm/udmabuf, you probably don't care

'uhid' for Human Interface Device stuff on the system side, you shouldn't mess with this

'uinput' https://www.kernel.org/doc/html/v4.12/input/uinput.html, basically you can fake a keyboard or mouse in your program

'urandom', the main source of random numbers. give it a shot but running `head -5 /dev/urandom`

'usb' folder which contains character devices to the HID inputs, used by the system

'userio' mostly used for laptop touchpad drivers

'v41' part of the video subsystem

'vcsx' virtual console memory, used when running a terminal emulator

'vcax' virtual console stuff

'vcsux' virtual console stuff

```bash
drwxr-xr-x   2 root root           60 Feb  8 06:03 vfio
crw-------   1 root root      10,  63 Feb  8 06:03 vga_arbiter
crw-------   1 root root      10, 137 Feb  8 06:03 vhci
crw-rw----+  1 root kvm       10, 238 Feb  8 06:03 vhost-net
crw-------   1 root root      10, 241 Feb  8 06:03 vhost-vsock
crw-rw----+  1 root video     81,   0 Feb  8 06:03 video0
crw-rw----+  1 root video     81,   1 Feb  8 06:03 video1
crw-rw-rw-   1 root root       1,   5 Feb  8 06:03 zero
```

'vfio' is used for passing hardware directly to virtual machines, often massively improving performanec

'vga_arbiter' if you still have a computer that uses vga I'm sorry. This almost certainly doesn't matter to you even if you do: https://www.kernel.org/doc/html/v4.16/gpu/vgaarbiter.html

'vhci' used for passing though usb devices to virtual machines

'vhost-net' & 'vhost-vsock' used for virtual machine networking

'videox' the graphics adapter in the system. Most systems will have only one, some will have two, very, very rarely you may have more.

'zero' generates an infinite stream of zeros. Used for generating test files of arbitrary size, among other things.

And That's it, congrats. Now lets go to /proc

## /proc, the fake file system

/proc doesn't really exist, it's a memory only system used primarily for information about processes, hence the name.

https://www.tldp.org/LDP/sag/html/proc-fs.html & https://linux.die.net/man/5/proc

Let's dig in by hand a bit though, lets start by opening a terminal and running `cd /proc`

if you run `ls` you'll see a bunch of numbers followed by some strange things, like uptime

let's start with the not-number things. We've already seen cpuinfo and meminfo, but there's other stuff in here too. Running `cat uptime` will tell us how many seconds the system has been powered on for, for example. A lot of things in here are bit hard to understand, but things like 'uptime' and 'loadavg' can be legitimately useful in our own programs. running `cat loadavg` you'll see some numbers that represent how much load the system is under. You can use the above links to learn more, but now we're going to dive into the juicy bits!

Before we do so though, let's grab a program that will make our lives a bit easier called 'htop', just use yay to install it.

once it installs go ahead and open it up

you should see something like this:

![2019-02-08-194336_3836x2042_scrot]({static}/openg/2019-02-08-194336_3836x2042_scrot.png)

This is a super powerful equivalent to task manager from windows. You can see the load on all 16 of my cpu threads, the memory usage on the system, uptime, loadavg, and number of tasks running here, but best of all we can see a nice tree of all the processes, and how each one of them is impacting the system. (you may need to press f5 to put it in tree mode) From here you can also see the Process's ID known as the PID, these numbers should directly corolate with those visable in /proc

Leaving that windows open lets open up two more terminals, in one navigate to /proc and in the other start up python:

 ![2019-02-08-194844_3241x2113_scrot]({static}/openg/2019-02-08-194844_3241x2113_scrot.png)

from here go back to the window running htop and use f3 to search for python if there are multiple processes that come up just keep pressing i3 until you find one that has a tree that looks like:

(note your terminal will probably be named either konsole or xterm, not deepin-terminal)

![2019-02-08-195158_1685x128_scrot]({static}/openg/2019-02-08-195158_1685x128_scrot.png)

and look to the left to find the pid of the running python process, in my case it's 754.

Go over to the terminal where you navigated to /proc and now navigate to the folder with the id of your process, in my case i'd run `cd 754`  then run 'ls' and look at everything in this folder:

![2019-02-08-195440_1912x424_scrot]({static}/openg/2019-02-08-195440_1912x424_scrot.png)

now, we're gonna run one more thing before we leave, and we'll come back to it later, but I want to show you now, so you can appreciate how cool it is later: go ahead and run `sudo cat stack`

you should see something like:

 ![2019-02-08-200152_831x306_scrot]({static}/openg/2019-02-08-200152_831x306_scrot.png)

but when we run this in the python terminal:

```python
while(1):
    1+1
```

and read the stack again we'll see:

![2019-02-08-200307_427x115_scrot]({static}/openg/2019-02-08-200307_427x115_scrot.png)

Which while may not look overly interesting, I assure you will be something of interest later.

One interesting processed to note in here is the process numbered '1' which, if you look back in htop, you'll see is the init process. This means it's actually possible to look at a mountain of deails about the init process, which we'll talk about in a bit.

Before we leave /proc, look back up at all the file that each process has and take note, also notice how some of these relate to what we saw in /dev

**Take a breather,**

As you can see, Linux gives us a lot of raw access to hardware. There are no training wheels here. While you can use Linux the exact same way you used windows: watch YouTube videos, open a graphical file manager, etc, you can also get down to the nitty gritty of the OS.

## /bin, /sbin, /lib, /lib64

[TODO]

symbolic links to usr explanation

## /sys

echoing to change settings, probabaly focus on device

## /usr

[TODO]

Share, man, local, var

## /boot

[TODO]

boot loaders, init, initrd fs?

## /etc

... and etc.

Literally. the etc folder contains system configuarion files mostly. Remember back when we installed and you used `nano /etc/fstab` that was editing the list of file systems that the system loads at boot, a configuration file. When we configure SSH later, it's config files are stored here too. Basically, most of the admin level system config files and default config files (lower priority than the config by the user) files are here. As you learn about your system and tweak things you'll find yourself in this folder rather often.
[TODO, add chapter links]

Some of the more interesting things in `/etc` are:
`/ca-certificates/` -- we'll talk about these more in networking [TODO]
`/conf.d/` -- various system default config files for system services
`/cron.d/`,`/cron.daily/`,`/cron.hourly/`, etc. are all form the `cronie` package which can be installed then enabled with systemd. Note, systemd timers are a built in way to do the same thing. cron is the 'old' way of doing thing, but is super simple to use
`/crypttab` is the similar to `/fstab` but for encrypted partitions
`/cups` is a folder used by `cups`, which is the backend used for printers in linux
`/dbus-1/` is used by `dbus` which is a backend for interprocess communication in linux
`/dconf/` is a folder used by `dconf` wich is used to store config settings. `dconf` is a cli tool for changing these settings
`/gconf/` -- `gconf` is very similar to dconf but outdated. Still used by somethings though.
`/dnsmasq.conf` is used by `dnsmasq`, which will be discussed in networking [TODO]
`/default/` stores default configuration files, typically these get overriden elsewhere by the user
`/dhcp_fingerprint.conf`,`/dhcpcd.conf`,`/dhcpd.conf`, and `/ducpd6.conf` are all part of `dhcpcd` and `dhcp`, used for reciveing DHCP information. This is dicussed further in the networking chapter [TODO]
`/dkms/framework.conf` is used to configure `dkms` or Dynamic Kernel Module Support which is used to load modules for the kernel without building the kernel from source. In practice this means drivers for various hardware can be loaded even if it's not in the linux source tree. Read more here: https://www.linuxjournal.com/article/6896
`/envrioment` is a configarating file for pam_env files. Basically, enviroment variables that you want to be loaded at boot can be put here. For example to change the defalut editor used by command line programs you can set `EDITOR=vim` or `EDITOR=nano` or whatever you like here.
`/ethertypes` is a file listing various ethernet protolcols, we'll come back to this in the networking chapter [TODO]
`/exports` is used to setup NFS shares, again, in networking [TODO]
`/firewall.d/`,`/gufw/` are where firewall settings are stored, dependant on the firewall progarm used
`/fonts/` holds your fonts, go figgure. You'll need to update the font database if you install things manually: https://wiki.archlinux.org/index.php/Fonts#Manual_installation
`/foremost.conf` is used by the `foremost` package, it contains information about file headers, footers, and data structures for file recovery purposeses. For example, if you have a backup .img file of a failing hdd and need to scan for .jpg file headers to recover images
`/freeipmi/` contains config files for Intelligent Platform Managment Inferface Modules. We'll talk about this more in servers [TODO], but essentially it's a way to, using server hardware, set BIOS settings, monitor hardware, and turn the system on/off remotely.
`/freetds/`,`/mysql/`,`/sqlmap.conf`,`/odbc.ini`,`ODBCDataSources`,and `odbcinst.ini` all have to do with databases and database connectivity. [TODO_Ch17]
`/fstab/` short for file system table contains a table of file systems to be mounted at startup and options they should have. Settings here can dramatically effect fs performance or cause your system not to boot, so make sure you know what you're doing. Even if your system doesn't boot because of something here, you should land in an emrgancy shell where you can edit `/etc/fstab` and fix the mistake
`/fuse.conf` is the config file for `fuse`, which is dicussed below in file systems.
`/gdb/gdbinit` -- you probably want to put the global gdb config file at `~/.gdbinit` not here in /etc. `gdb` is discussed more in debugging [TODO_Ch18]
`/group` is where linux user groups are defined. You probably want to use the `groups`,`groupadd`,`groupdel`,`groupmems`, and `groupmod` commands.
`/grub.d/` contains config files and boot loader entries for the grub bootloader. Not relevent if you're using systemd boot on a UEFI system
`/gshadow` contains encrypted passwords for each group. `!!` and `!` both indicated no password, though `!!` is no password has been set before
`/healthd.conf` used to notify if hardware has an issue (temp, fan, etc) -- provided by `lmsensors`
`/host.conf` & `/resolv.conf` are used for resolver configuration. More in networking [TODO]
`/hosts` local host configuration file. Very useful, in networking again [TODO]
`/httpd/`, and specifically `/httpd/conf/httpd.conf` is used to conigure a local web server like Apache. Refrenced in Networking [TODO] and Servers [TODO]

## /home, /mnt, /run

[TODO]

discuss systemd taking over home soon

## Users and Groups

[TODO]

permissions discussed eariler, recap here

## Drivers

[TODO]

udev rules

## File systems

[TODO]

Inodes, Raid, fuse, ext4, ntfs, zfs, tmpfs, fat/fat32/exfat, ...

include bit about named pipes

## Processes and Memory

[TODO]

loading libs, forks, env variables, process ownership

lsof, strace, ltrace, nice levels

## System Calls

[TODO]

start with a syscall table

## Kernel Parameters

[TODO]

## SystemD and alternatives

[TODO]

init system: https://www.lifewire.com/how-to-use-the-init-command-in-linux-4066930

## Schedulers

[TODO]

+real time kernel/preemption

## Dbus

[TODO]reguallarly

https://github.com/KnowNo/How-Linux-Works-2nd-Edition/blob/master/How.Linux.Works.What.Every.Superuser.Should.Know.2nd.Edition.PDF.pdf

We'll explore more of the OS later, but for now I think the information overload is a bit much anyway, so lets move away from screens and into the world of hardware


# Chapter 5 - Intro to Angry Pixies

[A simple guide to electronic components (YouTube)](https://www.youtube.com/watch?v=6Maq5IyHSuc&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz)

## The Tools of the Trade

Building, fixing, and analyzing circuitry requires the use of a few tools and appliences. While there are many more than those listed here, these are the most important ones and should be all you need for most even very advanced applications.

### The Multimeter

[TODO]

![multimeter]({static}/openg/multimeter.jpg)

## Resistance and the OHM meter

resistors do one thing- resist current. Using the ohm meter function of your multimeter you can find out the amount of this resistance measured in ohms (ohms are represented with a capital omega, Ω) using an ohm meter is simple, just poke and prod with at least one component in between the leads. If there's nothing in between - that is the leads are touching one another- there will be no resistance, if there's no way for a DC voltage to get from one point to the other, that will be infinite or 'overload' resistance

## Voltage, Ground, and the Volt Meter

Voltage can be thought of as the 'pressure' in a hose. However, this pressure is relative to another point, the point we usually take reference to is called 'ground', though this doesn't have to be the case- you can measure the voltage across a single resistor or other component too. Just remember measuring the voltage with both probes at point or along the same wire doesn't make sense because a volt meter only tells you the voltage difference between two points. This would be like seeing the pressure difference in hose between two nearby points, obviously the pressure of one point minus the other will be 0.

In general there are two primary ways you will work with voltage- AC or DC, these stand for Alternating Current and Direct Current. DC is simply a constant voltage level output. AC on the other hand is any time varying signal, usually periodic (repeating) and most commonly a sine, though many other waves are used like square, triangle, saw, and any mixture of these, including the same signal with a DC offset.

![img](https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Waveforms.svg/557px-Waveforms.svg.png)

Your multimeter will likely have two different settings for measuring voltage, one for DC and one for AC. Of note, *most* multimeters are not true RMS (Root Mean Square) meters, meaning the reading of AC voltage is not accurate unless it's a clean, no DC offset sine wave. RMS is a topic we'll be covering later, but to wet your apatite, this from wikipedia may help:

![img](https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Sine_wave_voltages.svg/400px-Sine_wave_voltages.svg.png)

https://en.wikipedia.org/wiki/Root_mean_square

Of note, from a mathematical perspective all time varrying signals can be represented as an infinite number of sine waves added together, this is actually used to do practical computation in many things.

![img](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Periodic_identity_function.gif/400px-Periodic_identity_function.gif)

https://en.wikipedia.org/wiki/Fourier_series#Examples

## Current and the Ammeter

If current is the pressure in the hose, then current is how much water actually flows. This analogy holds up too, because if we use a resistor to kink the hose and the flow is restircted the current will go down. If you were to stick a wire directly into the wall outlet all the current the wall can give will try to flow though, but it can be restricted. To measure the current though a circuit we can't just probe between two points as before though. Instead the probes need to form the exclusive path that part of the circuit can flow through.

In practice this means the wire you want to measure current through would need to be cut and the ammeter's probes hooked up at either end, making the meter part of the circuit.

Current, just like voltage, can varry, and in AC circuits usually does. This leads to some more interesting caseses like power factor, but we'll get to that later.

#### Continuity Tester

The contiuity tester does exactly what it's name implies, it makes sure two points are connected electrically. If you have a piece of metal and put both probes on it it should beep, but if you put the probes on rubber, they clearly will not be. The continutiy tester isn't really much different from the ohm meter in operation, and many will actually dispaly the resistance if there is any. The main use is that it beeps when the resistance is low enough to be confident two points are electrically connected.

#### [TODO] day to day use, why you want one

### The Lab Power Supply

Power Supply Units or 'PSU's are useful because unlike your phone charger which puts out a singular voltage of 5 volts (ignoring fast charging) they can have their output voltage varried usually between 1 and 35-ish volts. Furthermore, they provide current limiting, useful when you're unsure of how much current your circuit might sink or need it for safety.

[TODO] add picture, mention ATX psu, current safety

### The Frequnecy or Waveform Generator

Frequency generators can be used to output a signal that is alternating, unlike the DC signal of the Lab PSU.  Usually they'll support a range of wave shapes, frequencies, amplitudes, and DC offsets. Many support far more than this, though the applications for the more advanced modes are few. If you're just starting out you can (with precausions) actually just use the audio output of your computer or buy an inexpensive one for under \$20, unlike the expensive example below:

![Image result for arbitrary function generator](https://upload.wikimedia.org/wikipedia/commons/f/f6/BK_Precision_4078_arbitrary_waveform_generator.jpg)

https://en.wikipedia.org/wiki/Arbitrary_waveform_generator

### The Oscilloscope

The osciliscope (or OScope or simply Scope) allows you to see an AC signal and how it varies over time as a plot of Voltage on the Y axis and time on the X, Most OScopes will allow you to look at multiple signals at once, with one overlaid on the other. Furthermore, most support X-Y mode, where the plot is actually the voltage of one input as the X axis and the voltage of another as the Y, moving a dot and it's trail around the screen. In fact, this is how the first computer monitors worked:

![Image result for asteroids game]({static}/openg/oscopeastroids.jpeg)

Modern OScopes look much different than their phosphorescent green ancestors though:

![Image result for oscilloscope]({static}/openg/modernscope.jpeg)

However, a decent 'Digital Storage Oscilloscope' or DSO like the one above run a minimum of \$300 at the time of writing, so many hobbyist opt for older scopes like this one:

![Image result for oscilloscope]({static}/openg/oldscope.jpeg)

or a cheap, low resolution, low speed one from Ebay. For most uses, both of these will be perfectly fine. For just starting out though I'd recommend a logic analyzer (I'll talk about that next) and oscilloscope combo tool, like the **LHT00SU1** which can be found on Ebay pretty easily. Be aware they can fry your USB port or worse though.

But what are these actually used for day to day, and why would you want one? [TODO]

[Quake on an oscilloscope (YouTube)](https://www.youtube.com/watch?v=GIdiHh6mW58&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz)

### The Logic Analyzer

Logic Analyzers... analyze logic. Who knew? But what does that mean? Well, in reality they are *somewhat* similar to an oscilloscope in that they show a voltage over time, the difference is they only show either on or off over time based on the set TTL (Transistor–transistor logic) voltage. This lets you eavesdrop on the digital communication going on over a wire. Here's an example output:

![logic]({static}/openg/logic.png)

In this particular encoding, the longer high bumps represent a 1 and the short high bumps a 0, so you're looking at the binary that was sent over a wire. It's actually pretty rare that a wire sends raw high for a 1 and low for 0 so other schemes, like the one above, are used. For most schemes the software can actually be used to decode the received data into raw binary or if it was human readable characters even that.

Using a logic analyzer is pretty simple, most today are connected to your computer over USB and then use software like Pulseview as shown above, then you just select the sample rate (how many times per second to check the wire, here 1MHz) and the number of samples to collect and hit start. You may want to setup a trigger too (speaking of, it's worthwhile to look up how triggering works on an OScope [TODO]) Most logic analyzers support 8 or more simultaneous data streams, though in the picture above I'm only using one.

[TODO] explain when a logic analyzer is actually used, and look at a quick example decode

## Software Simulation

[TODO]

Circuit Simulator

Simulide

VCV Rack?

[TODO- following title needs split up, possibly new chapter?]

## OHM's law, Nodal & Mesh Analysis, Superposition, Thevanins

[TODO]

## Resistors

[TODO]

potentiometer read from aduino full range (center tap or max resitor)

## Capacitors

[TODO]

[True, Reactive, Apparent & Deformed Power](https://www.youtube.com/watch?v=cxXmWZDwNEs&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz)

[Why electrolytic capacitors are actually kinda shitty 💩 (YouTube)](https://www.youtube.com/watch?v=WytU5uj78-4&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz)

[Ideal Capacitor's aren't real](https://en.wikipedia.org/wiki/Two_capacitor_paradox)



## Inductors

[TODO]

[RGB LED, Inductively Powered, Frequency Controlled (YouTube)](https://www.youtube.com/watch?v=3DeOPN1Cl1Y&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz)

Motors

## Transformers, Variacs

[TODO]

## Buttons, Switches, and Knobs

[TODO] SPST DPST etc.  Pots V encoders, encoders with buttons, slider pots. (inc motorized) etc.

## Relays

[TODO] solid state vs old school

## Filters

[TODO]

Passive V Active

## Decibels

[TODO]

How to read logorithmic first

## Further Reading

[TODO]

https://learn.sparkfun.com/tutorials/voltage-current-resistance-and-ohms-law/voltage


# Chapter 6 - Let's work on how we work

## The Terminal

In the world of programming, embedded development, and electrical debugging you will inevitably need to understand how to use a terminal/command line at some point. While the text only interface can look intimidating, it has some clear advantages, namely it's significantly faster to use the cli or 'command line interface' version of many tools. Because of the nature of this book you will be using the terminal frequently, so for convince sake information on using it effectively has been moved to Appendix A, though I highly recommend you read though it now.

I highly recommend getting autojump setup early as it makes navigating around the terminal much faster, furthermore, bat makes reading code though cat not suck and tldr will save you time when you forget how to use tar, set these up early if nothing eles.

## Heads up,

With that out of the way, I want to preface this chapter with a big warning: Getting used to everything we're about to do will be a pretty big leap. There's a good chance you've never used a computer that works like we're going to be setting up, but it's what I and many of my friends use daily and for good reason. This is probably where more opinions are going to show than anywhere else. You've been warned.

[TODO] pacman -Qi , pacman -R

## Code editors

People get defensive about the way they work, and frequently try to claim theres is the best way. I personally see value in multiple of them, but also understand how setting down with just one and getting very fast with it may have it's appeal. I have three recommendations for code editors, as silly as that may seem.

The first two are terminal based `nano` and `vim`,

nano, is the most simplistic of all the editors I'll list here. It's stupid simple to use and for quick just opening a text file and changing one line, probably the fastest. It clearly prints it's instructions at the bottom of the terminal:

![nano]({static}/openg/nano.png)

where ^ is the ctrl key, and M the alt key. However, you'll quickly find nano rather limiting, so onto vim!

Vim, with Spacevim (spacevim.org) ontop is a very powerful tool.

![welcome-page](https://user-images.githubusercontent.com/13142418/45254913-e1e17580-b3b2-11e8-8983-43d6c358a474.png)

Vim can do everything you could ever dream of, and probably a bit more, and with spacevim ontop, it's a powerhouse. Unfortunately, vim is regularly the butt end of a joke becaue of how nutoriously difficult it is to get the hang of. For that reason I'm going to link a mini tutorial here: https://www.openvim.com/, and link https://spacevim.org/documentation

Graphically I recommend Visual Studio Code with Platform IO, Bracket Pair Colorizer 2, and GitLens

This gives you a pretty kick butt editor on bar with most full Integrated Development Environments or IDEs. I recommend you try out IDEs, especially if for some unholy reason you want to write in Java, but otherwise this will do fine.

![code]({static}/openg/code.png)

## The Desktop Envrioment

This is the biggest change, I'm going to recommend switching from KDE, which we installed when we setup arch, to i3. i3 is a tiling window manager, this means it looks something like this:

![i3]({static}/openg/i3.png)

This is with 3 windows open: Marktext (the program I'm writing this in), a file manager, and an terminal I used to launch the program (scrot) to take the screenshot. What's cool about i3 is how it will always use space as efficiently as possible by tiling the windows, and you can navigate between the windows (or multiple monitors) entirely by keyboard (mouse still works obviously) and open multiple virtual workspaces. When programming and using a computer for advanced things it's not uncommon to have a dozen windows open and having things organized like this can be a life saver.

i3, when first installed, is very, very minimal, it will greet you with a plain black bar and clicking with either mouse button anywhere will do nothing. You should, however, be able to open a terminal by using your modkey (probably the windows or alt key) and enter.

i3 actually comes in a bunch of separate parts, the most important of which are the window manager itself, the status bar, and the task runner.

The window manager is the thing that actually manages the windows, this is the part most people are referring to when talking about i3 (assuming they're not talking about an i3 Intel CPU) and is sometimes refereed to as i3wm. A very popular 'fork' of i3 is `i3-gaps` which is available in the community repository.

On top of the raw window manager you'll probably want a status bar of some kind. While the default i3bar which is included with the i3-gaps package is fine when paired with `i3status`, it does leave a bit to be desired. Many other options are available. I personally use `polybar` though I have friends that have used `lemonbar`  or`i3blocks`.

Finally you'll want a runner/application launcher. While i3-demu is included, I find it rather annoying to use, and much prefer `rofi` -- this is much better explained here than I can briefly: https://github.com/davatorium/rofi

To further make i3 reasonable to use you'll want a few more things:

`compton` is a composite manager. This is used to allow application to have some transparency, prevent screen tearing, and do slight effects, like but a shadow behind windows.

`lxappearance-gtk3` can be used to set the theme used by various graphical applications. I use [Sweet](https://www.gnome-look.org/p/1253385/) but there are nearly endless options

For setting the wallpaper (which you probably wont see much) you can use `nitrogen` or `feh`

if you have multiple monitors before setting the wallpaper though you'll probably want to arrange your monitors correctly, for this you can use `xrandr` , read the man page for more information. You can add the command you use to set up your displays to your i3 config file to apply them at each reboot

if you have a high resolution monitor and things are small, you may want to look here: https://wiki.archlinux.org/index.php/HiDPI , the best thing from this is to add

```bash
QT_QPA_PLATFORMTHEME=qt5ct
QT_AUTO_SCREEN_SCALE_FACTOR=1
GDK_SCALE=2
ELM_SCALE=1.5
```

to your /etc/enviroment file.

You'll be needing quite a few different utilities beyond this. for a terminal I highly  recomend `deepin-terminal`,  `rxvt-unicode`, or `Alacritty`.

For fonts you'll certainly have your own tastes, but I really like Droid Sans Mono, which is in `ttf-droid`, but `ttf-hack` and `otf-fira-code` are pretty cool too. I also recommend installing `noto-fonts`, `noto-fonts-extra`, and `ttf-font-awesome`. The noto packages will provide coverage for weird characters and font awesome is basically icons saved as a font, and many open source projects use it.

If you're looking for more ways to make your setup the best it can be or config files you can steal from check out  [r/unixporn](https://www.reddit.com/r/unixporn).

## The Physical Enviroment & Hardware

![penv]({static}/openg/physicalenv.jpg)

Working on a laptop with a mushy membrane keyboard is totally fine for some people, but when you're deep into some complicated work having the best possible setup can save a lot of time, frustration, and mental overhead.

Furthermore, the work environment can change how long you can work for and how productive your work time really is. Be it for comfort or productivity, there are many reasons to take care in making sure you're setup is right for you.

If you are on a laptop some of the following is still applicable, but consider how any of what I'm about to mention may be adapted to your own setup.

**Displays**

The way you use your monitor is more important the monitor itself. Don't get me wrong, if you have an 11", 4:3 aspect ratio monitor running though VGA there's a limited amount you can do, but there's still some things.

First and foremost is positioning. I've helped many a office worker complaining about neck and back pain simply by raising their monitor closer to eye level. Ideally you want your eyes to naturally rest right on the on the top 3rd line of your screen, about the level where the left-most knob is on the wallpaper on my right-most monitor in the picture above.

Unfortunately, there is no magic rule for how far away your monitor should be from your face, as this highly depends on your vision, monitor's resolution, and size

> on this note, you'll often hear monitors described by their dots per inch, this is a measure of the number of pixels in a square inch on the screen, the higher this is the finer the details, but the smaller any given element on screen will be. Apple's Retina displays for example have a high DPI rating, which is a large part of the reason they look so good

I personally have my three, 4k (that's 3840x2160, or 4 times the resolution of 1080p) monitors positioned approximately 30 inches from my eyes.

Before moving forward though, I think it would make sense to talk about some of this display terminology, if you're already cool with this just skip this massive quote block

> Aspect ratio is the ratio is the ratio of the width to the height of the screen, most modern screens are 16:9, or have 16 units of width for every 9 units of height. Most older displays, often now called square screens, are actually 4:3. Many people actually still prefer this for the extra vertical room it affords at a given size, and some laptops are actually moving back to a more 'square' aspect ratio. On the other hand more exotic ultra-wide displays are also coming out

> Sizing of displays is a bit odd. A 27" 16:9 display, is not the same size as a 27" 4:3 display as displays are measured diagonally.

> Resolution of a display refers to the number of pixels, HD technically starts at 720p, or 720 pixels across, though this is generally rather low by modern standards, with acceptable usually considered 1080p, which is technically 1920x1080. You may also see 1080i, this is a strange concept, not actually related to resolution, and we'll come back to it in a moment

> The interface on your display matters greatly as well, the most common at the are HDMI, Display Port, DVI, and VGA
> 
> VGA is the worst option here, as it's an analog signal. This means the signal can do strange things, getting corrupted between your computer and the monitor. Typically this is a blue, screw in connection with many pins
> 
> DVI is still pretty common and looks like an even larger VGA connection, with a typically white, screw in connector. This signal is normally digital, though there is a varient of DVI that can be adapted into VGA. Of note, DVI can also be adapted to HDMI though you will not have audio, as DVI does not carry sound
> 
> HDMI, probably the most well known connector, has multiple revisions, the revision determines many things such as the maximum resolution, refresh rate, and weather or not more obscure things such as HDR are supported. HDMI is usually considered the best of these three options
> 
> Taking the crown however, is Display Port (DP). Like HDMI display port does have multiple revisions which do differentiate similar things; however, Display Port will generally support high resolutions and more features at any given point. Assuming you're running a bog-standard 60hz 1080p display however, you'll find no difference between DVI, HDMI, and DP - unless you need sound.

> Next, you'll want to note the refresh rate of your monitor. This is how many times per second your monitor refreshes the screen. Typically monitors run at 60hz and TVs at 30 or 60. Because unlike a TV you're causing things on screen to change though, 30hz is generally considered bad and can even cause motion sickness. While 60hz may be standard, going for something even higher, with many displays offering well above 120hz, is something you may want to consider, especially if you plan on gaming.
> 
> Newer displays may support Freesync or Gsync, and both of these technologies require a supported graphics card in the system as well. These allow the display and computer to adaptively change the refresh rate so the monitor and computer both send and display frames in sync, which can make even a low refresh rate 'feel' much higher. This is a feature typically marketed to gamers and only supported in video games, but this has been changing. Gsync monitors genearlly have a much better implementation of the technology but it requires an Nvidia graphics card. As of the time of writing both Freesync and GSync are supported on linux, but quite rough around the edges.

> related to refresh rate is latency. In general this can actually mean two things, one is how long it takes for an image sent to the screen to actually be displayed. The lower this time the better, with good screens being sub 10 millisecond. Unfortunately, there's no standard among the industry to measure this and many get it wrong.
> 
> Also with latency theres grey to grey times, this is a measure of how long it takes a pixel to go from one shade to another. The lower this is the less motion blur the screen will exhibit

> The color depth of the display determines how precisely a color may be displayed. The higher this is the better, but almost all modern displays will be the same, and unless you're an artist or creative professional you're unlikely to notice a difference
> 
> On the other hand, you are likely to notice the color gamut or what range of colors the display is actually capable of displaying.
> 
> For example, two displays may both be capable of displaying 255 levels of red, but if one display's range is only from a dingy red to a dark-ish red, while the other is from a brilliant red to a deep dark red, there's a massive difference in color availability. If this is important to you, notably as a creative professionally in photo or video, you may want to read more at https://en.wikipedia.org/wiki/Gamut

> The next obvious thing to mention is dynamic range, or how deep the blacks are and how vivid the whites are. Again, this is simple, the higher the better. Many display types (LCD, TN-Panel) will have similar specifications in all these areas, but particularly here. OLED is probably the best when it comes to dynamic range as it can display true black by actually turning the source of the light off, but unfortunately these are quite susceptible to burn in and image persistence.
>
> Actually, display technology overall (OLED, LCD, TN, CRT, etc.) will have more of an impact than anything else. But, this is also getting really into the weeds, and I don't want to recomend one technology over the other since depending on many other factors on each display theres no clear winner.
>
> There are some newer displays which feature HDR or High Dynamic Range, which allows the panel to selective change the brightness in an area of the screen, giving much better dynamic range in supported applications than a normal display

> burn in and image persistence are both negative effects on many displays where a pixel either permanently or temporarily resists change in color. This can lead to being able to read previously displayed bright white text on a now black image for example. More commonly you'll find TVs which have a particular station's logo 'burnt in' to one corner of the screen, persisting even after changing channels

> Brightness is obvious, how bright or dim is the display. The big thing to note here is weather the brightness is PWM or DC controlled. Displays with PWM controlled brightness are much more common, however, it's a bit of a cheat. Instead of actually changing the intensity of the back light directly, they're simply strobing the light on and off to fast for the eye to see. This can cause eye strain over time though, and generally DC control, which actually does change the brightness directly is preferred. If you have a PWM display and don't mind it at full brightness, this should help with eyes strain, as there is no longer a strobe effect as the display's backlight is just constantly on.

> Finally, if fonts look bad on a screen, it may be due to Sub-pixel rendering. Basically, while most screens pixels go R-G-B in order, not all do. To make text look sharper, most font renders will try to abuse this sub-pixel order to get sharper-than-pixel fonts.

clearly there's a lot to be considered here. A no compromise monitor can cost thousands of dollars, but nice 4k 27" monitors like mine can be found for <250 on sale, and I love them. Just figure out what you need and what would be the most beneficial for you and work from there

---

One of the great things about i3 is how powerful it can be with multiple displays, though even if you're not using i3 having a 'multi head' setup can be a god send for productivity. Even if your monitors don't match it's worth it. If you have the budget to get two matching monitors, great, if not just getting a cheapo used monitor from a thrift store will be a massive improvement. I think 2 is the magic number for most people. 3 monitors take up a lot of room and unless you do some very multi-tasked things you won't see much benefit that using something like i3's workspaces wouldn't provide anyways.

Another thing to mention is red-light filters. While I dont personally use one many people find that reducing the amount of blue light coming from their displays significant helps with eyestrain. If this interests you give `redshift` a shot. I use it every now and then if I have a headache.

**Keyboard**

Probably the most important thing you can do for your workspace is getting a nice keyboard. If you're rocking a rubber dome or membrane keyboard, moving to a mechanical keyboard will make a massive difference.

![keycomp]({static}/openg/mechkey.png)

([source](https://commons.wikimedia.org/wiki/File:Keyboard_Construction_Button_Press.JPG))

The membrane/rubber dome keyboard on the left doesn't give much physical feedback to your fingers when you press a key, compared to the mechanical key switch on the right. A decent mechanical keyboard can be found on amazon for <50 USD, though as with anything in life the more you spend the better the product. One thing to keep in mind is the color of the switch used. Above you can see that keyboard has blue switches, blue switches have a noticeable 'bump', that is the switch has a spot of higher resistance before it actually botmoms out, and the key actually presses at this point, furthermore, blue keys are clicky - they are loud and some people find this annoying. Finally, they're also pretty light, not taking too much force to push down. Generally, blues are considered the 'gold standard' among typist, but games on the other hand may prefer a brown, red, or black switch.

|           | Linear | Bump  | Bump + Click |
| --------- | ------ | ----- | ------------ |
| **Light** | Red    | Brown | Blue         |
| **Heavy** | Black  | Clear | Green        |

> these are the common colors and how they feel for Cherry MX switches. Most other mechancial switches are 'clones' of MX switches- though sometimes these clones are actually superiour-
> but these clones don't always follow this chart

really it's all a matter of preference, I'm actually using a switch not listed here on my keyboard, but generally finding what you like among the above first is a good place to start. If I'm not using my main keyboard I generally use Blues. If you'd like to try some out before pulling the trigger on a full keyboard you can find switch test boards for sale online.

Furthermore, there are other types of switches like IBM's old Model M line which use a buckling spring, which are quite stiff and have a very unique, heavy feeling. If you don't want to use a 20 year old keyboard Unicomp makes clones that are quite nice.

You should also consider they layout of your keyboard. Some people absolutely need a number pad while others are happy to omit it and have the shorted hand travel to their mouse. Even still others want an extravagant number of keys or a weird split keyboard like mine:![keeb]({static}/openg/splitkeeb.jpg)

> This is a custom built ErgoDone keyboard, The Ergodox-ez can be purchased for ~300 USD, or you can build one like mine for a bit under 200

Beyond the physical layout you may also consider the keymap or software layout. Not only does my keyboard look weird, but the keys aren't arranged as you'd expect either. Instead of typing in QWERTY, I actually use Dvorak. That layout looks a like this on a normal keyboard: ![Image result for dvorak](https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/KB_United_States_Dvorak.svg/1200px-KB_United_States_Dvorak.svg.png)

though obviously anything is possible. A lot of programmers like to disable their Caps key for example and put something more useful there, or you may just want to move around a letter or two. Using a standard layout like Dovark is a bit easier though as I can easily load my keymap pretty quickly on any computer. Plain old Qwerty is fine, but I personally like my 'weird' keymap.

If you're shelling out big bucks on a nice keyboard anyway, you may also want to get a keyboard which supports QMK, a completely open source firmware which gives you total control of your keyboard, allowing you do to cool things like type greek letters ( Ω , α, β) or type parentheses by tapping the shift keys. I find that particularly helpful as my keyboard doesn't actually have enough keys to do have every key nicely available (note how I don't have a function row) for more info check out https://docs.qmk.fm/#/ . You can actually buy an adapter to use a normal keyboard with QMK, but it's a bit hack-y and I really recommend just saving up to get a full keyboard made for it.

Back to ergonomics, you'll want to make sure your keyboard is a t a comfortable height for you and that you can type in a way that isn't putting your wrists at any weird angles

Finally, one of the nice things about i3 is the ability to navigate everything entirely from the keyboard as well as bind as much as you want to as many keys as you'd like. Want a key combo to launch a file manager? easy. Want a key to navigate to open up a terminal and immediately run a command- no problem. Set things up as you like and enjoy being able to use your system at break neck speed while everyone else drags things around slowly.

**Mouse and other input**

Speaking of dragging things around slowly: The mouse

**Sound**

Noise isolation both electrical and physical, headphone types (over, on, in), amplifiers, dacs, ASIO/ sound hardware, connection types

**The Desk and Chair**



**Lighting**



**Air Quality**

[This Is Your Brain On Stale Air (YouTube)](https://www.youtube.com/watch?v=1Nh_vxpycEA&list=FLFMnqfaTa1se1LfbCB3peJQ)



## Various Programs:

**Markdown**

[TODO]

Marktext, Typora, colabrative editing, Github markup, etc

**Taskwarrior & Timewarrior**

[TODO]

Taskweb

**File Explorers & Storage Managment**

[TODO]

Ranger, THunar, Nautilius, Baobab, Gparted

if you use Nautilius, you may want to run

```bash
dconf write /org/gnome/nautilus/preferences/always-use-location-entry true
```

so that the file paths are displayed in full

**Media (Music, Video, PDF,)**

[TODO]

**Office & Creative Software**

[TODO]

Libreoffice

Krita

Audacity

DAW? QJackCTL?

OBS

KiCad

darktable

Evince

Feh, nomacs

Wine

Boxes- vm

**Package managment**

[TODO]

Pamac, Steam, AppImg, itch.io, dpkg, snap.

maintaining an aur package, pacman conf stuff

**Web and network protocols**

[TODO]

Vivaldi, Firefox, Syncthing, Beaker, IPFS, IRC - irssi, Telegram, Etherape, Wireshark, gufw,

**Shell Scripts**

[TODO]

# Chapter 6.1 - Git.

[TODO]

Show how to setup SSH keys, mention graphical git tools

https://dhwthompson.com/2019/my-favourite-git-commit

# Chapter 7 - Let's write some Code

From https://wiki.xxiivv.com/#development:

> Prototype before polishing. Get it working before optimizing it.
> Separate policy from mechanism; separate interfaces from engines.
> Write simple modular parts connected by clean interfaces.
> Design programs to be connected to other programs.
> Write programs to write programs when you can.
> Design for the future, because it will be here sooner than you think.
> In interface design, always do the least surprising thing.
> When a program has nothing surprising to say, it should say nothing.
> When a program must fail, it should fail noisily and as soon as possible.
> Write big programs only when it is clear by demonstration that nothing else will do.

Programming can seem scary at first but the more you exercise, the easier and more exciting it gets. After all, practice makes perfect! :)

## Python

![python]({static}/openg/python.png)

[TODO] Why start with python

## The building blocks of programming

All programming is just chaining logic, for example using treatments like "if a is b, then make c hold the value of a-3" followed by "if c is negitive then say hello"

Well, that's actually an easy program

```python
a = 1
b = 1
c = 1

if a == b:
    c = a-3

if c < 0:
    print('hello')
```

you should notice a few weird things here though, namely, on line 5 we used two equal signs to check equality. This is the case in most programming languages because a single equal sign, like is used on the first two lines, is used for assignment that is assigning the value of `a` to 1 and `b` to 1 or as on line 6 assigning the value of `( a - 3 )` to `c`, because we've already used a single equal sign for assignment, two equal signs is used for checking equality.

If you follow the logic here, `a` and `b` are both 1, so line 4 checks that to be true, so line 5 does happen. Now  c which previously was equal to 1 is now equal to a-3, where a is 1, so c becomes -2. on line 8 we check if c is less than 0, and it is so we print the word 'hello'. Here, you'll notice 'hello' is in quotes. This is because if it were not, that is if it were `print(hello)` it would try to print the value of the variable 'hello' which since hello isn't defined, wouldn't work. Let's try this in the Python interpreter. You can find install instructions for your operating system here: https://www.python.org/downloads/. If you're on Linux simply type `python` into the terminal. 

With the Python interpreter open try without quotes: 

```python
>>>print(hello)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'hello' is not defined
```

As you can see Python failed to print hello because the variable was not defined. Now lets try assigning a value to the hello variable before printing:

```python
>>> hello = "Hello World!"
>>> print(hello)
Hello World!
```

Anything you write to the interpreter can also be added to a file and ran that way. Try saving the examples above to a file called test.py, opening a terminal and running it with `python test.py`. 


### Conditions using `if`, `elif` and `else`

You often want code only to be executed, if a certain condition is met. For example, take a look at the following code:

```python
a = 13
b = 27
if a > b:
    print("a is bigger")
else:
    print("b is bigger")
```

Using the `if` statement, connected with a logical condition, you can control the program flow. In this case, `a` is smaller than `b`, so python will skip the code inside of the `if` case and only execute what is within the `else` part.

You can also combine multiple if cases like this:

```python
a = 3
if a < 0:
    print("a is negative")
elif a == 0:
    print("a is zero")
else:
    print("a is positive")
```

Using the `elif` statement, you can check for another condition if the one in the `if` statement was `false`.


### Loops

Some lines of codes have to be repeated very often. Instead of typing the same line over and over again, you can use loops.
There are two types of loops: The `for` and the `while` loop. While they both basically do the same thing, sometimes it is more intuitive to use one over the other.


#### The `for` loop

The `for` loop iterates over a list of items and stores the current element in a variable.
This is especially useful when working with lists, for example.

```python
fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print("I am eating a " + fruit)
```

If you are familiar with loops in other programming languages (such as Java or C), you're probably thinking: "That's not a for loop, that's a for-each!". This is true, in python all for loops are for-each loops. If you want to iterate over a range of numbers, use pythons `range()` function:

```python
for i in range(0, 100):
    print(i)
```


#### The `while` loop

The `for` loop is very useful, but sometimes, using the `while` loop is easier and more straightforward.
For example, if you want to repeat something until a certain condition is met, using this loop is simple:

```python
i = 0
while i < 10:
    print(i)
    i += 1
```

You can also combine the condition after the `while` keyword with an `else` statement:

```python
i = 11
while i < 10:
    print(i)
    i += 1
else:
    print("i is bigger than 10!")
```

[TODO]
assignment, comparison, combined ops (+=), mod, exponent, floor,
in/not in, is/is not, data types, functions
libraries


## Common methods used

commenting-out
print debugging
Recursion, object orientation
while(true)
try/catch


## Some simple programs

### Hello World

As seen in the example above, the following will print `Hello World!`:
`print('Hello World!')`
Lets get some input aswell: 

```python
print('What\'s your name?')
# This prints the question. Notice the escape character \ is used to avoid stopping the string. 

print('Hello ' + input()) 
# This will pause the program and wait for user input before printing Hello <input>
```

### Even or Odd

Below is an example of a Python script which checks if the input number is odd or even.

```python
# A number is even if division by 2 give a remainder of 0.
# If remainder is 1, it is odd number.
num = int(input("Enter a number: "))
if (num % 2) == 0:
   print("{} is Even".format(num))
else:
   print("{} is Odd".format(num))
```

### Prime Numbers

Prime number is a number greater than 1 whose only factors are 1 and itself. Few instances of prime numbers include 2, 3, 5, 11. Below is an example of python function which defines whether the given input number is prime or not. 

```python
def is_prime(num):

    if num > 1:

        # Iterate from 2 to n / 2
        for i in range(2, num // 2):

            # If num is divisible by any number between
            # 2 and n / 2, it is not prime
            if (num % i) == 0:
                print("{} is not a prime number".format(num))
                break
        else:
            print("{} is a prime number".format(num))

    else:
        print("{} is not a prime number".format(num))
```

### Calculating sine and pi

### Sorting a list

### Palindromes

### Cypher

## Making a full project

### Part 0, Git

Before we get started, I want to be sure you took the time to read the section on Git in Chapter 6.1 above. If you need to refer to a cheat sheet you can look in Apendix B.

### Part 1, Starting easy

[TODO] guide to write an OO python program with libraries to read and write entries to a database-like file and a real database
the database should have 3 tables, a to-do list, a time-tracker list, and a list of articles

To-do: NAME, DUEDATE
time-tracker: 2types, either manually enterend with NAME, TSTART, TSTOP or NAME, TTOTAL for the following program
articles: NAME, PUBLISHED, TPUB, TEDIT

we'll need some way to track what items in the time tracker were started, but never stopped

for now, everything should be strictly command line arguments and print statments

## More advanced topics

[TODO] Move this section

### Lambdas

A lambda expression is used to create a a small anonymous function. It can take any number of arguments, but can only have one expression.
Below is an example of a lambda expression which can be used to compute cube of any given number.

```python
>>> cube = lambda x : x**3
>>> cube(5)
125
```

And here is the other example of a lambda expression with three arguments.

```python
>>> sum = lambda a, b, c : a + b + c
>>> sum(1,2,-3)
0
```

threads/ parrallelization(high level only), interupts (actually, let's save this until embbeded), apis,

## A little more practice

Weird projects

https://twitter.com/Foone/status/1245610381600382976

## Easing int Graphical Programming with Creative Coding

http://feed.grantcuster.com/

[Coding Adventure: Ray Marching (YouTube)](https://www.youtube.com/watch?v=Cp5WWtMoeKg)
[Coding Adventure: Marching Cubes(Youtube)](https://www.youtube.com/watch?v=M3iI2l0ltbE)
[Coding Adventure: Portals (YouTube)](https://www.youtube.com/watch?v=cWpFZbjtSQg&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz)







# Chapter 8 - Low Level Programming

<iframe width="100%" height="450" src="https://www.youtube.com/embed/Snr113r5ocY?list=FLFMnqfaTa1se1LfbCB3peJQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


> [Video Link: Program in C (YouTube)](https://www.youtube.com/watch?v=Snr113r5ocY&list=FLFMnqfaTa1se1LfbCB3peJQ&index=126)

the stack, pointers, etc.

psuedo code, bitwise opererators, types, unsigned, signed bit, 1's compliment, 2's compliment

## Some simple programs, in C++


### Hello World

fully discect each line and call and why each line is used, ASCII table

add greating and input

### Bit Operations

### Even or Odd, prime,

### Calculating sine and pi

### Sorting a list

mention efficenecy, analysis later

### Palindromes

### Cypher

## System Calls

## Interupt & Signal handeling

### Part 2, Going Deeper

[TODO] Interacting with the above, this program should run in the background and update the data, based on window focus events
using libxdo

This program should actually provide the VAST majority of the source code, with purposeful errors for demonstating the below

furthermore, the C code should check to see if there is a new article, and if so it should call a function that
first checks a 'meta' entry to see if the python code to change a published time to be newer or the number of entries has changed to optimize:

- generates a template markdown file for the article if PUBLISHED is FALSE and no file for it exists,

- generates a template markdown file for the article if PUBLISHED is TRUE and no file for it exists,

- generates a html file from the markdown if PUBLISHED is TRUE and no html exists then updates TEDIT, TPUB

- remove the html file if PUBLISHED is FALSE and an html file for it exists,

however, every time this will still need checked to monitor the md for changes, using ionotify

- generates a new html from the markdwon if PUBLISHED is TRUE and md has changed then updates TEDIT

- if markdown is removed, the html file should be as well

### What are we going to do?

[TODO]

### Tools to use

[TODO]

### Pseudo code

[TODO]

### Writing it

[TODO]

using a code editor, header files, libraries, writing and using a Make file, stdout / stderr,

### Debugging it

[TODO]

gdb + gef, gdbfrontend, Valgrind, https://cdecl.org/, etc. Mention Virtual v Physical adressing/translation

overflows

### Analyzing the Assembly

[TODO]

Cutter, TIS-100, Shenzhen IO,

### Patching it

[TODO]

source patching, binary patching

## C, C++, Rust, Go, ?

## File formats

[TODO] wav is easy, mp3 is hard.. show this. WAV format on 767 of POC||GTFO

## Where to get more practice with low level programming

[TODO]

https://github.com/rby90/Project-Based-Tutorials-in-C

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Five Seconds of Donkey Kong. <a href="https://twitter.com/hashtag/plottertwitter?src=hash&amp;ref_src=twsrc%5Etfw">#plottertwitter</a><br><br>The NES has 2048 bytes of RAM. I snapshotted the RAM at each frame (60 fps) during 5 seconds of gameplay and plotted time series of the ones that changed at least once. <a href="https://t.co/rtPT0mHiLD">pic.twitter.com/rtPT0mHiLD</a></p>&mdash; Michael Fogleman (@FogleBird) <a href="https://twitter.com/FogleBird/status/954464508705234944?ref_src=twsrc%5Etfw">January 19, 2018</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>



# Chapter 9 - Finishing up the project

> # Manifesto
>
> 1. **Everything should be a tool.** A tool transforms data without adding to its source limitations. It's a function: returns an output for a given input.
> 2. **A great tool is [ambient](https://are.na/alex-singh/ambient-product-design).** It should disappear and flow through your actions. You should never need it because it's always at your hands. You should never ignore it because it's never in your way.
> 3. **Tools should be adaptable, changeable and personalisable**. If a tool does not perfectly fit your needs, you should be able to change, mix or remove its parts.
> 4. **Data should be reusable, text-editable, human-readable.** Produces a higher chance that (1.) is passed.
> 5. **Tools should be lightweight, available and timeless.** Computing power or internet speed shouldn't be the limitation for most tasks. It works in the past and in the future.
>
> > "Only through open sources, open standards, human-readable formats and their independencies, might they survive this fleeting age of self-destructing informatics." ― Devine Lu Linvega

[- Hunor Karamán @ hex22.org](https://hex22.org/)

## Part 3, more advanced high level

Modify the original python program to support a pretty cli input in a pretty way to make entries and visulize the data collected, parallelize some things, finally add a config file using yaml

## Part 4, getting our toes wet with embeded systems

Finally, let's go back and add a com port to the C code and send data to an arduino (can be simulated) and a TFT to display the currently active task and time elapsed.

# Other resources and articles:

[Good Coders Borrow, Great Coders Steal (StackOverflow Blog)](https://stackoverflow.blog/2020/05/20/good-coders-borrow-great-coders-steal/?cb=1)

[The Art of Code - Dylan Beattie (YouTube)](https://www.youtube.com/watch?v=6avJHaC3C2U&list=FLFMnqfaTa1se1LfbCB3peJQ)



# Chapter 9.1 - Other Languages of interest

## Low Level

### Rust

> Rust’s rich type system and ownership model guarantee memory-safety and thread-safety — enabling you to eliminate many classes of bugs at compile-time.

Basically, Rust doesn't let you screw up. It enforces writing code that's safe (except when you specify you want to do something unsafe). It has a lot of other really nice features and makes using efficient data structures easy. Another really nifty thing about Rust is that it has a sort of at compile time garbage collection of sorts, for lack of a better way to put it. Read more on that [here](https://doc.rust-lang.org/book/ch04-01-what-is-ownership.html#memory-and-allocation).

I really recommend [A half-hour to learn Rust](https://fasterthanli.me/blog/2020/a-half-hour-to-learn-rust/) 

[Nannou](https://nannou.cc/), is a creative coding framework for Rust that's pretty nifty too.

To show the maturity, just check out https://www.redox-os.org/, a full OS written in Rust!

Also, it's worth noting Rust can be used to generate Web Assembly (more about that below)

Other sources to lean rust:

- https://doc.rust-lang.org/book/foreword.html
- [Learning Rust the Dangerous Way (Cliff L. Biffle)](http://cliffle.com/p/dangerust/)



### Go

> Go is an open source programming language that makes it easy to build simple, reliable, and efficient software.

The big claim to fame for go is, well `go`, which let's you do really easy threading. (https://gobyexample.com/goroutines)

Other sources to learn Go:

- https://tour.golang.org/welcome/1



### Zig

> A general-purpose programming language and toolchain for maintaining **robust**, **optimal**, and **reusable** software.
>
> https://ziglang.org/

[Zig: A programming language designed for robustness, optimality, and clarity – Andrew Kelley (YouTube)](https://www.youtube.com/watch?v=Z4oYSByyRak&list=WL&index=4&t=0s)



### Crystal

Crystal's big thing is a Ruby (a very fast to write language) that's compiled and fast. From the home page:

```ruby
# A very basic HTTP server
require "http/server"

server = HTTP::Server.new do |context|
  context.response.content_type = "text/plain"
  context.response.print "Hello world, got #{context.request.path}!"
end

puts "Listening on http://127.0.0.1:8080"
server.listen(8080)
```

Seriously check it out at https://crystal-lang.org/



### D

A lesser used competitor to C++ mostly. It's very syntactically similar. Might be worth looking at.

https://dlang.org



### Nim

> Nim is a statically typed compiled systems programming language. It combines successful concepts from mature languages like Python, Ada and Modula.
>
> https://nim-lang.org/

Further, Nim allows for easy 'metaprogramming' which basically means you can [TODO]

Nim's syntax is python-like-ish



### Red

To be honest, I'm not sure Red belongs in the low level category, as it can be ran as a JIT language. 

> **Red** is a next-gen programming language, strongly inspired by [REBOL](http://rebol.com/). Main features are:
>
> 
>
> - **Human-friendly** [syntax](https://pointillistic.com/ren/)
> - **[Homoiconic](http://en.wikipedia.org/wiki/Homoiconicity)** (Red is its own meta-language and own **[data-format](http://www.rebol.com/rebolsteps.html)**)
> - **Functional**, imperative, **[reactive](http://www.red-lang.org/2016/06/061-reactive-programming.html)** and **symbolic** programming
> - **Prototype**-based object support
> - **Gradual and multi-**typing
> - **[Macros](http://www.red-lang.org/2016/12/entering-world-of-macros.html)** system
> - **Rich** set of built-in datatypes (50+)
> - Both **statically** and **JIT**-**compiled** to native code
> - **Cross-compilation** [done](https://github.com/red/red/blob/master/usage.txt) [right](https://github.com/red/red/blob/master/system/config.r)
> - Produces executables of **less than 1MB**, with **no dependencies**
> - **Concurrency** and **parallelism** strong support (actors, parallel collections)
> - Low-level **system programming** abilities through the built-in Red/System [DSL](http://en.wikipedia.org/wiki/Domain-specific_language)
> - Powerful **PEG [parser ](http://www.red-lang.org/2013/11/041-introducing-parse.html)**[DSL](http://www.red-lang.org/2013/11/041-introducing-parse.html) included
> - **Cross-platform native [GUI ](http://www.red-lang.org/2016/03/060-red-gui-system.html)**[system](http://www.red-lang.org/2016/03/060-red-gui-system.html), with a [UI DSL](http://doc.red-lang.org/gui/VID.html) and [drawing DSL](http://doc.red-lang.org/gui/Draw.html)
> - **Bridging** [to the JVM](https://github.com/red/red/blob/master/bridges/java/hello.red)
> - High-level **scripting** and [**REPL**](http://en.wikipedia.org/wiki/Read-eval-print_loop) console included
> - Visual Studio Code **[plugin](https://marketplace.visualstudio.com/items?itemName=red-auto.red)**, with many helpful features
> - Highly **[embeddable](http://www.red-lang.org/2017/03/062-libred-and-macros.html)**
> - **Low** memory footprint, **garbage collected**
> - **[Single-file](http://www.red-lang.org/p/download.html)** (~1MB) contains whole toolchain, full standard library and REPL.
> - **No install, no setup**
> - **Fun** guaranteed!
>
> https://www.red-lang.org/p/about.html

If you're interested, check out [Red's 'Getting Started' page](https://www.red-lang.org/p/getting-started.html).



### Haxe

> Haxe is an open source high-level strictly-typed programming language with a fast optimizing cross-compiler.
>
> https://haxe.org/



### Java

don't.
but, here's why not to use Java:



### WebAssembly

> WebAssembly (abbreviated *Wasm*) is a binary instruction format for a stack-based virtual machine. Wasm is designed as a portable target for compilation of high-level languages like C/C++/Rust, enabling deployment on the web for client and server applications.
>
> https://webassembly.org/

While not technically a programming language, I wanted to bring it up and encourage you look into it to be used instead of JavaScript for real projects. 



### Call for Contribution

If I missed a language you think I should have mentioned or would like to write a nice guide to your language of choice to be included in this Opinionated Guide please submit a pull request. I'd love to expand the Rust, Go, and Zig sections significantly!

---

## High Level

[TODO] probably going to need to break this out into it's own chapter

### JavaScript

Fine. I'll talk about JS. But, please. For the love of god do not use this to make an Electron App.

Before going to far, I do want to mention that a chunk of my hatred for JS is solved using frameworks and that I totally acknowledge the utility of JS for making quick, often very cool, 'sketches'. The creative coding community is amazing. Further, JS, as much of a total dumpster fire as it is, is responsible for the Internet as it is today weather thats a good thing [or not](http://motherfuckingwebsite.com/).

#### CoffeeScript

 https://coffeescript.org/

#### TypeScript

https://www.typescriptlang.org/

#### Frameworks

https://en.wikipedia.org/wiki/Comparison_of_JavaScript_frameworks

##### Angular

##### React

##### Vue

##### Node




### PHP

don't.
but, here's why not to use PHP:
If you must, you might want to check out Hack: https://hacklang.org/



### Ruby

> A dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.
>
> https://www.ruby-lang.org/en/





## For the Skript Kidd3s

> In programming and hacking cultures, a **script kiddie**, **skiddie**, or **skid** is an unskilled individual who uses [scripts](https://en.wikipedia.org/wiki/Scripting_language) or programs developed by others to attack computer systems and networks and [deface websites](https://en.wikipedia.org/wiki/Website_defacement), such as a [web shell](https://en.wikipedia.org/wiki/Web_shell). It is generally assumed that most script kiddies are juveniles who lack the ability to write sophisticated programs or exploits on their own and that their objective is to try to impress their friends or gain credit in computer-enthusiast communities. However, the term does not relate to the actual age of the participant. The term is considered to be derogatory.
>
> from https://en.wikipedia.org/wiki/Script_kiddie

But, really, some absolutely incredible code has been written in the following languages. They more than serve their purpose and are generally some of the fastest "I just need a quick and dirty solution" options out there. Not everything needs a blazing fast hand optimized C implementation, and code that's really just for personal use, to acomplish a one-off task, or that runs inside a bigger program (3D modeling software like Blender, Video editing software like Premier, Game development editors, etc.)  should probably be easy to read and modify quickly. Rapid prototyping certainly has it's place.

Just don't think you should use these to write efficient, safe code.

### LUA

#### MoonScript

### AHK

### Tasker (Android)

### CMD.exe

### Bash, ZSH, Fish, Xonsh, wut?

### Node-Red

### n8n



## Is this even Programming anymore?

### Pure-Data

### vvvv

### tooll.io

### ORCΑ



## Esolangs, the hole goes deeper

https://en.wikipedia.org/wiki/Esoteric_programming_language

https://esolangs.org



## Graphics Programming

look to chapter 26 for programming involving graphics, including node based shader editors and more

## Functional Programming

Look at Chapter 27 for Functional Programming

> Lisp, Haskell, Luna, 

## Database (SQL)

Look at Chapter 18 for information on Databases



## Coding Challanges

[Obfuscated C programs: Introduction (YouTube)](https://www.youtube.com/watch?v=rwOI1biZeD8&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz&index=15&t=0s) Obvuscated C, https://www.ioccc.org/

<img src="{static}/openg/ginny.png" alt="ginny" style="zoom:50%;" />

> Source: https://gist.github.com/munificent/b1bcd969063da3e6c298be070a22b604



# Chapter 10 - Networking

[TODO] Add follow along making a network stack

## A typical network

[TODO]

Default Gateway, Routes & kernel routing table, subnet mask, ping, traceroute, dns - resolv.conf, pihole, caching / squid, localhosts, port forwards, DHCP, private nets, firewalls, chromecast port thing, https vs no s,  rsync,scp,samba, cups, databases , pihole, BGP, RIP, OSFI, multi-zone wifi, single ap multi freq wifi, enterprise security, secured ethernet, https://blog.cloudflare.com/how-verizon-and-a-bgp-optimizer-knocked-large-parts-of-the-internet-offline-today/

The OSI model of networking is

## The physical Layer

### Coax, Fiber

### Wireless

### Hubs, Repeaters

## Data Link

### Ethernet

### PPP

### Switch

### Bridge

### Frames

## Network

### Packets

### IPV4, IPV6

### MAC

### ICMP, IGMP

## Transport

### TCP

### UDP

## Session

### Authentication

### Sockets

### API's

## Presentation

### Common Protocols

## Application

### HTTP

![Codes]({static}/openg/http-status-codes.png)

> https://www.monkeyuser.com/2017/http-status-codes/

### FTP

### DNS

### SSH

### IRC

### EMail

## Time

Real time clocks, timezones, utc, etc.

## VPNs

## Networking Tools

### Etherape

### Wireshark

### Nmap

# Chapter 10.1 - Weird Networking, because why not!

Netsukuku, cjdns + hyperboria, Dat / Beaker, [EVE Online internet](https://blog.benjojo.co.uk/post/eve-online-bgp-internet)

Software Defined Networking, ActivityPub

# Chapter 11 - High Level Overview of Math, Physics, and Chemistry (Sorry...)

[TODO]

# Chapter 11.1 - Math

some motivation, Klien bottle guy

## 1 - Algebra

Imaginary numbers, systems of equations

## 2 - Discrete Math

http://discrete.openmathbooks.org/dmoi3/

## 3 - Trig

## 4 - Calculus

3b1b: [The Essence of Calculus, Chapter 1 (YouTube, Series)](https://www.youtube.com/watch?v=WUvTyaaNkzM)

## 5 - Differential Equations

3b1b: [Differential equations, studying the unsolvable (YouTube, Series)](https://www.youtube.com/watch?v=p_di4Zn4wz4)

## 6 - Matrix Theory / Linear Algebra

https://readhacker.news/s/4aVPz

https://readhacker.news/s/4aUb6

3b1b: [Essence of linear algebra, chapter 1 -- Vectors (YouTube,Series)](https://www.youtube.com/watch?v=fNk_zzaMoSs&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab)

## 7 - Signals

[An Interactive Introduction to the Fourier Transform](http://www.jezzamon.com/fourier/)

3b1b: [But what is the Fourier Transform? A visual introduction. (YouTube)](https://www.youtube.com/watch?v=spUNpyF58BY)

https://ocw.mit.edu/resources/res-6-007-signals-and-systems-spring-2011/

https://en.wikibooks.org/wiki/Signals_and_Systems

# Chapter 11.2 - Physics

## 1 - Newtonian (assume a spherical cow)

## 2 - Electromagnetism

## 3 - Relativity and the Quantum

# Chapter 11.3 - Chem

## 1 - Atomic Structure, Basics of the Table, Bonding

## 2 - Acid/base, Electrochem, Thermochem, Photochem

## 3 - Organic Chemistry

[Yeast that produce PENICILLIN - Whose Gene is it Anyway (YouTube)](https://youtu.be/X4lZo4Ogx-k?t=107)

# Chapter 11.4 - 'The Rest'

## English

[TODO] Because the majority of the Internet and most publications are in English

## Other sources, interesting videos, etc:

- Minute Physics, Thought Emporium, Cody's Lab, 3Blue1Brown


# Chapter 12 - Circuits Continued

[TODO]

Show everything in a circuit sim, fix heading levels (this is a mess)

Possibly break up this chapter? Transistors, the opamp, etc alone may each justify their own chapters

That said, I don't want to get to in the mud of transistor physics. I really want to focus on how/when/why to use what, not how they work as the physics is both pretty hard to grasp and not super useful. Still would like to mention that switching is what uses power and like processe size things, but maybe not the chemistry or electron tunneling effects

# Chapter 12.1 - Semiconductors

## Diodes, the one way road

[TODO]

zeener, normal, bipolar

+ varistors , sparkgaps
+ Leds - getting current both ways, LED safety

### Diode Logic

## Transistors

[TODO]

tubes and how they work

### PNP V NPN

### IGBT, Mosfets?

## Integrated Circuits

[TODO]

https://hackaday.com/2019/05/20/integrated-circuits-can-be-easy-to-understand-with-the-right-teachers/
[Uncovering the Silicon: Demystifying How Chips are Built and How They Work (YouTube)](https://www.youtube.com/watch?v=VNzkhZBjo5k&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz)

[Reverse-engineering the TL431](http://www.righto.com/2014/05/reverse-engineering-tl431-most-common.html)

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Distortion pedal with all homemade semiconductors, only one external component (cap for AC coupling) <a href="https://t.co/M7t3Gl1m5P">pic.twitter.com/M7t3Gl1m5P</a></p>&mdash; Sam Zeloof (@szeloof) <a href="https://twitter.com/szeloof/status/1280249239495479297?ref_src=twsrc%5Etfw">July 6, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Finally I learned how to do focus stacking with my macro (non-microscope) shots. 226 shots, 50µm camera shift per frame. Laowa 25mm F2.8@F4 on WeMacro rail. Stitched in Helicon Focus (pyramid, smoothing=1). 1 original photo for comparison. <a href="https://twitter.com/hashtag/WeMacro?src=hash&amp;ref_src=twsrc%5Etfw">#WeMacro</a> <a href="https://twitter.com/laowa_lens?ref_src=twsrc%5Etfw">@laowa_lens</a> <a href="https://twitter.com/hashtag/heliconfocus?src=hash&amp;ref_src=twsrc%5Etfw">#heliconfocus</a> <a href="https://t.co/yCdCIBXMRv">pic.twitter.com/yCdCIBXMRv</a></p>&mdash; Zeptobars (@Zeptobars) <a href="https://twitter.com/Zeptobars/status/1105594474036686852?ref_src=twsrc%5Etfw">March 12, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>





### 555, OpAmp, 74-Series Logic

[555 Timer IC (YouTube)](https://www.youtube.com/watch?v=fLaexx-NMj8&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz)

potato semi

# Chapter 12.2 - Opamps & Filters

## Optical Electronics

[TODO]

## Crystal Oscilators

[TODO]

[Piezoelectricity - Why hitting crystals makes electricity (YouTube)](https://www.youtube.com/watch?v=wcJXA8IqYl8)

## PWM

[TODO]

## ADC/DAC

[TODO]

https://en.wikipedia.org/wiki/Fourier_transform

Nyquist

## Active Filters

http://sim.okawa-denshi.jp/en/

[TODO]

## Audio Devices

[TODO]

speakers, piezos, amps, mics and pickup patters

## TODO

add motors, analog meters, various connection standards, radio, flex/pressure sense, grounding (chasis, digital, analog, ground planes, etc.), solar/photo reactive,

## Relating AC and Music

[TODO]

Relate back to things like ADRS, Distortion, Reverb / Echo, Decibels (audio), etc. Use VCV RACK



## Continued Reading:

[TODO]

At this point I highly recommend *'Practical Electronics for Inventors'* ISBN 978-1259587542, namely chapters 2-12, and 15-16. It's a very large, detailed book that does it's best to keep things, well, practical.

https://taleri.files.wordpress.com/2014/02/practical_electronics_for_inventors_-_scherz_paul.pdf

[Hardware isn't generally copyrightable](https://web.archive.org/web/20120114234704/http://wiki.openhardware.org/Hardware_Isn't_Generally_Copyrightable)

# Chapter 13 - Digital Logic

[Todo, insert intro about Minecraft redstone]

## What is digital logic?

ignoring the analog world (10%/90%)

### Truth Tables, K-Maps

min/max terms, Don't cares, SOP/POS, multiple out

## Basic Logic Gates

#### Not

Truth table, transistor implementation pmos/nmos, cost, power consumption at switch

#### And, Nand

#### Or, Nor, Exnor

### Xor, Exor

#### Transmission,

#### Mux, Demux, encoders

## Basic combinational logic

propagation delay, fan in/out, POS/POS 

### 2's Compliment, Floating Pt, Math

overflow, carry, ripple, fast, mul, shift-and-add mult, divider,

## Latches and Flip Flops

SR, Dl, edge triggering, Dff, Tff, JKff,

### Registers

### Counters

## More Digital Logic resources

We'll come back to look at more complex digital logic in chapter 28 "Let's try out programmable logic" and **29 "Let's make our own SOC"** , but if you're hungry for even more, here are some resources



# Chapter 14 - Embedded Systems

[TODO]

## What is an Embedded System?

![pos]({static}/openg/pos.png)

## PWM, SPI, I2C, What's going on?!

## Playing around - Hello World and blink

## Making an Embeded System project - 1 - Humidity Sensor

## Making an Embeded System project - 2 - MIDI Controller (with piezzo)

## Making an Embeded System project - 3 - Stepper Motor Music

adapted from floppy drives, but less expensive

## Real Time Operating Systems

RIOT-OS, MBED, etc

talk about scheduling (CFS, etc)

## Other weird and cool projects:

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">a lot of people have been mocking this video but having tried it, I can confirm this is actually the most reliable way to fake keyboard events on windows 10. <a href="https://t.co/kTz5a6YlTI">https://t.co/kTz5a6YlTI</a></p>&mdash; foone (@Foone) <a href="https://twitter.com/Foone/status/1247233159596367883?ref_src=twsrc%5Etfw">April 6, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

[Of Course It Leaks!](https://groups.google.com/forum/message/raw?msg=comp.lang.ada/E9bNCvDQ12k/1tezW24ZxdAJ)

# Chapter 14.1 - Embedded Hardware comparison

[TODO, Pi V RockPi4 V Arduinos V x86, ref architecture information from chapter 3.3]

mention pi sd card performance / stability limits and pi advantages in how common it is



# Chapter 15 - Discrete Math and Algorithms

[TODO]

## Discrete Math

Truth tables, binary, logical equlivencies, propositional logic,

Sets, functions, relations, recurrence, induction, combonation, graphs, isomorphsm,

Sets are a well-defined collection of distinct objects. A set is represented in two ways, Rooster form or Set builder form.

### Rooster form:-

In this form we show all the elements in a set in curly brackets.
For example: 
A set of odd numbers is {1, 3, 5, 7, 9, ...)
A set of animals can be {Dog, Cow, Cat, Lion}

### Set Builder form:-

In this form we show all the elements by using a property that all the elements of the set follow.
For example:
A set of even numbers upto 10 is {x | x is even and x <= 10}
which is read as x where x is even and less than or equal to 10.

### Operations on Sets:-

#### Unions:-

A Union of two sets is a set which contains all elements of both the sets. A Union of set A and set B would be represented as, A⋃B.

For example:
The Union of Set A = {1,3, 5, 6} and Set B = {1, 2, 4, 6} is

A ⋃ B = {1, 2, 3, 4, 5, 6}

## Complexity analsis

+recursion analysis, [P vs. NP (YouTube)](https://www.youtube.com/watch?v=YX40hbAHx3s)

## Brute Force

## Data structures

trees, hashtables/maps, stacks

## Practice

Fib, some pracice logical equliv, base conversion algo, overlapping lines, matrix multiplication


# Chapter 16 - Writing a larger program

[TODO]

## Object Oriented Programming

## Planning

## Software Engineering


# Chapter 17 - Servers!

[TODO]

What's a homelab?

## Why build a server

## DIY Networking: Routing, firewall, etc.

## Web hosting

Before we get to business there's some necessary viewing: http://motherfuckingwebsite.com/

## File Storage, Sharing, Backups

## Remote Access

## Git, Games, and Glory

## Virtual Machines

## Containerization

## Fault tollerence


# Chapter 18 - Databases

[TODO]

Otherwise known as the chapter about sanitizing your inputs.

// insert xkcd drop tables


# Chapter 19 - Debugging, Automated Building and Testing

## Automated Building

## Debugging

### Software Debugging

[TODO]

GDB with Gef, interpreted languages, embeded systems, non-code isssues (boot problems, glitchy behavior), hardware failures, valgrind, various trace programs, print debugging extended

### Hardware Dubugging

common interfaces, simulation, serial/print debugging (slow), internal data logging, physical indicators of internal state, hardware to facilitate debugging (LED 'byte')

## Testing

### Software Testing

### Hardware Testing

## Automated Building and Testing

[TODO]

Fuzzing (sandsifter), make and alts, etc.

## Continuous Integration

## Continuous Deployment


# Chapter 20 - Compilers and Assemblers

[TODO]

Making a compiler and assembler, DIY language eso-lang style

## Making an interpreted language

## Making a compiled language

https://medium.freecodecamp.org/the-programming-language-pipeline-91d3f449c919

## Continued Reading

At this point I highly recommend '[The Art of Exploitation](https://nostarch.com/hacking2.htm)' by Jon Erickson


# Chapter 21 - Exploitation

![STACK](https://imgs.xkcd.com/comics/stack.png)

Often when we think about Exploitation, better known as hacking, we conjur images of a more-punk-than-cyber cyberpunk person clicking away wildly on a keyboard as code flies by, like the [1995 movie, Hackers](https://en.wikipedia.org/wiki/Hackers_(film)), and to some extent this isn't wrong, as one look around the floor at [DefCon](https://www.defcon.org/), will show you. And honestly, that's to by accident. While there are strictly professional security experts, those that work at corperations and banks, a large number do it for the lolz, for fun, and to bring a little fun back into computing. Calling exploitation 'hacking' is almost a misnome, as hacking encompases a lot more than exploitation, and exploitation a lot more than hacking. For that reason, before we start, I recomend you watch [this video](https://www.youtube.com/watch?v=wjge1bVobN0), on speed running Super Mario 64, this is a prime example of exploitation in a non-harmful manner done for fun.

[TODO]

## Types of exploits

[TODO] - where to put return oriented programming, super old hardware/software - 'the home router',

Otherwise known as hacking, exploitation of software is always alluring, though in reality like many things it is much less glamorous than the news or tv make it out to be. Before I get into it I want to plug 'The Art of Exploitation' by Jon Erickson again, as it truly is a masterpiece that describes exploiting in a way that just makes sense

### Software

Injection - SQL

breaking hashes

Heap/buffer overflow

dangaling pointers

code-injection

clock attacks

Race conditions

Path traversel

format string

pseudo-random

Fuzzing

#### Networking

DoS/DDoS

MitM

XXS

MAC/IP spoofing

sniffing

### Hardware

[Intro to Hardware Reversing: Finding a UART and getting a shell (YouTube)](https://www.youtube.com/watch?v=ZmZuKA-Rst0&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz)

Talk about CPU bugs

Power side channel

Timing attacks

pseudo-random (hardware side)

Hardware trust (HID injection)

replay attacks

radio, rfid, etc

rowhammer, Heartbleed

### Social Engineering

Phishing

spoofing (email, phone)

UTF-8 v ASCII

click jacking

expired certificate

default passwords

honey pots

### Physical security

Lock picking as a last resort

[Law School for Lockpickers [YouTube, DEF CON 28]](https://www.youtube.com/watch?v=HGg9mypLcH0)

data destruction

## Malware

> Section here about not being a dick

Viruses

polymorphic

boot-record

trojan

logic/comression bomb

logic/time bombs

ransomware

adware/spyware

## Tools of the trade

Many tools in common with debugging (gdb - gef, hex editors, logic analzer)

and testing (fuzzing)

decompilers, dissassembly, analysis

Wireshark

Cheatengine

dynamic linking

## Getting some practice

### CTF-Time

### PWNie Island

## Where to learn even more:

Live Overflow, Youtube: https://www.youtube.com/channel/UClcE-kVhqyiHCcjYwcpfj9w/playlists

Phrack : http://www.phrack.org/

Defcon Media Server : https://media.defcon.org/

As mentioned above in [Chapter 17- Compilers and Assemblers](#chapter-17--compilers-and-assemblers) At this point I highly recommend '[The Art of Exploitation](https://nostarch.com/hacking2.htm)' by Jon Erickson

https://microcorruption.com/ , https://ctftime.org/ ,

CTF time,

https://nagarrosecurity.com/blog/interactive-buffer-overflow-exploitation

## Some Hacking Community Fun

https://www.youtube.com/watch?v=Jwpg-AwJ0Jc
https://www.youtube.com/watch?v=UBaVek2oTtc
https://www.youtube.com/watch?v=bouYRMItWnI
https://www.youtube.com/watch?v=RDZnlcnmPUA

https://twitter.com/Foone/status/910217984098017281

[Does register selection matter to performance on x86 CPUs? ](https://readhacker.news/s/4hqd9)

[Leap Day Bugs](https://codeofmatt.com/list-of-2020-leap-day-bugs/)

Never claim something is 'unhackable':
https://techcrunch.com/2019/05/10/eyedisk-encrypted-flash-drive-unhackable/,
![unhackable]({static}/openg/unhackable1.jpg)

[DEF CON 18 - Zoz - Pwned By The Owner: What Happens When You Steal A Hacker's Computer (YouTube)](https://www.youtube.com/watch?v=Jwpg-AwJ0Jc)

[Diabetics Are Hacking Their Own Insulin Pumps (YouTube)](https://www.youtube.com/watch?v=bouYRMItWnI)

[Big List of Naughty Strings (Github)](https://github.com/minimaxir/big-list-of-naughty-strings)



# Chapter 22 - Security

[TODO]

focus on how to write secure programs, protect hardware, etc.

ESDA is bad

# Chapter 23 - Open Source, Licences, and Copyright

[TODO]

actually contribute on github, make an issue, submit a pull request, make a custom repo,


# Chapter 24 - Let's make our own PCB

[TODO]

First things first, we're going to be using Kicad, so you'll want to go grab that from the repos. While that's downloading and installing give this a watch to get the basics down:

[KiCad Quick Start Tutorial (YouTube)](https://www.youtube.com/watch?v=zK3rDhJqMu0&index=8&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz&t=0s)

<svg xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:cc="http://creativecommons.org/ns#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:svg="http://www.w3.org/2000/svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd" xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape" width="210mm" height="297mm" viewBox="0 0 210 297" version="1.1" id="svg8" inkscape:version="0.92.1 r" sodipodi:docname="kicad-cheatsheet.svg">
  <defs id="defs2">
    <marker inkscape:stockid="TriangleOutS" orient="auto" refY="0.0" refX="0.0" id="marker6559" style="overflow:visible" inkscape:isstock="true">
      <path id="path6444" d="M 5.77,0.0 L -2.88,5.0 L -2.88,-5.0 L 5.77,0.0 z " style="fill-rule:evenodd;stroke:#787878;stroke-width:1pt;stroke-opacity:1;fill:#787878;fill-opacity:1" transform="scale(0.2)"/>
    </marker>
    <marker inkscape:isstock="true" style="overflow:visible" id="marker6208" refX="0" refY="0" orient="auto" inkscape:stockid="TriangleOutS">
      <path transform="scale(0.2)" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" d="M 5.77,0 -2.88,5 V -5 Z" id="path6206" inkscape:connector-curvature="0"/>
    </marker>
    <marker inkscape:isstock="true" style="overflow:visible" id="marker13868" refX="0.0" refY="0.0" orient="auto" inkscape:stockid="TriangleOutS">
      <path transform="scale(0.2)" style="fill-rule:evenodd;stroke:#656565;stroke-width:1pt;stroke-opacity:1;fill:#656565;fill-opacity:1" d="M 5.77,0.0 L -2.88,5.0 L -2.88,-5.0 L 5.77,0.0 z " id="path13866"/>
    </marker>
    <marker inkscape:isstock="true" style="overflow:visible" id="marker13606" refX="0.0" refY="0.0" orient="auto" inkscape:stockid="TriangleOutM">
      <path transform="scale(0.4)" style="fill-rule:evenodd;stroke:#656565;stroke-width:1pt;stroke-opacity:1;fill:#656565;fill-opacity:1" d="M 5.77,0.0 L -2.88,5.0 L -2.88,-5.0 L 5.77,0.0 z " id="path13604"/>
    </marker>
    <inkscape:path-effect effect="bend_path" id="path-effect13584" is_visible="true" bendpath="m 129.2056,51.073208 h 43.83178" prop_scale="1" scale_y_rel="false" vertical="false"/>
    <marker inkscape:stockid="TriangleOutM" orient="auto" refY="0.0" refX="0.0" id="marker8510" style="overflow:visible" inkscape:isstock="true" inkscape:collect="always">
      <path id="path8508" d="M 5.77,0.0 L -2.88,5.0 L -2.88,-5.0 L 5.77,0.0 z " style="fill-rule:evenodd;stroke:#000000;stroke-width:1pt;stroke-opacity:1;fill:#000000;fill-opacity:1" transform="scale(0.4)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutS" orient="auto" refY="0.0" refX="0.0" id="TriangleOutS" style="overflow:visible" inkscape:isstock="true" inkscape:collect="always">
      <path id="path4676" d="M 5.77,0.0 L -2.88,5.0 L -2.88,-5.0 L 5.77,0.0 z " style="fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1pt;stroke-opacity:1;fill:#1e1e1e;fill-opacity:1" transform="scale(0.2)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutM" orient="auto" refY="0.0" refX="0.0" id="TriangleOutM" style="overflow:visible" inkscape:isstock="true">
      <path id="path4673" d="M 5.77,0.0 L -2.88,5.0 L -2.88,-5.0 L 5.77,0.0 z " style="fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1pt;stroke-opacity:1;fill:#1e1e1e;fill-opacity:1" transform="scale(0.4)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutL" orient="auto" refY="0.0" refX="0.0" id="TriangleOutL" style="overflow:visible" inkscape:isstock="true">
      <path id="path4670" d="M 5.77,0.0 L -2.88,5.0 L -2.88,-5.0 L 5.77,0.0 z " style="fill-rule:evenodd;stroke:#000000;stroke-width:1pt;stroke-opacity:1;fill:#000000;fill-opacity:1" transform="scale(0.8)"/>
    </marker>
    <marker inkscape:stockid="Arrow2Lend" orient="auto" refY="0.0" refX="0.0" id="Arrow2Lend" style="overflow:visible;" inkscape:isstock="true">
      <path id="path4549" style="fill-rule:evenodd;stroke-width:0.625;stroke-linejoin:round;stroke:#000000;stroke-opacity:1;fill:#000000;fill-opacity:1" d="M 8.7185878,4.0337352 L -2.2072895,0.016013256 L 8.7185884,-4.0017078 C 6.9730900,-1.6296469 6.9831476,1.6157441 8.7185878,4.0337352 z " transform="scale(1.1) rotate(180) translate(1,0)"/>
    </marker>
    <marker inkscape:stockid="Arrow1Lend" orient="auto" refY="0.0" refX="0.0" id="Arrow1Lend" style="overflow:visible;" inkscape:isstock="true">
      <path id="path4531" d="M 0.0,0.0 L 5.0,-5.0 L -12.5,0.0 L 5.0,5.0 L 0.0,0.0 z " style="fill-rule:evenodd;stroke:#000000;stroke-width:1pt;stroke-opacity:1;fill:#000000;fill-opacity:1" transform="scale(0.8) rotate(180) translate(12.5,0)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutS" orient="auto" refY="0" refX="0" id="TriangleOutS-0" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path4676-9" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.2)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutS" orient="auto" refY="0" refX="0" id="TriangleOutS-0-3" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path4676-9-9" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.2)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutS" orient="auto" refY="0" refX="0" id="TriangleOutS-0-3-4" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path4676-9-9-9" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.2)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutS" orient="auto" refY="0" refX="0" id="TriangleOutS-1" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path4676-8" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.2)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutS" orient="auto" refY="0" refX="0" id="TriangleOutS-6" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path4676-3" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.2)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutM" orient="auto" refY="0" refX="0" id="marker8510-8" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path8508-4" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.4)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutM" orient="auto" refY="0" refX="0" id="marker8510-6" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path8508-7" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.4)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutM" orient="auto" refY="0" refX="0" id="marker8510-7" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path8508-41" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.4)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutS" orient="auto" refY="0" refX="0" id="TriangleOutS-4" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path4676-4" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.2)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutS" orient="auto" refY="0" refX="0" id="TriangleOutS-0-37" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path4676-9-3" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.2)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutS" orient="auto" refY="0" refX="0" id="TriangleOutS-4-2" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path4676-4-1" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.2)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutM" orient="auto" refY="0" refX="0" id="marker8510-4" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path8508-8" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.4)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutM" orient="auto" refY="0" refX="0" id="marker8510-4-7" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path8508-8-0" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.4)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutS" orient="auto" refY="0" refX="0" id="TriangleOutS-4-9" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path4676-4-9" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.2)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutS" orient="auto" refY="0" refX="0" id="TriangleOutS-4-2-3" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path4676-4-1-0" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.2)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutM" orient="auto" refY="0" refX="0" id="marker8510-7-2" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path8508-41-7" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.4)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutM" orient="auto" refY="0" refX="0" id="marker8510-4-0" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path8508-8-3" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.4)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutM" orient="auto" refY="0" refX="0" id="marker8510-4-0-3" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path8508-8-3-2" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.4)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutS" orient="auto" refY="0" refX="0" id="TriangleOutS-13" style="overflow:visible" inkscape:isstock="true" inkscape:collect="always">
      <path inkscape:connector-curvature="0" id="path4676-0" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.2)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutS" orient="auto" refY="0" refX="0" id="TriangleOutS-0-0" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path4676-9-4" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.2)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutM" orient="auto" refY="0" refX="0" id="marker8510-4-0-3-0" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path8508-8-3-2-9" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.4)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutM" orient="auto" refY="0" refX="0" id="marker8510-4-0-3-3" style="overflow:visible" inkscape:isstock="true">
      <path inkscape:connector-curvature="0" id="path8508-8-3-2-6" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.4)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutS" orient="auto" refY="0" refX="0" id="TriangleOutS-13-3-7" style="overflow:visible" inkscape:isstock="true" inkscape:collect="always">
      <path inkscape:connector-curvature="0" id="path4676-0-6-5" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#1e1e1e;fill-opacity:1;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.2)"/>
    </marker>
    <marker inkscape:stockid="TriangleOutS" orient="auto" refY="0" refX="0" id="marker6559-3" style="overflow:visible" inkscape:isstock="true">
      <path id="path6444-5" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#787878;fill-opacity:1;fill-rule:evenodd;stroke:#787878;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.2)" inkscape:connector-curvature="0"/>
    </marker>
    <marker inkscape:stockid="TriangleOutS" orient="auto" refY="0" refX="0" id="marker6559-6" style="overflow:visible" inkscape:isstock="true">
      <path id="path6444-1" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#3f3f3f;fill-opacity:1;fill-rule:evenodd;stroke:#3f3f3f;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.2)" inkscape:connector-curvature="0"/>
    </marker>
    <marker inkscape:stockid="TriangleOutS" orient="auto" refY="0" refX="0" id="marker6559-6-2" style="overflow:visible" inkscape:isstock="true">
      <path id="path6444-1-3" d="M 5.77,0 -2.88,5 V -5 Z" style="fill:#3f3f3f;fill-opacity:1;fill-rule:evenodd;stroke:#3f3f3f;stroke-width:1.00000003pt;stroke-opacity:1" transform="scale(0.2)" inkscape:connector-curvature="0"/>
    </marker>
  </defs>
  <sodipodi:namedview id="base" pagecolor="#ffffff" bordercolor="#666666" borderopacity="1.0" inkscape:pageopacity="0.0" inkscape:pageshadow="2" inkscape:zoom="1" inkscape:cx="271.10925" inkscape:cy="516.83864" inkscape:document-units="mm" inkscape:current-layer="layer1" showgrid="false" inkscape:measure-start="0,0" inkscape:measure-end="0,0" inkscape:snap-global="false" inkscape:window-width="2560" inkscape:window-height="1381" inkscape:window-x="0" inkscape:window-y="26" inkscape:window-maximized="1"/>
  <metadata id="metadata5">
    <rdf:RDF>
      <cc:Work rdf:about="">
        <dc:format>image/svg+xml</dc:format>
        <dc:type rdf:resource="http://purl.org/dc/dcmitype/StillImage"/>
        <dc:title/>
      </cc:Work>
    </rdf:RDF>
  </metadata>
  <g inkscape:label="Layer 1" inkscape:groupmode="layer" id="layer1">
    <circle style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#ff7700;fill-opacity:1;fill-rule:nonzero;stroke:none;stroke-width:0.26458332;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="path7200" cx="52.554516" cy="53.293392" r="0.98576403"/>
    <path style="fill:none;fill-rule:evenodd;stroke:#ff7700;stroke-width:0.26500002;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:2.12000018, 2.12000018;stroke-dashoffset:0;stroke-opacity:1" d="M 105,36.248704 V 283.25578" id="path8112" inkscape:connector-curvature="0"/>
    <g id="g17267" transform="translate(0,-1.6669544e-5)">
      <text id="text4495" y="38.596554" x="7.9060278" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#1b2b63;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-weight:bold;font-size:4.58611107px;fill:#1b2b63;fill-opacity:1;stroke-width:0.26458332px" y="38.596554" x="7.9060278" id="tspan4493" sodipodi:role="line">1) Create a project</tspan></text>
      <g transform="translate(1.0583333)" id="g8823">
        <g id="g4524" transform="matrix(0.40999828,0,0,0.40999828,-25.295398,13.089958)">
          <rect ry="1.8196113" y="74.140541" x="91.990417" height="12.825409" width="26.019157" id="rect4515" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#9f9f9f;stroke-width:0.5291667;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
          <text id="text4519" y="84.470322" x="96.455109" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px" y="84.470322" x="96.455109" id="tspan4517" sodipodi:role="line">File</tspan></text>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:0.5291667;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;marker-end:url(#TriangleOutS)" d="m 24.196804,46.11665 h 2.18336" id="path4526" inkscape:connector-curvature="0"/>
        <path style="fill:none;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:0.52916676;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;marker-end:url(#TriangleOutS-0)" d="m 56.152035,46.11665 h 2.183359" id="path4526-4" inkscape:connector-curvature="0"/>
        <g id="g4524-9" transform="matrix(0.40999828,0,0,0.40999828,-9.4756269,13.089958)">
          <rect ry="1.8196113" y="74.140541" x="91.990417" height="12.825409" width="65.3741" id="rect4515-36" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#9f9f9f;stroke-width:0.5291667;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
          <text id="text4519-2" y="84.470322" x="95.880157" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px" y="84.470322" x="95.880157" id="tspan4517-1" sodipodi:role="line">New Project</tspan></text>
        </g>
        <g id="g4524-9-2" transform="matrix(0.40999828,0,0,0.40999828,22.479606,13.089958)">
          <rect ry="1.8196113" y="74.140541" x="91.990417" height="12.825409" width="65.3741" id="rect4515-36-5" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#9f9f9f;stroke-width:0.5291667;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
          <text id="text4519-2-3" y="84.470322" x="95.880157" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px" y="84.470322" x="95.880157" id="tspan4517-1-9" sodipodi:role="line">New Project</tspan></text>
        </g>
      </g>
    </g>
    <circle style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#ff7700;fill-opacity:1;fill-rule:nonzero;stroke:none;stroke-width:0.26499999;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="path7200-9" cx="52.554516" cy="181.95131" r="0.98576403"/>
    <g id="g11707" transform="translate(-151.4923,-35.420133)">
      <text id="text4487" y="56.675728" x="249.41946" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:12.36281109px;line-height:7.72675705px;font-family:'Poetsen One';-inkscape-font-specification:'Poetsen One';letter-spacing:0.00618141px;word-spacing:0px;fill:#1b2b63;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-family:'Poetsen One';-inkscape-font-specification:'Poetsen One';fill:#1b2b63;fill-opacity:1;stroke-width:0.26458332px" y="56.675728" x="249.41946" id="tspan4485" sodipodi:role="line">cheatsheet</tspan></text>
      <image style="stroke-width:2.9580512" width="43.470341" height="17.71014" preserveAspectRatio="none" xlink:href="data:image/png;base64,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 " id="image11692" x="200.00117" y="41.360012"/>
    </g>
    <g id="g17424" transform="translate(0.05804979,-0.99407852)">
      <g transform="translate(0,2.1166667)" id="g8835">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="8.0651913" y="61.355968" id="text4495-3"><tspan sodipodi:role="line" id="tspan4493-9" x="8.0651913" y="61.355968" style="font-weight:bold;font-size:4.58611107px;fill:#1b2b63;fill-opacity:1;stroke-width:0.26458332px">2)</tspan></text>
        <image y="56.609901" x="13.588102" id="image5719" xlink:href="data:image/png;base64,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 KNcjs7cAAAAASUVORK5CYII= " preserveAspectRatio="none" height="6.8654218" width="6.8654218" style="stroke-width:2.1581583"/>
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="21.927786" y="61.740009" id="text4495-3-41"><tspan sodipodi:role="line" id="tspan4493-9-7" x="21.927786" y="61.740009" style="font-weight:bold;font-size:4.58611107px;fill:#1b2b63;fill-opacity:1;stroke-width:0.26458332px">Eeschema : draw the schematic</tspan></text>
      </g>
      <g id="g5389" transform="translate(0,-1.0577574)">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.322139" y="73.708862" id="text4495-3-9"><tspan sodipodi:role="line" x="13.322139" y="73.708862" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740">Add components :</tspan></text>
        <g id="g4524-21" transform="matrix(0.40999828,0,0,0.40999828,54.106168,39.178411)">
          <rect ry="2.703063" y="75.532768" x="94.907524" height="12.670878" width="12.670878" id="rect4515-3" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
          <text id="text4519-0" y="85.630249" x="97.788391" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px" y="85.630249" x="97.788391" id="tspan4517-9" sodipodi:role="line">A</tspan></text>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.265, 1.06;stroke-dashoffset:0;stroke-opacity:1" d="M 44.408949,72.744236 H 90.514074" id="path12412" inkscape:connector-curvature="0"/>
      </g>
      <g id="g5402" transform="translate(0,-2.057871)">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.079259" y="81.23587" id="text4495-3-9-9-6"><tspan sodipodi:role="line" x="13.079259" y="81.23587" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-0">Move item<tspan style="font-size:2.11666656px;baseline-shift:super" id="tspan5301">1</tspan> :</tspan></text>
        <g id="g6786" transform="translate(53.917305,4.7765454)">
          <g transform="matrix(0.40999828,0,0,0.40999828,0.18886265,41.639486)" id="g4524-21-5-3">
            <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-3-7-3" width="12.670878" height="12.670878" x="94.907524" y="75.532768" ry="2.703063"/>
            <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="96.625671" y="85.630249" id="text4519-0-3-6"><tspan sodipodi:role="line" id="tspan4517-9-3-1" x="96.625671" y="85.630249" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px">M</tspan></text>
          </g>
          <image style="stroke-width:36.58646011" width="2.0734308" height="3.2864909" preserveAspectRatio="none" xlink:href="data:image/png;base64,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 " id="image6031-2-8" x="33.043667" y="73.562065"/>
          <text id="text4495-3-9-9-8-5-2-1-6" y="76.369751" x="35.982738" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6-9-2-3" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="76.369751" x="35.982738" sodipodi:role="line">+</tspan></text>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.265, 1.06000001;stroke-dashoffset:0;stroke-opacity:1" d="M 33.152514,79.981856 H 84.346165" id="path12412-4" inkscape:connector-curvature="0"/>
      </g>
      <g id="g5415" transform="translate(0,3.2131048)">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.165387" y="88.080757" id="text4495-3-9-9"><tspan sodipodi:role="line" x="13.165387" y="88.080757" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1">Copy item :</tspan></text>
        <g id="g6777" transform="translate(50.094237,4.4338224)">
          <g transform="matrix(0.40999828,0,0,0.40999828,4.0119307,49.186247)" id="g4524-21-5">
            <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-3-7" width="12.670878" height="12.670878" x="94.907524" y="75.532768" ry="2.703063"/>
            <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="97.788391" y="85.630249" id="text4519-0-3"><tspan sodipodi:role="line" id="tspan4517-9-3" x="97.788391" y="85.630249" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px">C</tspan></text>
          </g>
          <image style="stroke-width:36.58646011" width="2.0734308" height="3.2864909" preserveAspectRatio="none" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAR8AAAHGCAYAAABNZo+qAAAABHNCSVQICAgIfAhkiAAAHUFJREFU eJzt3W2QZXV94PFv3+7pHmdgZgTGzgAqssQxE7GIY6IhKhM0IUpEUcKTxKyVqk22UrVPSembrX2R 2qp9yO7WmuzmaXdryyiPIqgRDSJxEIysATYlOgWIyhqwGVsJA8wwPdN9e1+c205P9+3u27fvub/f Oef7ecUMM31/DH2+c+655/8/IEmS1BQjffye8bExfn52lguB84FXANuAFvAC8BRwYHSU+087jXum p3lhcONKqov1xGcS+MfAFcD2Hn/Pi8CngD+niJIkATC61i/Ys4fx6Wn+KfAR4OeAzev4+psozo6u pcXYnp/i/05PM9ffqJLqZK0zn7OBPwZeM6DXexj4HeDpAX09SRW1Wnz2AP8LOH3Ar/n0xAQfnJnh 2wP+upIqpGt8Nm/mVUePcjOwo6RXnWae3wAeL+XrS0qvtfQndu1iy9Gj/CllhQdgnp2M8FHgvNJe Q1Jqy+IzNcXvAq8q/ZUNkNRoS992nQd8li5RKnEC34JJDbQ0Mv+ky8+VyzMgqZEWn/lsA+4HxoIm 8QxIapDFZzn7iAoPeAYkNUxr0T+9MXCOggGSGuNEfNr8VOAcJxggqREWv+06O2yKpQyQVHuL43Nq 2BTdGCCp1hbHZ80V7kNngKTaGu49Pf0wQFIt5Y8PGCCphqoRHzBAUs1UJz5ggKQaqVZ8wABJNVG9 +IABkmqgmvEBAyRVXHXjAwZIqrBqxwcMkFRR1Y8PGCCpguoRHzBAUsXUJz5ggKQKqVd8wABJFVG/ +IABkiqgnvEBAyQlV9/4gAGSEqt3fMAASUnVPz5ggKSEmhEfMEBSMs2JDxggKZFmxQcMkJRE8+ID BkhKoJnxAQMkBWtufMAASYGaHR8wQFIQ4wMGSApgfBYYIGmojM9iBkgaGuOzlAGShsL4dGOApNIZ n5UYIKlUxmc1BkgqjfFZiwGSSmF8emGApIEzPr0yQNJAGZ/1MEDSwBif9TJA0kBkis+L0QP0zABJ G5YmPps28ZsYIKkx0sTn+HEeMEBSc6SJDxggqUlSxQcMkNQU6eIDBkhqgpTxAQMk1V3a+IABkuos dXzAAEl1lT4+YICkOqpEfMAASXVTmfiAAZLqpFLxAQMk1UXl4gMGSKqDSsYHDJBUdZWND1Q7QBMT /KPoUaRIlY4PVDdAM8f4CwOkJqt8fMAASVVUi/iAAZKqpjbxAQMkVUmt4gMGSKqK2sUHDJBUBbWM DxggKbvaxgcMkJRZreMDBkjKqvbxAQMkZdSI+IABkrJpTHzAAEmZNCo+YICkLBoXHzBAUgaNjA8Y IClaY+MDBkiK1Oj4gAGSojQ+PmCApAjGp8MAScNlfBYxQNLwGJ8lDJA0HManCwMklc/4rMAASeUy PqswQFJ5jM8aDJBUDuPTAwMkDZ7x6ZEBkgbL+KyDAZIGx/iskwGSBsP49MEASRtnfPpkgKSNMT4b YICk/hmfDTJAUn+MzwAYIGn9jM+AGCBpfYzPABkgqXfGZ8AMkNQb41MCAyStzfiUxABJqzM+JTJA 0sqMT8kMkNSd8RkCAyQtZ3yGxABJJzM+Q2SApBOMz5AZIKlgfAIYIMn4hDFAajrjE8gAqcmMTzAD pKYyPgkYIDWR8UnCAKlpjE8iBkhNYnySMUBqCuOTkAFSExifpAyQ6s74JGaAVGfGJzkDpLoyPhVg gFRHxqciDJDqxvhUiAFSnRifijFAqgvjU0HHj/MAGCBVm/GpLgOkSjM+1WaAVFnGp/oMkCrJ+NSD AVLlGJ/6MECqFONTLwZIlWF86scAqRKMTz0ZIKVnfOrLACk141NvBkhpGZ/6M0BKyfg0gwFSOsan OQyQUjE+zWKAlIbxaR4DpBSMTzMZIIUzPs1lgBTK+DSbAVIY4yMDpBDGR2CAFMD4aIEB0lAZHy1m gDQ0xkdLGSANhfFRNwZIpTM+WokBUqmMj1ZjgFQa46O1GCCVwvioFwZIA2d81CsDpIEyPloPA6SB MT5aLwOkgTA+6ocB0oYZH/XLAGlDjI82wgCpb8ZHG2WA1Bfjo0EwQFo346NBMUBaF+OjQTJA6pnx 0aAZIPXE+KgMBkhrMj4qiwHSqoyPymSAtCLjo7IZIHVlfDQMBkjLGB8NiwHSSYyPhskA6ceMj4bN AAkwPophgGR8FMYANZzxUSQD1GDGR9EMUEMZH2VggBrI+CgLA9QwxkeZGKAGMT7KxgA1hPFRRgao AYyPsjJANWd8lJkBqjHjo+wMUE0ZH1WBAaoh46OqMEA1Y3xUJQaoRoyPqsYA1YTxURUZoBowPqoq A1RxxkdVZoAqzPio6gxQRRkf1YEBqiDjo7owQBVjfFQnBqhCjI/qxgBVhPFRHRmgCjA+qisDlJzx UZ0ZoMSMj+rOACVlfNQEBigh46OmMEDJGB81iQFKxPioaQxQEsZHTWSAEjA+aioDFMz4qMkMUCDj o6YzQEGMj2SAQhgfqWCAhsz4SCcYoCEyPtLJDNCQGB9pOQM0BMZH6s4Alcz4SCszQCUyPtLqDFBJ jI+0NgNUAuMj9cYADZjxkXpngAbI+EjrY4AGxPhI62eABsD4SP0xQBtkfKT+GaANMD7SxhigPhkf aeMMUB+MjzQYBmidjI80OAZoHYyPNFgGqEfGRxo8A9QD4yOVwwCtwfhI5TFAqzA+UrkM0AqMj1Q+ A9SF8ZGGwwAtYXyk4TFAixgfabgMUIfxkYbPAGF8pCiND5DxkeI0OkDGR4rV2AAZHyleIwNkfKQc GhegkUX//NiARurXq4NfX3AZ8LroIRrutcDro4dYlxGmJ8b5wMwM317Pbxsrax5V0mHgA9FDqGJO nAGtK0C+7dJi+xnhqeghVEF9vAUzPlpsjnluih5CFbXOABkfLXUrMBs9hCpqHQEyPlrqR8Dno4dQ hc2zc2aGjwGvWO2XGR91c330AKq8M4D/CZy60i8wPurmIeCR6CFUeecAv7/SvzQ+WsnHowdQLVw6 NsZF3f6F8VFXu3bxWeD56DlUfbOz/B4n39AMGB+tYGqKI8Dt0XOoFnYDFy79SeOjFU1McEP0DKqJ Fu9Z/lPSCmZm+A7w1eg5VANt9rHkrZfx0Vq88KxB2L55M+cs/gnjk9S2bZwWPQPAvn18CXg6eg5V 39GjvGrxj41PTu987jluoMsnBMO2fz+zwM3Rc6gWTl/8A+OTzzuB/wKcS5dPCILcguu9tHEnbeFj fHJZCM/C/5f3B86y2DRwZ/QQqryTdmk0PnksDQ/AxcCZMeMs43ovbdRJ1w6NTw7dwkPnx1cNf5yu HiB+q11V27cW/8D4xFspPAuu3LOH8SHOsxrPftSvJyi2a/kx4xNrrfAAnH7gAJcMaZ5VTU7yGeBI 9ByqpLuX/oTxidNLeBZcW/IsPTl4kMPAbdFzqJKWfd8YnxjrCQ/AXorFeRm43kvrdR9LrveA8Ymw 3vAsuK6EWfrxOHB/9BCqjHmK7/dljM9w9RseKB7ot+KWlEPm2Y969THgG93+hfEZno2EB+AlwOWD G6d/e/dyN8WNh9JqDgB/sNK/ND7DsdHwLLiWBOu9HnyQ4+DzvbSqp7Zu5beAmZV+gfEp36DCA3Au m3jjAL7Ohm3dyi3AXPQcSulbwLWHD3NwtV9kfMo1yPAUjue48Hz4MAdbLb4QPYeSafGpnTu5Cpha +5eqLIMPT+HtwOSAv2Zf2m0vPOvHHgE+SJsPTU/zQi+/wfiUo6zwALRopVnv9TWKj97VRCNMU9w8 +AHg3cBX1vfbT4heNPjq4NcflDLDs+CHe/dyUefCb6jRUa6bm+PfRM/RcRs+7LBM88CRsTF+MDvL d4AnOz/XF+MzWMMIz4J/AXxuCK+zllMo7mDdEj0IcAfwL6OHUG982zU4wwwP5Lnj+QXg09FDdFxC 8YxwVYDxGYxhhwfgDeQ5W8yy1cYYcGX0EOqN8dm4iPAUWlwz9Nfs7jGKzcYyuHrfvpP3ClZOxmdj 4sID0ObynTs5JeS1lxgdTXP28xP33ccvRg+htRmf/sWGp7Blepp3B77+j+3ezV3AD6PnAJidTbPx vlZhfPqTITwL3k+C9V4HDnCM4hE7GVy4efPJD6hTPhkOnqrJFB6A84CfjR6i4yagHT0EwNGjOXZ/ 1MqyHEBVkS08hVaaA+1puuzVG+S9u3aluPdIK8h1EOWWMzwAbS4BdkaPATA2lubC86k/+AG/Gj2E VpbvQMopb3gKoyR5vtfsLF8Fvhs9B8DcXJobMdVF1oMpk+zhWZDl/pZ58myz+hrgZ6KHUHfZD6ho VQkPwMv27+dt0UN03AYcjR4CyHQ9TEtU4aCKUqXwLMhyf8vzZFnv1eZS4LToMbRclQ6sYapieADe RPHRewZZLjyPAb8WPYSWq9rBNQxVDc+CLG8zHgEeih6i4xqKi/JKpKoHWFmqHh6A905OsjV6iI4s Zz9nAhdFD6GTVfkgG7Q6hAdgy8GDXBY9BMCePdwJ/Ch6DsALzwlV/UAblLqEZ0GKA62z3usT0XMA 0OYtwCujx9AJdTnYNqJu4QHYTbHZWAZZ1nuNQJr9j0S9Drh+1DE8C7J87P59Wvx19BAdVwCbo4dQ oY4HXa/qHB4gz3ov8jzfaxtwafQQKtT1wFtL3cMDufYz/grwRPQQHVnOCBuvzgffSpoQngVXJVrv dWP0EB2vBV4XPYSacQAu1qTwAPzE/v1p9jPOs97Ls58UmnIQQvPCsyDLthKHaPGX0UN0XLp9Oy+N HqLpmnIgNjU8AD8/McG50UMAmS48jx86xBXRQzRdEw7GJocHgJmZHDcdAt8Evh49RMc1NPh7IoO6 /+E3Pjwdlyfaz/jj0QN0nI3rvULV+aA0PCecOjWVZj/jzwPPRg/RkeWMsJHqemAanuWyXHieoZXm +V5vBV4ePURT1fHgNDzdvQZ4ffQQALS5keLen2gjePYTpm4HqOFZTSvNwsqngHuih+h4HzARPUQT 1ekgNTxrKfYzPj16DEj1fK8dwDuih2iiuhyohqc3Y5Dj/pbZWe4Fnoyeo+PXowdoojocrIZnPUa4 mhz7GbcZTfOx+/nj45wfPUTTVP2ANTzrNc9ZwL7oMQC2n8LtwEz0HADHjrnea9iqfNAanv6lONAO HeIfgM9Fz9Fx6Y4d7IgeokmqeuBWMTzfJct+xvBmkuxnPD6e5sLzxLPP897oIZqkSgfvgqqG5zrg v5NjP2NIcn/LsWN8HXg4eg4A5riWan1fVVrV/qCrHJ5pcu1n/D7gJdFDdGS58PwKirNCDUGVDuKq h6eQZ1uJTPsZfx44FD1ER5ZlKLVXlQO5HuEp5NnPeDTHWy+KHQ5vjR6i463AWdFDNEEVDuY6hQcy 7Wc8x2uBC6LH6Miy3qtFi6ujh2iC7Ad03cKzINN+xlnOfr4H3Bs9BABtrgLGo8eou8wHdV3DA7n2 M37ntm2cFj1ER5aP3XcAvxI9RN1lPbDrHJ5CngvP4889x/uih+i4h2LFewZeeC5ZxoO7/uEpuJ/x cm1IE+ULgD3RQ9RZhm+4xZoSngVZ7m9Js5/xtm18EjgWPUdHluthtZTpIG9aeMD9jJd57jmeoZVm vddlFPdDqQSZDvSmhQfcz7i7PNfDNoPrvcqS6WDPNMtaBhGeQrGfcYb1Xpn2M/474ED0EB3XUvzZ aMCqdMBnMbjwFJ4Cvjygr7VRV5BnP+MsH7ufA1wYPUQdGZ/1GXR4gFT7GW+nuPaWwWcZSbPeK8X+ R3VjfHpXSngg3X7GWe5veZF5boseouNiYFf0EHVjfHpTWng63M+4uxxr4IrjxPVeA2Z81lZ2eAD3 M17BE8B90UN0XLlnj+u9Bsn4rG4o4QH3M15Fluthpx84wCXRQ9SJ8VnZ0MKzYHw8zVuvTPsZ72ck zXqvLLci1ILx6W7o4QE4doyHcT/jpeaY56boITr2Arujh6iLDN9c2YSEZ5EsZz+Z9jO+FZiNHqIj y6eBlWd8ThYdHnA/425+RPHnksFlwKnRQ9SB8TkhQ3jA/YxXkuXC80uAy6OHqAPjU8gSngU34H7G Sz0EPBI9RIfrvQbA+OQLD8Dfk2W9V679jLNcDzuXTbwxeoiqa3p8MoZnQZZtJXYA74geAmDXLj4L PB89BwDH01wPq6wmxydzeCDXfsYp7niemuIIcHv0HB1vByajh6iypsYne3jA/Yy7mphI82fSosVV 0UNUWRPjU4XwAOn2M05x9jMzw3eAr0bPAUCbq/fuZVP0GFXVtPhUJjzQ2c84z3qvd1Hs95NBlgvP Zzz4IL8UPURVNSk+lQrPIlneZmwmyf0t+/bxJeDp6Dk6vPDcp6bEp6rhAfg7RvlG9BAdKe5v2b+f WeDm6Dk63gD8ZPQQVdSE+FQ5PIW5NGc/55BnP+NbyLLeq+Vq937UPT7VD0/hDvczXmYauDN6CADa XL5zJ6dEj1E1dY5PXcID+fYzPjN6iI4s6722TE/z7ughqqau8alTeBZk2s84y/0tDwCPRQ/RkeJ6 WJXUMT51DA+4n/FKspz9/CTws9FDVEnd4lPX8CzIcqCl2c94cpLPAEei5wC88LxOdYpP3cMD7me8 zMGDHIYk18PaXALsjB6jKuoSnyaEB9zPeCVZbkUYJc/1sPTqEJ+mhGeB+xkv9zhwf/QQHVfv28dY 9BBVUPX4NC084H7GK8ly9vOy/ft5W/QQVVDl+DQxPAuyXHhOs5/x3r3cTZ7vhSw3YqZW1fg0OTzg fsbLPPggxyHN9bA3AedFD5FdFePT9PAsyLKtRJr9jLdu5RZgLnqOjmuiB8iuavExPB3uZ7zc4cMc bLX4QvQcHZdPTrI1eojMqhQfw7OI+xl3126nufB8ysGDXBY9RGZViY/h6cL9jLv6GsVH7xmkuBEz qyrEx/CswP2Mu5ofHU0T5d2bNvGG6CGyWhyfLDeuLWZ41pblwnOa/Yzn5vgUSdZ7HT/ux+4rORGf Ef4hcI5uDE8P3M+4qxeAT0cP0XEJcEb0EBmdiM98mgWLYHh6lnA/41dHD9GR5UbMMeDK6CEyai36 p28GzrGY4Vm/TPsZZ7m/5TGKzcYyuIpi0akWORGfdoqFeYanP6n2M4Yc+xmPjqY5+9k1NsbF0UNk s/iC85eJvUhneDYmy4G2BXLsZ7x7N3cxkuP7aXbWC89LLY7Pi8RtymR4Nu4B4NHoITreT4L1XgcO cIx5PhE9R8eFmzfzqughMll6n8//YPjPBjc8g5Pl/pbzgJ+LHqLjJqAdPQTA0aPedLjY0vhMAX8y xNc3PAOUaT/jVp79jJ8G7o4eAoAR3kOxDYnocofzvn38GcWWDWUzPAOWaT/jdptf3ro1x3qvsbEk 18Pm2T46yruix8hi2cd/TzxBG7iH4uaobSW9ruEpz1Pk2Myqdfw4hynWWoVqt3kS+FXgpdGzzM9z JnmewRZqpbVd08CvUzwratAexfCUKdN+xldlWe9FnuthrwF+JnqIDFa78el54DMUd6yeM6DXuwv4 beDZAX09dfci8I7oIYCtU1M8So5V5t8BfgMSbO7eYpx57ooeI9paq9oPAb8FfIiNnak8A3wY+B2K dTcqUWc/4x9Ez9GR5cLz82RZ79XmUuC06DGi9XrL9yPAjaOjTHfes57e4+97CviznTv50JEjfL2v CbVuU1O0ga2QYnvTsymetvFM9CAUn+ZmWP7RoviL/cHoQSL1eyPYecCFwE8Dr+DEhbwXgCeBA+Pj 3H/sGA9TvN/WkG3dyuThw+wnx5qijwO/Hz1Ex03A66OHAL4PvI08e04PXfhdqCpPq8VH2u0U136O TE7yC51bAaK9C/jP0UN0/Dbw19FDRKnCTobqU6L9jLdk2c94zx7upHjwYrw8N2KGMD715n7GSxw4 wDFIst6rzVuAV0aPESXD9QCVb1/0ABS7+X2V4lpHtP8HfID4yw4jFPsw3Rc8RwjPfOrv0yRZ70WO O68Bvk8rzbWWK4DN0UNEMD719wKtNM/3ugTYGT0EAHmuh20DLo0eIoLxaYJ2mrVEmfYz/grlLB/q R5YzwqEyPs2Qaj/jffsSLHEo7j/LEuXXAq+LHmLYvODcEKOjHJ2f51ei5wBOeeIJDlCstYr2XYoL zxliuAn4YvQQw+SZT0NccAFfAH4YPUdHlud7HaLFX0YP0XHp9u3xW34Mk2c+DTE1RZsWW5lPsb3p yycmuGNuLsGDKuc5CFwdPQYwOjPDswxnI78UPPNpkjY3k2Q/45mZHDcdAt+kWDidwTU06JhszH+o ADhInusKl+/axZbA158A3gPcSrHBVwZnA2+JHmJYfNvVNJt4pvNgv2gTL7zAkzD0J+W+nGJB53+i WGSaYp/pRbZDmutQpYq+vVzDN0Kxv8650YNQvN0ZxoLTFnARxfqyt5L7+34euJhiL6xa88ynmVoU B2G0Myhu9psq6eufRrEX+R9QhOcccocHivmeBf42epCyec2nmW6n2Oc5gzLu7r2AFv+RYsHm7wFn lfAaZWrEc92NTzMtPBwgg3fQ+7a8K9q1iy2jo1xJ8d91C23eQ46bB/vx08B49BBlMz7N9fHoATrG KFZ292VignOBfz01xb1zc/xb8nxytRGjFNsT15rxaa5HybKB+QhXs47rj521YZcAH52Z4a8olkic WtJ0MTZxRvQIZavqaakG4wZgb/QQzHMWxYZnqz5TvbMp/q/t38/VwMuGMVqY40xEj1A2z3waLNV+ xitfeB4B3thq8ZHO0zj+GXUPT2EmeoCyGZ8G6+xnfEv0HB1v5uT9jE8ZHeU6inuSPtZ5CkeTbg3J sgi4NNnveVD5zqR4fEuGv4j+N3AbxVnQu4GXxI4TZnbPHi7o/OVQW8ZHAH8MvD16CIpFrxkiGO0h cqy0L5X/owVwffQAHX4/Fr4cPcAw+D9bAH9Dnv2Mm65N8cSR2jM+gmIxY5anOTRaq8WdNGBRKRgf nXA7cDR6iIab27SJP4weYliMjxYcoiH7yCT25zMzfDt6iGExPlosy4XnJnpg717+W/QQw+RH7Vrq FuCC6CEa5vHt23n/oUMJNtQfoibdMareHAN+OXqIBnkY+ODMTLPCA77t0nKfp9hJT+W7kWKHxWei B4ngmY+WmqPFNuZ5Q/QgNfYw8LsU19jmgmcJ4zUfdXMWxfYWnhkPThu4m018jOP8H4p7qxrN/XzU zVMUt/jvC56jDn5Ii5tocwvwNMejx8nDv9m0kizbrFbV14B/vncvF9HmD4GnowfKxrddWkkL+AIN 2Et4gI5QbAlyA/B48CzpecFZK5lnlDHmeXP0IBXwKPBHk5N8+PBhvkhDP71aL898tKIdO9jx7LPc C/XfT7gPs8BfUbw9fSh4lkoyPlrLvwfeGz1EGiM8xTw3AbeSZ//rSjI+WtX4OOcfO8Yno+cINk+L e2lzA3APDb43Z5CMj3rxSeD86CECHKI4w7kR+F7wLLVjfNSLy4H/ED3EED1McS3nczTgETZRjI96 MQHcB2yPHqRER4E7KJY8fCN4lkbwDmf1Yobi7cdvRg9Sgico3lbdRvE2S0PimY969XLgi9Tje6ZN 8ayy6yk2z2/8OqsInvmoV39Psd7rouhB+jbCNPPcCtwETEWP03TGR+txA9WMzwOjo1y/ezd31f0p oFVSh1NoDU+L4q3X2dGD9OAILW6nzY3AY9HDaDnXdmk95hllNPl6r28Bf7RzJx8+cpi78C7ktDzz 0bpMTrL14EHuBk6LnmWRWeBOigvIDwTPoh4ZH/XjfcC/ix6C4qLxzcAngOngWbROxkf9GAH+BLg4 6PX/huIO5C/hOqvKMj7q1zaKj6zPG9LrPUexxuxGihsDVXHGR33bupXJw4f5KHBuiS/zDYprOXfg s+RrxfhoQzobjv1X4MIBftkZ4HPj41x/7BhfH+DXVSLGR4PQAq4D/hWwZQNf53uMcsP2U7i9aY8O biLjo0E6DfggcBWwo8ff0wb2U7y1+krnx2oA46OB27OH8QMHeBMtfoE2rwNeCbyU4gzpMPB9iruO /5bijmk/JpckSZIkSZJq4P8DnGdHIikDsv8AAAAASUVORK5CYII= " id="image6031-2-8-3" x="36.866734" y="81.108826"/>
          <text id="text4495-3-9-9-8-5-2-1-6-7" y="83.916512" x="39.805805" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6-9-2-3-2" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="83.916512" x="39.805805" sodipodi:role="line">+</tspan></text>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26500002;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.26500001, 1.06000005;stroke-dashoffset:0;stroke-opacity:1" d="M 33.152512,87.185894 H 84.346165" id="path12412-4-2" inkscape:connector-curvature="0"/>
      </g>
      <g id="g5430" transform="translate(0,1.8357537)">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.165387" y="95.747292" id="text4495-3-9-9-8"><tspan sodipodi:role="line" x="13.165387" y="95.747292" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-9">Copy selection :</tspan></text>
        <g id="g6768" transform="translate(43.929992,4.3519918)">
          <g style="stroke-width:1.46743357" transform="matrix(0.68078042,0,0,0.68214394,9.055197,33.68939)" id="g6036">
            <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:none;fill-opacity:1;fill-rule:nonzero;stroke:#b6b6b6;stroke-width:0.38825846;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect6017" width="3.4145961" height="3.4145961" x="61.611332" y="80.154388"/>
            <image y="83.497803" x="64.955048" id="image6031" xlink:href="data:image/png;base64,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 " preserveAspectRatio="none" height="2.9565794" width="1.8690273" style="stroke-width:59.61935043"/>
          </g>
          <text id="text4495-3-9-9-8-5" y="91.613205" x="48.013363" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="91.613205" x="48.013363" sodipodi:role="line">+</tspan></text>
          <g transform="matrix(0.40999828,0,0,0.40999828,-1.5292901,56.420821)" id="g4524-21-5-5-9-8-1-7">
            <g id="g5384-0">
              <rect ry="2.703063" y="76.659882" x="79.086388" height="12.670878" width="38.993198" id="rect4515-3-7-5-9-1-6-9" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
              <g transform="translate(0.52388907)" id="g5377-3">
                <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="92.642342" y="86.966652" id="text4519-0-3-3-4-6-4-6"><tspan sodipodi:role="line" id="tspan4517-9-3-8-9-3-8-0" x="92.642342" y="86.966652" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px">Shift</tspan></text>
                <path inkscape:connector-curvature="0" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:none;fill-opacity:0.74806201;fill-rule:nonzero;stroke:#3f3f3f;stroke-width:0.60975862;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" d="m 86.368839,79.319926 -3.623244,3.619194 h 1.756855 v 3.857641 h 3.732779 V 82.93912 h 1.756847 z" id="rect5304-5-6"/>
              </g>
            </g>
          </g>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26500002;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.26500003, 1.06000011;stroke-dashoffset:0;stroke-opacity:1" d="m 40.096323,94.800756 h 32.50603" id="path12412-4-5" inkscape:connector-curvature="0"/>
      </g>
      <g id="g5443" transform="translate(0,0.76586971)">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.079259" y="103.41383" id="text4495-3-9-9-87"><tspan sodipodi:role="line" x="13.079259" y="103.41383" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-05">Delete item :</tspan></text>
        <g id="g6757" transform="translate(43.636121,5.1963191)">
          <g transform="matrix(0.40999828,0,0,0.40999828,0.29778407,98.761554)" id="g4524-21-5-1">
            <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-3-7-1" width="21.336126" height="12.670878" x="111.05278" y="-10.846996" ry="2.703063"/>
            <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="114.12428" y="-0.59448367" id="text4519-0-3-0"><tspan sodipodi:role="line" id="tspan4517-9-3-3" x="114.12428" y="-0.59448367" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px">Del</tspan></text>
          </g>
          <image style="stroke-width:36.58646011" width="2.0734308" height="3.2864909" preserveAspectRatio="none" xlink:href="data:image/png;base64,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 " id="image6031-2-8-3-5" x="39.684982" y="95.268578"/>
          <text id="text4495-3-9-9-8-5-2-1-6-7-3" y="98.076263" x="42.624054" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6-9-2-3-2-7" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="98.076263" x="42.624054" sodipodi:role="line">+</tspan></text>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.26499999, 1.05999998;stroke-dashoffset:0;stroke-opacity:1" d="m 34.917191,102.10814 h 46.87675" id="path12412-4-1" inkscape:connector-curvature="0"/>
      </g>
      <g id="g5464" transform="translate(0,0.05514195)">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.079259" y="110.36207" id="text4495-3-9-9-8-2"><tspan sodipodi:role="line" x="13.079259" y="110.36207" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-9-8">Delete selection :</tspan></text>
        <g id="g6748" transform="translate(27.808317,4.4288963)">
          <g transform="matrix(0.40999828,0,0,0.40999828,14.592388,70.599542)" id="g4524-21-5-5-9-8-1-0">
            <g id="g5384-2">
              <rect ry="2.703063" y="76.659882" x="79.086388" height="12.670878" width="38.993198" id="rect4515-3-7-5-9-1-6-3" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
              <g transform="translate(0.52388907)" id="g5377-7">
                <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="92.642342" y="86.966652" id="text4519-0-3-3-4-6-4-5"><tspan sodipodi:role="line" id="tspan4517-9-3-8-9-3-8-9" x="92.642342" y="86.966652" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px">Shift</tspan></text>
                <path inkscape:connector-curvature="0" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:none;fill-opacity:0.74806201;fill-rule:nonzero;stroke:#3f3f3f;stroke-width:0.60975862;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" d="m 86.368839,79.319926 -3.623244,3.619194 h 1.756855 v 3.857641 h 3.732779 V 82.93912 h 1.756847 z" id="rect5304-5-2"/>
              </g>
            </g>
          </g>
          <g transform="matrix(0.40999828,0,0,0.40999828,-5.6430215,70.599542)" id="g4524-21-5-5-9-8-3">
            <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-3-7-5-9-1-4" width="26.102278" height="12.670878" x="91.977303" y="76.659882" ry="2.703063"/>
            <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="96.876297" y="86.912392" id="text4519-0-3-3-4-6-6"><tspan sodipodi:role="line" id="tspan4517-9-3-8-9-3-1" x="96.876297" y="86.912392" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px">Ctrl</tspan></text>
          </g>
          <g style="stroke-width:1.46743357" transform="matrix(0.68078043,0,0,0.68214393,25.176872,47.868112)" id="g6036-1">
            <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:none;fill-opacity:1;fill-rule:nonzero;stroke:#b6b6b6;stroke-width:0.38825846;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect6017-7" width="3.4145961" height="3.4145961" x="61.611332" y="80.154388"/>
            <image y="83.497803" x="64.955048" id="image6031-2" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAR8AAAHGCAYAAABNZo+qAAAABHNCSVQICAgIfAhkiAAAHUFJREFU eJzt3W2QZXV94PFv3+7pHmdgZgTGzgAqssQxE7GIY6IhKhM0IUpEUcKTxKyVqk22UrVPSembrX2R 2qp9yO7WmuzmaXdryyiPIqgRDSJxEIysATYlOgWIyhqwGVsJA8wwPdN9e1+c205P9+3u27fvub/f Oef7ecUMM31/DH2+c+655/8/IEmS1BQjffye8bExfn52lguB84FXANuAFvAC8BRwYHSU+087jXum p3lhcONKqov1xGcS+MfAFcD2Hn/Pi8CngD+niJIkATC61i/Ys4fx6Wn+KfAR4OeAzev4+psozo6u pcXYnp/i/05PM9ffqJLqZK0zn7OBPwZeM6DXexj4HeDpAX09SRW1Wnz2AP8LOH3Ar/n0xAQfnJnh 2wP+upIqpGt8Nm/mVUePcjOwo6RXnWae3wAeL+XrS0qvtfQndu1iy9Gj/CllhQdgnp2M8FHgvNJe Q1Jqy+IzNcXvAq8q/ZUNkNRoS992nQd8li5RKnEC34JJDbQ0Mv+ky8+VyzMgqZEWn/lsA+4HxoIm 8QxIapDFZzn7iAoPeAYkNUxr0T+9MXCOggGSGuNEfNr8VOAcJxggqREWv+06O2yKpQyQVHuL43Nq 2BTdGCCp1hbHZ80V7kNngKTaGu49Pf0wQFIt5Y8PGCCphqoRHzBAUs1UJz5ggKQaqVZ8wABJNVG9 +IABkmqgmvEBAyRVXHXjAwZIqrBqxwcMkFRR1Y8PGCCpguoRHzBAUsXUJz5ggKQKqVd8wABJFVG/ +IABkiqgnvEBAyQlV9/4gAGSEqt3fMAASUnVPz5ggKSEmhEfMEBSMs2JDxggKZFmxQcMkJRE8+ID BkhKoJnxAQMkBWtufMAASYGaHR8wQFIQ4wMGSApgfBYYIGmojM9iBkgaGuOzlAGShsL4dGOApNIZ n5UYIKlUxmc1BkgqjfFZiwGSSmF8emGApIEzPr0yQNJAGZ/1MEDSwBif9TJA0kBkis+L0QP0zABJ G5YmPps28ZsYIKkx0sTn+HEeMEBSc6SJDxggqUlSxQcMkNQU6eIDBkhqgpTxAQMk1V3a+IABkuos dXzAAEl1lT4+YICkOqpEfMAASXVTmfiAAZLqpFLxAQMk1UXl4gMGSKqDSsYHDJBUdZWND1Q7QBMT /KPoUaRIlY4PVDdAM8f4CwOkJqt8fMAASVVUi/iAAZKqpjbxAQMkVUmt4gMGSKqK2sUHDJBUBbWM DxggKbvaxgcMkJRZreMDBkjKqvbxAQMkZdSI+IABkrJpTHzAAEmZNCo+YICkLBoXHzBAUgaNjA8Y IClaY+MDBkiK1Oj4gAGSojQ+PmCApAjGp8MAScNlfBYxQNLwGJ8lDJA0HManCwMklc/4rMAASeUy PqswQFJ5jM8aDJBUDuPTAwMkDZ7x6ZEBkgbL+KyDAZIGx/iskwGSBsP49MEASRtnfPpkgKSNMT4b YICk/hmfDTJAUn+MzwAYIGn9jM+AGCBpfYzPABkgqXfGZ8AMkNQb41MCAyStzfiUxABJqzM+JTJA 0sqMT8kMkNSd8RkCAyQtZ3yGxABJJzM+Q2SApBOMz5AZIKlgfAIYIMn4hDFAajrjE8gAqcmMTzAD pKYyPgkYIDWR8UnCAKlpjE8iBkhNYnySMUBqCuOTkAFSExifpAyQ6s74JGaAVGfGJzkDpLoyPhVg gFRHxqciDJDqxvhUiAFSnRifijFAqgvjU0HHj/MAGCBVm/GpLgOkSjM+1WaAVFnGp/oMkCrJ+NSD AVLlGJ/6MECqFONTLwZIlWF86scAqRKMTz0ZIKVnfOrLACk141NvBkhpGZ/6M0BKyfg0gwFSOsan OQyQUjE+zWKAlIbxaR4DpBSMTzMZIIUzPs1lgBTK+DSbAVIY4yMDpBDGR2CAFMD4aIEB0lAZHy1m gDQ0xkdLGSANhfFRNwZIpTM+WokBUqmMj1ZjgFQa46O1GCCVwvioFwZIA2d81CsDpIEyPloPA6SB MT5aLwOkgTA+6ocB0oYZH/XLAGlDjI82wgCpb8ZHG2WA1Bfjo0EwQFo346NBMUBaF+OjQTJA6pnx 0aAZIPXE+KgMBkhrMj4qiwHSqoyPymSAtCLjo7IZIHVlfDQMBkjLGB8NiwHSSYyPhskA6ceMj4bN AAkwPophgGR8FMYANZzxUSQD1GDGR9EMUEMZH2VggBrI+CgLA9QwxkeZGKAGMT7KxgA1hPFRRgao AYyPsjJANWd8lJkBqjHjo+wMUE0ZH1WBAaoh46OqMEA1Y3xUJQaoRoyPqsYA1YTxURUZoBowPqoq A1RxxkdVZoAqzPio6gxQRRkf1YEBqiDjo7owQBVjfFQnBqhCjI/qxgBVhPFRHRmgCjA+qisDlJzx UZ0ZoMSMj+rOACVlfNQEBigh46OmMEDJGB81iQFKxPioaQxQEsZHTWSAEjA+aioDFMz4qMkMUCDj o6YzQEGMj2SAQhgfqWCAhsz4SCcYoCEyPtLJDNCQGB9pOQM0BMZH6s4Alcz4SCszQCUyPtLqDFBJ jI+0NgNUAuMj9cYADZjxkXpngAbI+EjrY4AGxPhI62eABsD4SP0xQBtkfKT+GaANMD7SxhigPhkf aeMMUB+MjzQYBmidjI80OAZoHYyPNFgGqEfGRxo8A9QD4yOVwwCtwfhI5TFAqzA+UrkM0AqMj1Q+ A9SF8ZGGwwAtYXyk4TFAixgfabgMUIfxkYbPAGF8pCiND5DxkeI0OkDGR4rV2AAZHyleIwNkfKQc GhegkUX//NiARurXq4NfX3AZ8LroIRrutcDro4dYlxGmJ8b5wMwM317Pbxsrax5V0mHgA9FDqGJO nAGtK0C+7dJi+xnhqeghVEF9vAUzPlpsjnluih5CFbXOABkfLXUrMBs9hCpqHQEyPlrqR8Dno4dQ hc2zc2aGjwGvWO2XGR91c330AKq8M4D/CZy60i8wPurmIeCR6CFUeecAv7/SvzQ+WsnHowdQLVw6 NsZF3f6F8VFXu3bxWeD56DlUfbOz/B4n39AMGB+tYGqKI8Dt0XOoFnYDFy79SeOjFU1McEP0DKqJ Fu9Z/lPSCmZm+A7w1eg5VANt9rHkrZfx0Vq88KxB2L55M+cs/gnjk9S2bZwWPQPAvn18CXg6eg5V 39GjvGrxj41PTu987jluoMsnBMO2fz+zwM3Rc6gWTl/8A+OTzzuB/wKcS5dPCILcguu9tHEnbeFj fHJZCM/C/5f3B86y2DRwZ/QQqryTdmk0PnksDQ/AxcCZMeMs43ovbdRJ1w6NTw7dwkPnx1cNf5yu HiB+q11V27cW/8D4xFspPAuu3LOH8SHOsxrPftSvJyi2a/kx4xNrrfAAnH7gAJcMaZ5VTU7yGeBI 9ByqpLuX/oTxidNLeBZcW/IsPTl4kMPAbdFzqJKWfd8YnxjrCQ/AXorFeRm43kvrdR9LrveA8Ymw 3vAsuK6EWfrxOHB/9BCqjHmK7/dljM9w9RseKB7ot+KWlEPm2Y969THgG93+hfEZno2EB+AlwOWD G6d/e/dyN8WNh9JqDgB/sNK/ND7DsdHwLLiWBOu9HnyQ4+DzvbSqp7Zu5beAmZV+gfEp36DCA3Au m3jjAL7Ohm3dyi3AXPQcSulbwLWHD3NwtV9kfMo1yPAUjue48Hz4MAdbLb4QPYeSafGpnTu5Cpha +5eqLIMPT+HtwOSAv2Zf2m0vPOvHHgE+SJsPTU/zQi+/wfiUo6zwALRopVnv9TWKj97VRCNMU9w8 +AHg3cBX1vfbT4heNPjq4NcflDLDs+CHe/dyUefCb6jRUa6bm+PfRM/RcRs+7LBM88CRsTF+MDvL d4AnOz/XF+MzWMMIz4J/AXxuCK+zllMo7mDdEj0IcAfwL6OHUG982zU4wwwP5Lnj+QXg09FDdFxC 8YxwVYDxGYxhhwfgDeQ5W8yy1cYYcGX0EOqN8dm4iPAUWlwz9Nfs7jGKzcYyuHrfvpP3ClZOxmdj 4sID0ObynTs5JeS1lxgdTXP28xP33ccvRg+htRmf/sWGp7Blepp3B77+j+3ezV3AD6PnAJidTbPx vlZhfPqTITwL3k+C9V4HDnCM4hE7GVy4efPJD6hTPhkOnqrJFB6A84CfjR6i4yagHT0EwNGjOXZ/ 1MqyHEBVkS08hVaaA+1puuzVG+S9u3aluPdIK8h1EOWWMzwAbS4BdkaPATA2lubC86k/+AG/Gj2E VpbvQMopb3gKoyR5vtfsLF8Fvhs9B8DcXJobMdVF1oMpk+zhWZDl/pZ58myz+hrgZ6KHUHfZD6ho VQkPwMv27+dt0UN03AYcjR4CyHQ9TEtU4aCKUqXwLMhyf8vzZFnv1eZS4LToMbRclQ6sYapieADe RPHRewZZLjyPAb8WPYSWq9rBNQxVDc+CLG8zHgEeih6i4xqKi/JKpKoHWFmqHh6A905OsjV6iI4s Zz9nAhdFD6GTVfkgG7Q6hAdgy8GDXBY9BMCePdwJ/Ch6DsALzwlV/UAblLqEZ0GKA62z3usT0XMA 0OYtwCujx9AJdTnYNqJu4QHYTbHZWAZZ1nuNQJr9j0S9Drh+1DE8C7J87P59Wvx19BAdVwCbo4dQ oY4HXa/qHB4gz3ov8jzfaxtwafQQKtT1wFtL3cMDufYz/grwRPQQHVnOCBuvzgffSpoQngVXJVrv dWP0EB2vBV4XPYSacQAu1qTwAPzE/v1p9jPOs97Ls58UmnIQQvPCsyDLthKHaPGX0UN0XLp9Oy+N HqLpmnIgNjU8AD8/McG50UMAmS48jx86xBXRQzRdEw7GJocHgJmZHDcdAt8Evh49RMc1NPh7IoO6 /+E3Pjwdlyfaz/jj0QN0nI3rvULV+aA0PCecOjWVZj/jzwPPRg/RkeWMsJHqemAanuWyXHieoZXm +V5vBV4ePURT1fHgNDzdvQZ4ffQQALS5keLen2gjePYTpm4HqOFZTSvNwsqngHuih+h4HzARPUQT 1ekgNTxrKfYzPj16DEj1fK8dwDuih2iiuhyohqc3Y5Dj/pbZWe4Fnoyeo+PXowdoojocrIZnPUa4 mhz7GbcZTfOx+/nj45wfPUTTVP2ANTzrNc9ZwL7oMQC2n8LtwEz0HADHjrnea9iqfNAanv6lONAO HeIfgM9Fz9Fx6Y4d7IgeokmqeuBWMTzfJct+xvBmkuxnPD6e5sLzxLPP897oIZqkSgfvgqqG5zrg v5NjP2NIcn/LsWN8HXg4eg4A5riWan1fVVrV/qCrHJ5pcu1n/D7gJdFDdGS58PwKirNCDUGVDuKq h6eQZ1uJTPsZfx44FD1ER5ZlKLVXlQO5HuEp5NnPeDTHWy+KHQ5vjR6i463AWdFDNEEVDuY6hQcy 7Wc8x2uBC6LH6Miy3qtFi6ujh2iC7Ad03cKzINN+xlnOfr4H3Bs9BABtrgLGo8eou8wHdV3DA7n2 M37ntm2cFj1ER5aP3XcAvxI9RN1lPbDrHJ5CngvP4889x/uih+i4h2LFewZeeC5ZxoO7/uEpuJ/x cm1IE+ULgD3RQ9RZhm+4xZoSngVZ7m9Js5/xtm18EjgWPUdHluthtZTpIG9aeMD9jJd57jmeoZVm vddlFPdDqQSZDvSmhQfcz7i7PNfDNoPrvcqS6WDPNMtaBhGeQrGfcYb1Xpn2M/474ED0EB3XUvzZ aMCqdMBnMbjwFJ4Cvjygr7VRV5BnP+MsH7ufA1wYPUQdGZ/1GXR4gFT7GW+nuPaWwWcZSbPeK8X+ R3VjfHpXSngg3X7GWe5veZF5boseouNiYFf0EHVjfHpTWng63M+4uxxr4IrjxPVeA2Z81lZ2eAD3 M17BE8B90UN0XLlnj+u9Bsn4rG4o4QH3M15Fluthpx84wCXRQ9SJ8VnZ0MKzYHw8zVuvTPsZ72ck zXqvLLci1ILx6W7o4QE4doyHcT/jpeaY56boITr2Arujh6iLDN9c2YSEZ5EsZz+Z9jO+FZiNHqIj y6eBlWd8ThYdHnA/425+RPHnksFlwKnRQ9SB8TkhQ3jA/YxXkuXC80uAy6OHqAPjU8gSngU34H7G Sz0EPBI9RIfrvQbA+OQLD8Dfk2W9V679jLNcDzuXTbwxeoiqa3p8MoZnQZZtJXYA74geAmDXLj4L PB89BwDH01wPq6wmxydzeCDXfsYp7niemuIIcHv0HB1vByajh6iypsYne3jA/Yy7mphI82fSosVV 0UNUWRPjU4XwAOn2M05x9jMzw3eAr0bPAUCbq/fuZVP0GFXVtPhUJjzQ2c84z3qvd1Hs95NBlgvP Zzz4IL8UPURVNSk+lQrPIlneZmwmyf0t+/bxJeDp6Dk6vPDcp6bEp6rhAfg7RvlG9BAdKe5v2b+f WeDm6Dk63gD8ZPQQVdSE+FQ5PIW5NGc/55BnP+NbyLLeq+Vq937UPT7VD0/hDvczXmYauDN6CADa XL5zJ6dEj1E1dY5PXcID+fYzPjN6iI4s6722TE/z7ughqqau8alTeBZk2s84y/0tDwCPRQ/RkeJ6 WJXUMT51DA+4n/FKspz9/CTws9FDVEnd4lPX8CzIcqCl2c94cpLPAEei5wC88LxOdYpP3cMD7me8 zMGDHIYk18PaXALsjB6jKuoSnyaEB9zPeCVZbkUYJc/1sPTqEJ+mhGeB+xkv9zhwf/QQHVfv28dY 9BBVUPX4NC084H7GK8ly9vOy/ft5W/QQVVDl+DQxPAuyXHhOs5/x3r3cTZ7vhSw3YqZW1fg0OTzg fsbLPPggxyHN9bA3AedFD5FdFePT9PAsyLKtRJr9jLdu5RZgLnqOjmuiB8iuavExPB3uZ7zc4cMc bLX4QvQcHZdPTrI1eojMqhQfw7OI+xl3126nufB8ysGDXBY9RGZViY/h6cL9jLv6GsVH7xmkuBEz qyrEx/CswP2Mu5ofHU0T5d2bNvGG6CGyWhyfLDeuLWZ41pblwnOa/Yzn5vgUSdZ7HT/ux+4rORGf Ef4hcI5uDE8P3M+4qxeAT0cP0XEJcEb0EBmdiM98mgWLYHh6lnA/41dHD9GR5UbMMeDK6CEyai36 p28GzrGY4Vm/TPsZZ7m/5TGKzcYyuIpi0akWORGfdoqFeYanP6n2M4Yc+xmPjqY5+9k1NsbF0UNk s/iC85eJvUhneDYmy4G2BXLsZ7x7N3cxkuP7aXbWC89LLY7Pi8RtymR4Nu4B4NHoITreT4L1XgcO cIx5PhE9R8eFmzfzqughMll6n8//YPjPBjc8g5Pl/pbzgJ+LHqLjJqAdPQTA0aPedLjY0vhMAX8y xNc3PAOUaT/jVp79jJ8G7o4eAoAR3kOxDYnocofzvn38GcWWDWUzPAOWaT/jdptf3ro1x3qvsbEk 18Pm2T46yruix8hi2cd/TzxBG7iH4uaobSW9ruEpz1Pk2Myqdfw4hynWWoVqt3kS+FXgpdGzzM9z JnmewRZqpbVd08CvUzwratAexfCUKdN+xldlWe9FnuthrwF+JnqIDFa78el54DMUd6yeM6DXuwv4 beDZAX09dfci8I7oIYCtU1M8So5V5t8BfgMSbO7eYpx57ooeI9paq9oPAb8FfIiNnak8A3wY+B2K dTcqUWc/4x9Ez9GR5cLz82RZ79XmUuC06DGi9XrL9yPAjaOjTHfes57e4+97CviznTv50JEjfL2v CbVuU1O0ga2QYnvTsymetvFM9CAUn+ZmWP7RoviL/cHoQSL1eyPYecCFwE8Dr+DEhbwXgCeBA+Pj 3H/sGA9TvN/WkG3dyuThw+wnx5qijwO/Hz1Ex03A66OHAL4PvI08e04PXfhdqCpPq8VH2u0U136O TE7yC51bAaK9C/jP0UN0/Dbw19FDRKnCTobqU6L9jLdk2c94zx7upHjwYrw8N2KGMD715n7GSxw4 wDFIst6rzVuAV0aPESXD9QCVb1/0ABS7+X2V4lpHtP8HfID4yw4jFPsw3Rc8RwjPfOrv0yRZ70WO O68Bvk8rzbWWK4DN0UNEMD719wKtNM/3ugTYGT0EAHmuh20DLo0eIoLxaYJ2mrVEmfYz/grlLB/q R5YzwqEyPs2Qaj/jffsSLHEo7j/LEuXXAq+LHmLYvODcEKOjHJ2f51ei5wBOeeIJDlCstYr2XYoL zxliuAn4YvQQw+SZT0NccAFfAH4YPUdHlud7HaLFX0YP0XHp9u3xW34Mk2c+DTE1RZsWW5lPsb3p yycmuGNuLsGDKuc5CFwdPQYwOjPDswxnI78UPPNpkjY3k2Q/45mZHDcdAt+kWDidwTU06JhszH+o ADhInusKl+/axZbA158A3gPcSrHBVwZnA2+JHmJYfNvVNJt4pvNgv2gTL7zAkzD0J+W+nGJB53+i WGSaYp/pRbZDmutQpYq+vVzDN0Kxv8650YNQvN0ZxoLTFnARxfqyt5L7+34euJhiL6xa88ynmVoU B2G0Myhu9psq6eufRrEX+R9QhOcccocHivmeBf42epCyec2nmW6n2Oc5gzLu7r2AFv+RYsHm7wFn lfAaZWrEc92NTzMtPBwgg3fQ+7a8K9q1iy2jo1xJ8d91C23eQ46bB/vx08B49BBlMz7N9fHoATrG KFZ292VignOBfz01xb1zc/xb8nxytRGjFNsT15rxaa5HybKB+QhXs47rj521YZcAH52Z4a8olkic WtJ0MTZxRvQIZavqaakG4wZgb/QQzHMWxYZnqz5TvbMp/q/t38/VwMuGMVqY40xEj1A2z3waLNV+ xitfeB4B3thq8ZHO0zj+GXUPT2EmeoCyGZ8G6+xnfEv0HB1v5uT9jE8ZHeU6inuSPtZ5CkeTbg3J sgi4NNnveVD5zqR4fEuGv4j+N3AbxVnQu4GXxI4TZnbPHi7o/OVQW8ZHAH8MvD16CIpFrxkiGO0h cqy0L5X/owVwffQAHX4/Fr4cPcAw+D9bAH9Dnv2Mm65N8cSR2jM+gmIxY5anOTRaq8WdNGBRKRgf nXA7cDR6iIab27SJP4weYliMjxYcoiH7yCT25zMzfDt6iGExPlosy4XnJnpg717+W/QQw+RH7Vrq FuCC6CEa5vHt23n/oUMJNtQfoibdMareHAN+OXqIBnkY+ODMTLPCA77t0nKfp9hJT+W7kWKHxWei B4ngmY+WmqPFNuZ5Q/QgNfYw8LsU19jmgmcJ4zUfdXMWxfYWnhkPThu4m018jOP8H4p7qxrN/XzU zVMUt/jvC56jDn5Ii5tocwvwNMejx8nDv9m0kizbrFbV14B/vncvF9HmD4GnowfKxrddWkkL+AIN 2Et4gI5QbAlyA/B48CzpecFZK5lnlDHmeXP0IBXwKPBHk5N8+PBhvkhDP71aL898tKIdO9jx7LPc C/XfT7gPs8BfUbw9fSh4lkoyPlrLvwfeGz1EGiM8xTw3AbeSZ//rSjI+WtX4OOcfO8Yno+cINk+L e2lzA3APDb43Z5CMj3rxSeD86CECHKI4w7kR+F7wLLVjfNSLy4H/ED3EED1McS3nczTgETZRjI96 MQHcB2yPHqRER4E7KJY8fCN4lkbwDmf1Yobi7cdvRg9Sgico3lbdRvE2S0PimY969XLgi9Tje6ZN 8ayy6yk2z2/8OqsInvmoV39Psd7rouhB+jbCNPPcCtwETEWP03TGR+txA9WMzwOjo1y/ezd31f0p oFVSh1NoDU+L4q3X2dGD9OAILW6nzY3AY9HDaDnXdmk95hllNPl6r28Bf7RzJx8+cpi78C7ktDzz 0bpMTrL14EHuBk6LnmWRWeBOigvIDwTPoh4ZH/XjfcC/ix6C4qLxzcAngOngWbROxkf9GAH+BLg4 6PX/huIO5C/hOqvKMj7q1zaKj6zPG9LrPUexxuxGihsDVXHGR33bupXJw4f5KHBuiS/zDYprOXfg s+RrxfhoQzobjv1X4MIBftkZ4HPj41x/7BhfH+DXVSLGR4PQAq4D/hWwZQNf53uMcsP2U7i9aY8O biLjo0E6DfggcBWwo8ff0wb2U7y1+krnx2oA46OB27OH8QMHeBMtfoE2rwNeCbyU4gzpMPB9iruO /5bijmk/JpckSZIkSZJq4P8DnGdHIikDsv8AAAAASUVORK5CYII= " preserveAspectRatio="none" height="2.9565794" width="1.8690273" style="stroke-width:59.61935043"/>
          </g>
          <text id="text4495-3-9-9-8-5-2" y="105.79192" x="64.13504" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6-9" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="105.79192" x="64.13504" sodipodi:role="line">+</tspan></text>
          <text id="text4495-3-9-9-8-5-2-1" y="105.79192" x="43.899628" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6-9-2" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="105.79192" x="43.899628" sodipodi:role="line">+</tspan></text>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.26499999, 1.06;stroke-dashoffset:0;stroke-opacity:1" d="M 41.568282,109.05638 H 57.246825" id="path12412-4-6" inkscape:connector-curvature="0"/>
      </g>
      <g id="g5477" transform="translate(0,-0.60390675)">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.080981" y="117.20695" id="text4495-3-9-9-0"><tspan sodipodi:role="line" x="13.080981" y="117.20695" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-04">Rotate item :</tspan></text>
        <g id="g6731" transform="translate(54.135147,4.4456674)">
          <g transform="matrix(0.40999828,0,0,0.40999828,-0.02897908,77.941441)" id="g4524-21-5-54">
            <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-3-7-2" width="12.670878" height="12.670878" x="94.907524" y="75.532768" ry="2.703063"/>
            <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="97.6437" y="85.630249" id="text4519-0-3-4"><tspan sodipodi:role="line" id="tspan4517-9-3-9" x="97.6437" y="85.630249" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px">R</tspan></text>
          </g>
          <image style="stroke-width:36.58646011" width="2.0734308" height="3.2864909" preserveAspectRatio="none" xlink:href="data:image/png;base64,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 " id="image6031-2-8-3-5-6" x="32.825825" y="109.86402"/>
          <text id="text4495-3-9-9-8-5-2-1-6-7-3-8" y="112.67171" x="35.764896" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6-9-2-3-2-7-1" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="112.67171" x="35.764896" sodipodi:role="line">+</tspan></text>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.26499999, 1.06000001;stroke-dashoffset:0;stroke-opacity:1" d="M 35.002887,115.95293 H 84.423262" id="path12412-4-13" inkscape:connector-curvature="0"/>
      </g>
      <g id="g5496" transform="translate(0,-1.211279)">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.079259" y="124.05183" id="text4495-3-9-9-0-3"><tspan sodipodi:role="line" x="13.079259" y="124.05183" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-04-6">Mirror item :</tspan></text>
        <g id="g6722" transform="translate(57.602123,-2.8691915)">
          <g transform="matrix(0.40999828,0,0,0.40999828,-3.4959553,92.101179)" id="g4524-21-5-54-4">
            <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-3-7-2-0" width="12.670878" height="12.670878" x="94.907524" y="75.532768" ry="2.703063"/>
            <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="98.075195" y="85.630249" id="text4519-0-3-4-3"><tspan sodipodi:role="line" id="tspan4517-9-3-9-5" x="98.075195" y="85.630249" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px">Y</tspan></text>
          </g>
          <image style="stroke-width:36.58646011" width="2.0734308" height="3.2864909" preserveAspectRatio="none" xlink:href="data:image/png;base64,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 " id="image6031-2-8-3-5-6-8" x="20.31517" y="124.02376"/>
          <text id="text4495-3-9-9-8-5-2-1-6-7-3-8-5" y="126.83144" x="23.254242" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6-9-2-3-2-7-1-0" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="126.83144" x="23.254242" sodipodi:role="line">+</tspan></text>
          <g transform="matrix(0.40999828,0,0,0.40999828,-12.539634,92.101179)" id="g4524-21-5-54-4-2">
            <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-3-7-2-0-4" width="12.670878" height="12.670878" x="94.907524" y="75.532768" ry="2.703063"/>
            <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="97.917587" y="85.630249" id="text4519-0-3-4-3-9"><tspan sodipodi:role="line" id="tspan4517-9-3-9-5-0" x="97.917587" y="85.630249" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px">X</tspan></text>
          </g>
          <text id="text4495-3-9-9-8-5-2-1-6-7-3-8-5-1" y="126.81336" x="32.800903" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6-9-2-3-2-7-1-0-2" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="126.81336" x="32.800903" sodipodi:role="line">/</tspan></text>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.265, 1.06000003;stroke-dashoffset:0;stroke-opacity:1" d="M 34.0006,122.79781 H 75.788191" id="path12412-4-7" inkscape:connector-curvature="0"/>
      </g>
      <g id="g5505" transform="translate(0,-1.8703306)">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.322139" y="131.00006" id="text4495-3-9-9-0-3-0"><tspan sodipodi:role="line" x="13.322139" y="131.00006" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-04-6-0">Add wires :</tspan></text>
        <g id="g4524-21-5-54-4-2-6" transform="matrix(0.40999828,0,0,0.40999828,54.106168,96.128546)">
          <rect ry="2.703063" y="75.532768" x="94.907524" height="12.670878" width="12.670878" id="rect4515-3-7-2-0-4-3" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
          <text id="text4519-0-3-4-3-9-9" y="85.630249" x="96.504234" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px" y="85.630249" x="96.504234" id="tspan4517-9-3-9-5-0-0" sodipodi:role="line">W</tspan></text>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.26500001, 1.06000004;stroke-dashoffset:0;stroke-opacity:1" d="m 32.535723,129.69437 h 58.20965" id="path12412-4-71" inkscape:connector-curvature="0"/>
      </g>
      <g id="g5514" transform="translate(0,-2.9221278)">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.079259" y="137.9483" id="text4495-3-9-9-0-3-0-8"><tspan sodipodi:role="line" x="13.079259" y="137.9483" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-04-6-0-3">Edit properties :</tspan></text>
        <g id="g4524-21-5-54-4-2-6-8" transform="matrix(0.40999828,0,0,0.40999828,54.711065,103.41785)">
          <rect ry="2.703063" y="75.532768" x="93.432159" height="12.670878" width="12.670878" id="rect4515-3-7-2-0-4-3-7" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
          <text id="text4519-0-3-4-3-9-9-3" y="85.630249" x="96.504234" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px" y="85.630249" x="96.504234" id="tspan4517-9-3-9-5-0-0-1" sodipodi:role="line">E</tspan></text>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.265, 1.06000002;stroke-dashoffset:0;stroke-opacity:1" d="M 39.551721,136.98368 H 90.745373" id="path12412-4-21" inkscape:connector-curvature="0"/>
      </g>
      <g id="g5523" transform="translate(0,1.904446)">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.322139" y="145.57866" id="text4495-3-9-9-0-3-0-8-1"><tspan sodipodi:role="line" x="13.322139" y="145.57866" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-04-6-0-3-8">Add power symbols :</tspan></text>
        <g id="g4524-21-5-54-4-2-6-8-0" transform="matrix(0.40999828,0,0,0.40999828,54.581821,111.06629)">
          <rect ry="2.703063" y="75.532768" x="93.747391" height="12.670878" width="12.670878" id="rect4515-3-7-2-0-4-3-7-1" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
          <text id="text4519-0-3-4-3-9-9-3-7" y="85.630249" x="96.504234" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px" y="85.630249" x="96.504234" id="tspan4517-9-3-9-5-0-0-1-9" sodipodi:role="line">P</tspan></text>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.265, 1.06000003;stroke-dashoffset:0;stroke-opacity:1" d="M 47.503429,144.63212 H 90.216206" id="path12412-4-0" inkscape:connector-curvature="0"/>
      </g>
      <g id="g5532" transform="translate(0,0.83454903)">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.322139" y="153.24521" id="text4495-3-9-9-0-3-0-8-1-4"><tspan sodipodi:role="line" x="13.322139" y="153.24521" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-04-6-0-3-8-8">Add no-connect :</tspan></text>
        <g id="g4524-21-5-54-4-2-6-8-0-4" transform="matrix(0.40999828,0,0,0.40999828,54.571229,118.13428)">
          <rect ry="2.703063" y="76.116707" x="93.773224" height="12.670878" width="12.670878" id="rect4515-3-7-2-0-4-3-7-1-6" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
          <text id="text4519-0-3-4-3-9-9-3-7-9" y="85.630249" x="96.504234" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px" y="85.630249" x="96.504234" id="tspan4517-9-3-9-5-0-0-1-9-2" sodipodi:role="line">Q</tspan></text>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.265, 1.06000001;stroke-dashoffset:0;stroke-opacity:1" d="M 41.95231,151.93952 H 90.216206" id="path12412-4-8" inkscape:connector-curvature="0"/>
      </g>
      <g id="g5541" transform="translate(0,0.12382589)">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.322139" y="160.19344" id="text4495-3-9-9-0-3-0-8-1-4-9"><tspan sodipodi:role="line" x="13.322139" y="160.19344" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-04-6-0-3-8-8-0">Add text :</tspan></text>
        <g id="g4524-21-5-54-4-2-6-8-0-4-3" transform="matrix(0.40999828,0,0,0.40999828,54.571229,125.08251)">
          <rect ry="2.703063" y="76.116707" x="93.773224" height="12.670878" width="12.670878" id="rect4515-3-7-2-0-4-3-7-1-6-0" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
          <text id="text4519-0-3-4-3-9-9-3-7-9-3" y="86.214188" x="96.946068" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px" y="86.214188" x="96.946068" id="tspan4517-9-3-9-5-0-0-1-9-2-3" sodipodi:role="line">T</tspan></text>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499996;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.265, 1.05999999;stroke-dashoffset:0;stroke-opacity:1" d="M 30.408846,158.88774 H 90.216203" id="path12412-4-9" inkscape:connector-curvature="0"/>
      </g>
      <g id="g5550" transform="translate(0,-0.58689917)">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.322139" y="167.14168" id="text4495-3-9-9-0-3-0-8-1-4-9-7"><tspan sodipodi:role="line" x="13.322139" y="167.14168" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-04-6-0-3-8-8-0-9">Add labels :</tspan></text>
        <g id="g4524-21-5-54-4-2-6-8-0-4-3-4" transform="matrix(0.40999828,0,0,0.40999828,54.571229,132.03075)">
          <rect ry="2.703063" y="76.116707" x="93.773224" height="12.670878" width="12.670878" id="rect4515-3-7-2-0-4-3-7-1-6-0-9" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
          <text id="text4519-0-3-4-3-9-9-3-7-9-3-9" y="86.214188" x="96.953819" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px" y="86.214188" x="96.953819" id="tspan4517-9-3-9-5-0-0-1-9-2-3-1" sodipodi:role="line">L</tspan></text>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.265, 1.06000003;stroke-dashoffset:0;stroke-opacity:1" d="M 33.625631,165.83599 H 90.216205" id="path12412-4-01" inkscape:connector-curvature="0"/>
      </g>
      <g id="g5559" transform="translate(0,-1.3157223)">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.515396" y="174.1261" id="text4495-3-9-9-0-3-0-8-1-4-9-7-5"><tspan sodipodi:role="line" x="13.515396" y="174.1261" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-04-6-0-3-8-8-0-9-9">List of shortcuts :</tspan></text>
        <g id="g4524-21-5-54-4-2-6-8-0-4-3-4-5" transform="matrix(0.40999828,0,0,0.40999828,54.571229,138.99708)">
          <rect ry="2.703063" y="76.116707" x="93.773224" height="12.670878" width="12.670878" id="rect4515-3-7-2-0-4-3-7-1-6-0-9-6" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
          <text id="text4519-0-3-4-3-9-9-3-7-9-3-9-1" y="86.237442" x="97.62561" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px" y="86.237442" x="97.62561" id="tspan4517-9-3-9-5-0-0-1-9-2-3-1-1" sodipodi:role="line">?</tspan></text>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.265, 1.06000003;stroke-dashoffset:0;stroke-opacity:1" d="M 42.877497,172.80232 H 90.216205" id="path12412-4-3" inkscape:connector-curvature="0"/>
      </g>
      <g transform="translate(0.08095974,4.1796359)" id="g5402-3">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.079259" y="81.23587" id="text4495-3-9-9-6-6"><tspan sodipodi:role="line" x="13.079259" y="81.23587" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-0-75">Grab item<tspan style="font-size:2.11666656px;line-height:8.60999966px;baseline-shift:super" id="tspan5287">1</tspan> :</tspan></text>
        <g id="g6786-3" transform="translate(53.917305,4.7765454)">
          <g transform="matrix(0.40999828,0,0,0.40999828,0.18886265,41.639486)" id="g4524-21-5-3-5">
            <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-3-7-3-6" width="12.670878" height="12.670878" x="94.907524" y="75.532768" ry="2.703063"/>
            <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="97.713463" y="85.630249" id="text4519-0-3-6-2"><tspan sodipodi:role="line" id="tspan4517-9-3-1-9" x="97.713463" y="85.630249" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px">G</tspan></text>
          </g>
          <image style="stroke-width:36.58646011" width="2.0734308" height="3.2864909" preserveAspectRatio="none" xlink:href="data:image/png;base64,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 " id="image6031-2-8-1" x="33.043667" y="73.562065"/>
          <text id="text4495-3-9-9-8-5-2-1-6-2" y="76.369751" x="35.982738" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6-9-2-3-7" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="76.369751" x="35.982738" sodipodi:role="line">+</tspan></text>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.265, 1.06000001;stroke-dashoffset:0;stroke-opacity:1" d="M 33.152514,79.981856 H 84.346165" id="path12412-4-09" inkscape:connector-curvature="0"/>
      </g>
      <g id="g5514-3" transform="translate(0,3.3153791)">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.079259" y="137.9483" id="text4495-3-9-9-0-3-0-8-6"><tspan sodipodi:role="line" x="13.079259" y="137.9483" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-04-6-0-3-0">Edit value :</tspan></text>
        <g id="g4524-21-5-54-4-2-6-8-6" transform="matrix(0.40999828,0,0,0.40999828,54.711065,103.41785)">
          <rect ry="2.703063" y="75.532768" x="93.432159" height="12.670878" width="12.670878" id="rect4515-3-7-2-0-4-3-7-2" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
          <text id="text4519-0-3-4-3-9-9-3-6" y="85.630249" x="96.395714" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px" y="85.630249" x="96.395714" id="tspan4517-9-3-9-5-0-0-1-1" sodipodi:role="line">V</tspan></text>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.265, 1.06000002;stroke-dashoffset:0;stroke-opacity:1" d="M 39.551721,136.98368 H 90.745373" id="path12412-4-21-8" inkscape:connector-curvature="0"/>
      </g>
      <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:0.74806201;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.596355" y="177.91748" id="text4495-3-9-9-6-6-3"><tspan sodipodi:role="line" x="13.596355" y="177.91748" style="font-size:2.82222223px;fill:#333333;fill-opacity:0.74806201;stroke-width:0.26458332px" id="tspan5740-1-0-75-6"><tspan style="font-size:1.76388884px;line-height:8.60999966px;baseline-shift:super;fill:#333333;fill-opacity:0.74806201;stroke-width:0.26458332px" id="tspan5287-7">1</tspan><tspan style="font-style:italic;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:2.82222223px;font-family:Roboto;-inkscape-font-specification:'Roboto Italic';fill:#333333;fill-opacity:0.74806201" id="tspan5326">grab</tspan> keeps connections, <tspan style="font-style:italic;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:2.82222223px;font-family:Roboto;-inkscape-font-specification:'Roboto Italic';fill:#333333;fill-opacity:0.74806201" id="tspan5328">move</tspan> doesn't</tspan></text>
    </g>
    <g id="g17508" transform="translate(0.07148567)">
      <text id="text4495-3-4" y="190.00912" x="8.0651913" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-weight:bold;font-size:4.58611107px;fill:#1b2b63;fill-opacity:1;stroke-width:0.26458332px" y="190.00912" x="8.0651913" id="tspan4493-9-3" sodipodi:role="line">3) Create new components as necessary</tspan></text>
      <g transform="translate(0,8.6994998)" id="g9136">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.244623" y="199.10042" id="text4495-3-4-7"><tspan sodipodi:role="line" id="tspan4493-9-3-2" x="13.244623" y="199.10042" style="font-style:italic;font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px">If editing an existing library :</tspan></text>
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="66.366638" y="199.08319" id="text4495-3-4-7-7-4"><tspan sodipodi:role="line" id="tspan4493-9-3-2-3-4" x="66.366638" y="199.08319" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px">Select working library</tspan></text>
        <image y="194.56477" x="58.360695" id="image7633" xlink:href="data:image/png;base64,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 " preserveAspectRatio="none" height="7.1437502" width="7.1437502" style="stroke-width:1.33333325"/>
      </g>
      <g transform="translate(-3.5718763,5.5400291)" id="g9292">
        <image style="stroke-width:1.33333325" y="217.07057" x="16.942245" id="image7901" xlink:href="data:image/png;base64,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 GdMZ5wAAAABJRU5ErkJggg== " preserveAspectRatio="none" height="7.1437502" width="28.575001"/>
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="47.415867" y="221.53818" id="text4495-3-4-7-7-4-3-94"><tspan sodipodi:role="line" id="tspan4493-9-3-2-3-4-8-9" x="47.415867" y="221.53818" style="font-style:italic;font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px">Draw component</tspan></text>
      </g>
      <image style="stroke-width:1.33333325" width="7.1437502" height="7.1437502" preserveAspectRatio="none" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAABHNCSVQICAgIfAhkiAAAAw1JREFU WIXtlk1LG1EUhp84icGEltaPZpHookYLkemmRheNuki3xW6M1k0h3QV0Jwjpsv0FkSxFxLFo/oCg CwWLMCEiVhdm1EXBhdRJQRi1TqbpoliaJtGJ2hrQF+5m7j3nPtzznjvXcnh4mKOCVHXTAH/rDugi 3R6gQCCAz+cjm82WFfdPgNbW1tjd3UUQBObn58uKtfyLth8ZGUHTNBobG9nc3GRqaurmgHRdp6Wl hcnJSdxuN52dnaTTaWpra03FX3vJ5ubmcDgcdHV10dzcjCiKJBIJ0/HXDjQ9PU1/fz8WiwWAgYGB myuZqqq0trai63rB3MrKCm1tbRfmMHVCOcMgs7VFZmuLnGGUXJdIJPD5fCiKkje6u7uRJMnMVucD ZY+PWYpGGfN4mPD7mfD7GfN4WIpGyR4fF6yXJIlQKITL5coboVCI2dlZU3eS9TyYjy9e8PXz57zv uqaRisX4srjI64UFrDU1AGiaRjAYpK+vryBXb28vOzs77O/v43a7zwUq6aGlaJRULAaAu6MDfyQC QDIeZ0+WAXg2NETPhw/nblCuigLlDIMxjwdd03B3dBBeXqbKZgPgh64zHgiwJ8vYHA5ezcxAVXnN +uDxY+6VOKmiJfu2vY2uaQD4I5HfMABVNhv+SIQ9WUY/OiLx8mVZMAA1dXW8kWUcDQ0Fczfytze+ f8dqtxedK3pCD71ebE4nuqaRjMcRBwfzSpaMxwGodjjovUTJHoki1ffvmweyCAJPw2FSsRh7ssx4 IFDU1OLbtzT29OTFnp6esr6+zurqKqqqMjw8jNPpNA1bsstKtf2ZGkQxr+3PJEkSo6OjeL1eUqkU iqLgcrmuDnQG9en9e9bHx3+b3OZ08jQc5vm7dwUwACcnJ9jtdhRFob29/XqBzpQzDL5tbwO//GUR hAsTp9PpSwGVvKn/lEUQqH3yxHTSq+j2PPIvq4oDMuWhcqTrOplMBlVVATg4OACgvr4ewUQzXPsj P5lMEgwGC75vbGzQ1NT0/4GuKitUFE/lmfoO6CJZc5VlIX4CjMJJ7aieAmMAAAAASUVORK5CYII= " id="image14620" x="13.370369" y="231.75459"/>
      <text id="text4495-3-4-7-7-4-3-5" y="236.29109" x="22.466139" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="236.29109" x="22.466139" id="tspan4493-9-3-2-3-4-8-5" sodipodi:role="line">Add pins</tspan></text>
      <g transform="translate(-1.5044705,8.3655154)" id="g8729">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="30.608442" y="190.31483" id="text4495-3-4-7-7"><tspan sodipodi:role="line" id="tspan4493-9-3-2-3" x="30.608442" y="190.31483" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px">Library editor</tspan></text>
        <image y="185.75476" x="21.838909" id="image7644" xlink:href="data:image/png;base64,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 " preserveAspectRatio="none" height="7.1437502" width="7.1437502" style="stroke-width:1.33333337"/>
        <path style="fill:none;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:0.52916676;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;marker-end:url(#marker8510)" d="m 14.87484,189.36829 h 3.460531" id="path4526-8" inkscape:connector-curvature="0"/>
      </g>
      <g transform="translate(8.794821,8.9997013)" id="g9244">
        <image y="203.40857" x="4.5755482" id="image7806" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAABHNCSVQICAgIfAhkiAAAA4RJREFU WIXtl19sU1Ucxz/3ri1tBbaEss5EWxcfkI1km6tkS1iWodM9mA0IhKSZIKQPMn0ps7xsDU+Et0Iy RgzsSd0cLE6NkhBTIslGA+HP0KQjU5tw7diQjDhWvUFv1+uDo3Dbae/tis5k3+Q8nHN+557P/Z7f OfceIZFIqCwjmVR1WfGsAOXUClAu6QYa7+9nTpLw+P2YbLanBiTMzMzoIvqstZU7kQgl5eW82tPD s3V1TwVIVFUVXQUodrsRgOHWVka6ulBkWd9YA0U3EAtAvrExag8c4NtTpxhsbGTq8uX/DgjAbLfz +rFjtIfDiMDnbW2MdncXzC39QBnJ72powDc2hqejg+9On+ZsUxPTBXDLUA5lymy30xwKpd36Yvt2 LgWDS3JLmJqaWnSXTQwO8v3QULp+PxpltdPJO9HoortDkWUudndztbeXYrebxuPHKdu82cgGA/5h l6UUJTtaEAD4dXqa+xMTmiIIAs2hEG9duIAoiny5YweRw4cNuyVMTk7qOofO7dyJ2WLBe/48IaeT PxIJTf/Wo0ep6+x87FYwyNUTJyh2u2kIhXS7JcTjcX1Au3ZhsVhoD4dJKQqp+XlNv8lqzRoTHx3l K5+P2du3qdi/H8+hQzlP+by+ZaLZjGg28/PNm6zftAnRZFo07vktW/DduMHFYJBrvb1MDAywrqIC YSH+xW3b2OD1ap8NKvpKtgZaWrhz5YrhF3okoagoax4DDj2O+31ujqQsk1IU5Hv3+O3uXWwOR5ZT miXb9zYvBwJZS5Y5v36ghbBUMklPeXk6qT/dvRuApiNHqA8EAG1Sr3W7aDlzBucrnkUBMvW3QD+c HSI2PJyu/3LrFqudTkSTifdiMeYfPuSDykre7Ovjufp67KWlQKYr+6h5vxOTzZYTJCdQKpnMblw4 h6wlJQCIFgs2h4Nnyso0B+Nal4s3Bj+h1KPPFc0UsdiPuqK/9npZtcpKezicbpu+fp2y6mrikQjn fD5mJYmX9u6luvNg3j9xhnPoSTk2biQcCKRdaR7oz8uVvIAyo34aGdG4UnXQbyhXlgz0SIos801X F9dOnmSNy8Vr/R+zvrb2L+glwhgEUnkgSfTV1DArSWzYs4cqv58im7UgIMaBVHggSaxxu9j60YcF dSUvoBfa2lhXVUXlux0UWQvrypMSxsejy+qm+P+9uf5bWgHKpWUH9CdMHHjRtHaYSAAAAABJRU5E rkJggg== " preserveAspectRatio="none" height="7.1437502" width="7.1437502" style="stroke-width:1.33333325"/>
        <text id="text4495-3-9-9-8-5-2-1-6-7-3-8-5-1-3" y="209.0636" x="32.285858" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:19.23197174px;line-height:12.01998234px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00961599px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6-9-2-3-2-7-1-0-2-2" style="font-size:6.41065693px;fill:#333333;stroke-width:0.26458332px" y="209.0636" x="32.285858" sodipodi:role="line">/</tspan></text>
        <image y="203.40857" x="36.740189" id="image7817" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAABHNCSVQICAgIfAhkiAAABKFJREFU WIXtl11MFFcUx3/3zuxnFbSCC9aw4aNiNdHAGqttjUFrPx6KaLQPhGqa0KRak4YSkzaApg/GvnQ1 QUyq7UuVxGJK2zQ2pl2jCS01kWRTW6BaUFeUBSsVd2FE2JnpAyuIoLNYbW3iPzkPM3PuOf/5zznn zhXRaNTkEYJqmo8Un8eELPGYkBUSItRSW0skFGJRWRmqy/VQCYmrV69aMvqqsJDLjY1My8xkZXU1 6UuWPDRC0jRNLA1I9noRQH1hIQ0VFQxpmvW6+7CECBEnVBoM4tu0iV/27ePQ8uV0njz53xECsLnd vLRrFyWBABL4evVqfqysfKBqJUbojsLPWLaM0mCQRZs3c3r/fuoKCgg/ILUSrqE7YXO7WeX3j6j1 zZo1/FRV9Y/VEp2dnePynTl0iLOHD49c9zQ3M8Xj4e3m5gk7Y0jTOFFZyamaGpK9Xpbv3k3a4sWT bTDgLl1mDA2N9xQCgL5wmJ4zZ8aYEIJVfj9vHDuGlJJv166lcfv2+1JLXLp0yXIOHVm3DpvdTvHR o/g9Hgaj0THPV+zcyZLy8lG1qqo4tWcPyV4vy/z+SaklOjo6rAmtX4/dbqckEMAYGsLQ9THPVacT gOrvyojqV9ANHWNwkIHIdYyYjupy4UxKxs0MSpZuu2euSe9l0mZD2myEm5pIy89HSDn6dhI6B36l K3Ju+IYSNwPSjCwcjYIj/vUAZBcVkVtcPD4+mFjbeBxYuZKuYHBSL3M7hKJMmCtBhUZ9bkYixDQN U9fRurvp7+rClZKCVFXLKLNeeJ5XyytHo06QOzFCcRcjFqM6M3OkqL8oKgKgYMcOlm7dah1GTEzC ktAfdYdpr68fub7W2soUjwepqmxpb0cfGGBPTg7r6uq4lg7mEzaa2gJ0Xz4H0+OLBAghEMCt0RrR ejjd0QCAU3XzdFp+YoSMWGw89fgcck6bBgwXt3vmTA62+bFPNegd6EaZqXBzoA/VLpGKQNyqdxN0 2Y+Z/BfHw58w3ZVO7xWNHE/e+DTt7W2W3+z74mIcDiclgcDIvXBTE+k+H+cbTvBxYAtqnpOwdhbF JlFUgaIIhBQMS2RiGGDETNJcObj7snjz2Y9Q5Pi6m1QN3Y6UefP4obycUzU1ZM2ZTc+cTFKT+4nq 3Sg2gWITyDgh0wRDN5kiU0nWslm9YCtSKPdf1Hd6XGxo4EhpKb2hEHM3bmThe2WEb4Q4Ef4Mw6ER kxqqTSBVgRAC0zBRTBdPDeaTP+t1klwpdy3uSQ3GIU3jeEUFTXv3MjUjgxdrD5Lq8wEw25nL3EgB DlMSEg1Iu45qlwgJpi7wGktJieWTnbrwnp2W8By6HgrxaV4evaEQuRs2sLCsDMXlHBPcl/EKf/5+ kcwZg3Tw83At2SXphg/zfCrPzV9r2fYJ/qDB9VCImKGz4sDn5H3wPtLpmND35dy3iHVOZ5ZtAXrM 5ElzDn1tSbz2zLuJ7fatrS2WEp3/sp7ohQvMf2czSnwjvRd0I0Zdy4dMzb5B/0UHRVkVOGzuBL4E iJaW5odyUuy72UttcBtF88rxJHkTXieam397pI6u/8+j9L+Jx4Ss8DfkAhRAj1ZC5AAAAABJRU5E rkJggg== " preserveAspectRatio="none" height="7.1437502" width="7.1437502" style="stroke-width:1.33333325"/>
        <g id="g8062" transform="translate(-38.321656,-3.3094811)">
          <text id="text4495-3-4-7-7-4-3-9" y="209.53717" x="82.91449" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan7854" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="209.53717" x="82.91449" sodipodi:role="line">Load component to</tspan></text>
          <text id="text4495-3-4-7-7-4-3-9-4" y="212.93576" x="83.045403" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan7854-3" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="212.93576" x="83.045403" sodipodi:role="line">edit from current library</tspan></text>
        </g>
        <g id="g9210" transform="translate(0,-1.1747816)">
          <text id="text4495-3-4-7-7-4-3" y="207.8934" x="12.514316" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="207.8934" x="12.514316" id="tspan4493-9-3-2-3-4-8" sodipodi:role="line">Create new</tspan></text>
          <text id="text4495-3-4-7-7-4-3-0" y="210.83723" x="12.560824" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan9202" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="210.83723" x="12.560824" sodipodi:role="line">component</tspan></text>
        </g>
      </g>
      <g transform="translate(114.46086,-9.4711583)" id="g9333">
        <image y="251.85959" x="-101.09049" id="image7978" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAABHNCSVQICAgIfAhkiAAABINJREFU WIXtl1tsFFUAhr+Z2V12W1oKtN1idCuRBC0xlVJjDGkIAhJ8oJjQByiBkPRBvCSUiw+2JJrYB1HA REBDeFBLodJIIKHES1WSXigW3WgoxeJCl8u2CIXdbpndnZmd8WHp0u5SOy1r0gf+ZB7OyX/O+eY/ txkhGAwaTCJZDGNS8TwGGlOTDkg0DIP/6wnI/dScXMP1Ox7TbUwDdR46xJmaGlRZNuVXNYXajmqc 80ROdH1EKDKYWqCL9fV07NrFkZISfGfOjOn/qq0KYVYf3shZeLKXL8++h67rqQMygGn5+QjAsZUr aa6qGjWtb3//lGjOTXzqn0gWgTtCN7b8fg7/+mHqgLgPVOF2s2DTJv44cID6RYvwtbeP8LV2H6df uMAVuR09ahDVDNRwFG+oAyXrOj931aUOCMCalsare/awrqkJETheWkpLdTWqLHPln/O4b5/icqQN RVXQFB0lHEUJ6ShhjcvhNjxyKxd9HaOOY37bJ/hcJSVUuN2crq6mY98+LjV/z513n+NuZjf3IkEk q4ChC4iqAEKsuR4d5Lr4Gz95dHIzniIrPfcRtv1DGK1paSzbvZs1P36Hp9RGMO0GtwZuoCo6akRH DekoYR0lpKOGoqhhnf6BPvzSJWrPvo+qKUnjCD6f76ER/VVfT3dDQ7zc39nJVKeTNzo7k7wfNKzF lqFzN9SLKIncjvQwqPYjSgKCOJQwZNqyyZ7yDIqiMt0+i8HbCpuXfzGir1GnTFfV5EpBACDg9RL2 ++PVi2euQMrJBKuFU62fY5+egf/eLRBAEAQEwMBAsqQjBmawdM7rCEg4Zk0lcfxRgeaWlzO3vDxe bly9GqvNhq5pHCwuJhIIjPAv2bmTlzZvxt3TREC+Gk8lcbqnpWdT6FocL5sGStSQS7RYqOztRde0 kR3Z7eb60Y0kiOEa97YfgrLY7dw6fx7JZjMNA+BrbqGxrIzGsjIu1iWfSWLs3c08yapdsoQ+t9s0 TKIESUoaZxyfHw98kYEBNFnGiEaRb97kXl8fjuxsRIsFQ4cnrM/jnF6AriiEBwLoWhTJYcchZOFY OIMVW6sf9DrRNTTEo2san82ejRIMAvDNqlUALK6p4eXt23nntT2osszpHTvo2LuXmfkuFn78Cc4X i0eFMAV06WgDnmPH4uW7XV1MdToRLRbe9niIhsPsnTOH1UePkldURFpu7NS91tLCyYoK/D09FGzc yPxtW7E4HP8JYQoocRcB8XPInpUFgGi14sjJIT0vL5bK/Wsk0+Vief0RcotjqZhfFiB4PH+bcv+w di1TpthZ19QUr+s9d468oiKutbbSWFGB3+vl2Q0beGHrFiwOh2mI4Rr3Ghqu7IICmrZti6ey7HDd hFKZEFCi62pz84hUCrdUjmutPDLQkFRZ5peqKs7t30+Gy8XSukPkLFgQg35EmHECGQS8Xg7On4/f 62Xu+vUUVlYiOewpARk/kBG75TPyXbxS+3VKU5kQ0NOlpcwsLGTeW28i2VObynAJFy50Tqpf10n3 K/0YaCw9BhpL/wLYbEoi7ZL4UgAAAABJRU5ErkJggg== " preserveAspectRatio="none" height="7.1437502" width="7.1437502" style="stroke-width:1.33333325"/>
        <image y="251.85959" x="-62.129776" id="image7989" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAABHNCSVQICAgIfAhkiAAABDVJREFU WIXtl0FIG1kYx38zk+jEULVqajRZupAUobDVgAcLla5QSqEeihbsMTfx0psXba5C9VrJ2fXooutB kVIqW7sEbRtskaqtKFoITRC0WKshZt4e0pHYzCQTC10L+4dhYOZ93/eb/3sz3xtJCCE4Q7J9/vz5 v2Y4IdsZM+h/oIL6OYGEEEiS9N3FrOSRhRDkO96+fUsoFCISiaBpWt6xZoemaUSjUQYGBpicnMw7 Vtre3ja0KBqNEo/Hsdvt7O3tIUkSa2tr3LlzB7/fb9mRxcVFZmZm8Hg81NXV8fjxY/x+P93d3YYx plP28uVLysvLmZ+fp76+nu7ubq5du8bExASzs7N0dHRQVVVlCvP69Wump6c5d+4c7e3tqKrK5uYm LpeL9fV1zOqaAgkhaGtrIxAIsLa2hizL7O3tcePGDRKJBOFwmM7OThoaGk7EHR4eMjo6yocPH7h5 8yY+nw+Xy0V1dTVOp5NPnz6xs7NTPJAOJUkSqqri9Xrxer0cHBxQXl6O3W5nZGSEW7du0draCsDG xgZDQ0MEAgF6e3vxeDzYbLacfLW1tSiKwtHRUXEOZZ91ORwOfD4fHo8Ht9tNKBSipKSEyspKHjx4 QF9fH9evX8dut+fk1DQNSZJQFOV4ERcFJIRAlmU0Tcu5r6oqly9fZnBwkGAwyP7+PsPDw1y9etUw n1HuooGyz2by+Xy0t7cTi8UKwugP9l1AsiybBgPHa6y0tDQvjC49X3YNy0D6PaMp+/aLa+WLn53n 1A5ZbRlWW1C246cCMip2Gnf0cXqsKRDkS5ZJoFudyWXsmNUpkyQJITQydYtwCARC6BCFYYp1qegp 0zT9CaSsQPOiGRfzQ+kOZXIW+ZbpDsmy/PWJ8tbKRBQYk3EnO39ugOl+SNMENpuNmpoalpaWePTo EZFIxLD/6HseIyWTSebm5giHw4yNjeF2u49hjA5Th5zOMqLRKFeu/EZ/fz/x+EdevYoyNTXF7du3 aWlpOfHGfKvDw0OePHnCs2d/c/Hir6hqKYFAEysrq5SVlRW3hiRJoqOjg/fv3/P8+T+Mjf1Jbe0F Ll26RFdXFy9evGBhYYGenh5KSkoQQpBOp4/jl5eXCYfDOJ1OHA4HIHC5LnD+fCUVFRVUVFQWB6Qo CmVlThobm2hsbELT0nz8GGdra4s3b94gBFRVVfHw4UPu379/wqnx8XEmJ//C6/2Ftrbf8fv9lJaq OTXMFrX07t1qztVCfSkWi7GwsMD6+gb7+/uoqsru7i7V1dXEYjHu3u2kubn5xF7ISMlkMhdodXWl aCBdiUSCp0+fMjLyB1++fCEYDHLvXtfXaSosQ6CVleUcIJvNhqIolpLqYKlUCo/HYzkmnU5b3zGm UqmvjVDBSm91uVyA1QYLmmYMYwqkQ0EKsN7xC8MUBrb85/qj9HP+2/9InTmgfwGQCv8v/PHs8gAA AABJRU5ErkJggg== " preserveAspectRatio="none" height="7.1437502" width="7.1437502" style="stroke-width:1.33333325"/>
        <g id="g8074" transform="translate(-147.72097,6.7427777)">
          <text id="text4495-3-4-7-7-4-3-5-9" y="247.90234" x="93.597137" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="247.90234" x="93.597137" id="tspan4493-9-3-2-3-4-8-5-0" sodipodi:role="line">Save current component</tspan></text>
          <text id="text4495-3-4-7-7-4-3-5-9-7" y="251.26476" x="93.719437" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="251.26476" x="93.719437" id="tspan4493-9-3-2-3-4-8-5-0-2" sodipodi:role="line">to new library</tspan></text>
        </g>
        <text id="text4495-3-9-9-8-5-2-1-6-7-3-8-5-1-3-5" y="257.51462" x="-66.584106" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:19.23197174px;line-height:12.01998234px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00961599px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6-9-2-3-2-7-1-0-2-2-0" style="font-size:6.41065741px;fill:#333333;stroke-width:0.26458332px" y="257.51462" x="-66.584106" sodipodi:role="line">/</tspan></text>
        <g id="g9284" transform="translate(-3.0331997,-1.4197106)">
          <text id="text4495-3-4-7-7-4-3-5-7" y="254.4353" x="-90.07029" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="254.4353" x="-90.07029" id="tspan4493-9-3-2-3-4-8-5-3" sodipodi:role="line">Update current</tspan></text>
          <text id="text4495-3-4-7-7-4-3-5-7-7" y="257.7977" x="-90.072014" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="257.7977" x="-90.072014" id="tspan4493-9-3-2-3-4-8-5-3-2" sodipodi:role="line">component into</tspan></text>
          <text id="text4495-3-4-7-7-4-3-5-7-7-7" y="261.16013" x="-90.072014" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="261.16013" x="-90.072014" id="tspan4493-9-3-2-3-4-8-5-3-2-9" sodipodi:role="line">current library</tspan></text>
        </g>
      </g>
      <path style="fill:none;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:0.52916682;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;marker-end:url(#marker8510-7)" d="m 73.135766,250.45735 v 3.46053" id="path4526-8-0" inkscape:connector-curvature="0"/>
      <g transform="translate(0,5.8208336)" id="g11682">
        <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:none;fill-opacity:1;fill-rule:nonzero;stroke:#ff7700;stroke-width:0.30000001;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:1.2, 1.2;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect10223" width="83.722382" height="28.348911" x="13.738317" y="252.73209" ry="2.6495223"/>
        <g id="g11159" transform="translate(4.0731982,-0.54517134)">
          <g transform="matrix(0.29865191,0,0,0.29499141,-9.47517,240.7133)" id="g4524-7" style="stroke-width:1.38132131">
            <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#9f9f9f;stroke-width:0.73094922;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-2" width="65.643974" height="12.825409" x="92.050613" y="74.086281" ry="1.8196113"/>
            <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.36547458px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="96.455109" y="84.470322" id="text4519-1"><tspan sodipodi:role="line" id="tspan4517-7" x="96.455109" y="84.470322" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.36547458px">Preferences</tspan></text>
          </g>
          <path inkscape:connector-curvature="0" id="path4526-9" d="m 38.729771,264.45981 h 2.18336" style="fill:none;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:0.5291667;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;marker-end:url(#TriangleOutS-4)"/>
          <g transform="matrix(0.2989589,0,0,0.29496467,15.386466,240.69945)" id="g4524-9-6" style="stroke-width:1.38067448">
            <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#9f9f9f;stroke-width:0.73060691;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-36-8" width="103.66922" height="12.825409" x="91.60965" y="74.140541" ry="1.8196113"/>
            <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.36530343px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="95.880157" y="84.470322" id="text4519-2-9"><tspan sodipodi:role="line" id="tspan4517-1-5" x="95.880157" y="84.470322" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.36530343px">Component libraries</tspan></text>
          </g>
        </g>
        <text id="text4495-3-4-7-0" y="258.3645" x="17.645006" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-style:italic;font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="258.3645" x="17.645006" id="tspan4493-9-3-2-6" sodipodi:role="line">How to load the new library in Eeschema :</tspan></text>
        <g id="g11657" transform="translate(4.2333335)">
          <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="17.541653" y="271.57874" id="text4495-3-4-7-7-1"><tspan sodipodi:role="line" id="tspan4493-9-3-2-3-6" x="17.541653" y="271.57874" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px">Component library files</tspan></text>
          <path style="fill:none;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:0.52916676;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;marker-end:url(#TriangleOutS-4-2)" d="m 54.587147,270.61411 h 2.18336" id="path4526-9-0" inkscape:connector-curvature="0"/>
          <g style="stroke-width:1.38132131" id="g4524-7-5" transform="matrix(0.2986519,0,0,0.29499142,31.424545,246.8676)">
            <rect ry="1.8196113" y="74.086281" x="91.098557" height="12.825409" width="28.955128" id="rect4515-2-3" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#9f9f9f;stroke-width:0.73094922;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
            <text id="text4519-1-2" y="84.470322" x="96.455109" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.36547458px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.36547458px" y="84.470322" x="96.455109" id="tspan4517-7-1" sodipodi:role="line">Add</tspan></text>
          </g>
        </g>
        <text id="text4495-3-4-7-7-1-9" y="277.57523" x="21.902016" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-style:italic;font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="277.57523" x="21.902016" id="tspan4493-9-3-2-3-6-7" sodipodi:role="line">Select your <tspan style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-family:'Fira Mono for Powerline';-inkscape-font-specification:'Fira Mono for Powerline'" id="tspan5467">.lib</tspan> file</tspan></text>
      </g>
      <g transform="matrix(0.40999828,0,0,0.40999828,54.571229,201.52123)" id="g4524-21-5-54-4-2-6-8-0-4-3-4-5-3">
        <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-3-7-2-0-4-3-7-1-6-0-9-6-6" width="12.670878" height="12.670878" x="93.773224" y="76.116707" ry="2.703063"/>
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="96.530067" y="86.214188" id="text4519-0-3-4-3-9-9-3-7-9-3-9-1-1"><tspan sodipodi:role="line" id="tspan4517-9-3-9-5-0-0-1-9-2-3-1-1-0" x="96.530067" y="86.214188" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px">P</tspan></text>
      </g>
      <path inkscape:connector-curvature="0" id="path12412-4-3-5" d="M 38.273627,235.32648 H 90.469566" style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.265, 1.06000008;stroke-dashoffset:0;stroke-opacity:1"/>
    </g>
    <circle style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#ff7700;fill-opacity:1;fill-rule:nonzero;stroke:none;stroke-width:0.26458332;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="path7200-9-8" cx="154.19774" cy="147.11647" r="0.98576403"/>
    <g id="g17588" transform="translate(0,3.7511191e-6)">
      <text id="text4495-4" y="37.708019" x="110.36334" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#1b2b63;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-weight:bold;font-size:4.58611107px;fill:#1b2b63;fill-opacity:1;stroke-width:0.26458332px" y="37.708019" x="110.36334" id="tspan4493-6" sodipodi:role="line">4) Create and assign footprints</tspan></text>
      <g transform="translate(-4.7625002)" id="g14291">
        <path style="fill:none;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:0.52899998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;marker-end:url(#marker8510-4)" d="m 120.52487,44.340684 h 3.46053" id="path4526-8-06" inkscape:connector-curvature="0"/>
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="136.258" y="45.305309" id="text4495-3-4-7-7-8-0"><tspan sodipodi:role="line" id="tspan4493-9-3-2-3-2-0" x="136.258" y="45.305309" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px">Footprint Editor</tspan></text>
        <image y="40.76881" x="127.48846" id="image13548" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAABHNCSVQICAgIfAhkiAAABVpJREFU WIXtl11sU3UUwH/33t62o11ZOzbGR8JHhMGIAYaC4NcL+kAQAkR8kSCYhZEQypzKNvRBQAMi6Jx8 iWAgsCZgHCRGZwIqGLZsaCDC1qVbHGEgsYNurJa2t733+rCso6wfG/hADCe5D/97es759fzPOf// Ffx+v84jJAZdf6R4HgOllcdA6eShgVRV5V4fgiAgSVJs3eX1cbP1OhNnTMJsyUjrT7h161Zaorff e4eAPxBbG2Uju7bvRJIknO+WoOhKTGeWzXz60U4AKt6v4AVxBmNGjcHb6eWir5mST8rigO+XQWUo 4A9wYv2F2Hr5gTlomoYoiii6wonixn7d3mfQdR1N1SiMTmLKtHxko4zDYSdfz6f+6zM8++ZLSWOJ uq6T7kkk6XQHd+xnpGUEPf4eAEaNHs3k/Mnkiln81XY9aawHrqFUQDU1Nfz8x6/8pOtYgyZKXilm 7JixaKpKIBjEhJrUNinQ5s2b8fl8AKi6GqcLhUOUlpYCEBGVOF3X7ducOnUKh8OBpmnkTM6ha2KU YDiIp62VHz1nkUMWnE5nwrhJt8zn8+FyuXC5XMiyHGdkNmdw5MgRXC4XRpMp9l4I6FxquEhdXR2t ra3ous7SpUt5omAS3zef4XxLI5u++ACv1/twW2a1WVleNTu2NhllRFEEwGIexmtVc9B1nfPnzhNQ IgiCQHt7O1OnTsVqtdLU1MR3l06TabfF7Ia8ZffKV7sPJNUd2nMQgLVr1xIOhhAEAYDCwkIEQaCq qoq8vDwO7D9AdnY2oVAoJVDKLhusHDt2jJMnT6KqvbU2YcIEMjIyUBSFpqYmVqxYQW5ubtz8SRYz IVAwGETTNJxOJ36/PyWM2+2mvLyccDgMQFZWFuPGjcPhcNDW1saGDRuYPn16nE2qJCQEMplMSJJE QUEBtbW1SWF6enpYsmRJHPS8efPIycmhpaWFuXPnsnLlyoS2SYFAJ/EDsiwTjUYTOtQ0jYULF+L1 emN1M3/+fOx2Ox6PB5vNRmVlZYrcJo6bMEOhUAhVVamvr2fBggUJ3a1btw632x1bFxYWYjKZuHr1 Kn6/n+PHj6c8s4bU9kajEVEU2bNnz4AZBFBdXU1NTU3CIu7o6ODw4cPY7fYU2XmAthcEISGM2+2m rKxsQBFnZmZy5coVSkpKBhTxUICStn0iCYc6afjldUqKsxid1zvgBlvEiYAeeFKXbangWvs1pozv ZNHLzzFy1PM8Oa2Sugs6nXfsXL58me473XTeuUXR+jXs/2wvoihSvrWC6x03Yn6GDx/Oh5u2pMzQ oICutV/jm1UNVAZtjB2/GPuIp8nOexFZXsUPpxto7fqbm7tFPJmNLN83B1VVEUWRdk873xb9FvOz tHo2iqI8GJDZbGb16tUAhEJBjKLOhIhKVnYhAJomcVedw4xpR9n5lICe2dv6SlhhzZo1AESUCBFT /00hGAyyceNGrFbr0IFKS99CUSIAfPz5DmaGBDIdMxEEiYjSze/1W7EarnDWM47osraYnSwbKC4u xmAwsG3X9jifRpORojeKsNlsQy9qo9GI1WrBarWAIBDc5qfmxF3a2g5xrnYxomEkuRP38eeN+PbW BWJ2fQOzTwRRYNiwDGTZ8JA3Rl2n0xPi6OVa2q2NWLpn4Vy5CBg4Fnp/nup6m7x+YJBFLdNJtsNM /qzpRLx2lEDvp07fuffql/13JUkTEQShN8tmI8sO36MLCEiSmBJIaG5uSksU+MeHjrH/XxgMmM1m AKLRaNx5J0lSbKAqihLrqvvtksmgMjTMMvAY6LOTJGnAmdWnk2V5wLRPF+//9yn9X8tjoHTyL/Zk otiwhaCHAAAAAElFTkSuQmCC " preserveAspectRatio="none" height="7.1437502" width="7.1437502" style="stroke-width:1.33333325"/>
      </g>
      <image style="fill:#ffe6d5;stroke-width:1.33333325" width="7.1437502" height="7.1437502" preserveAspectRatio="none" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAABHNCSVQICAgIfAhkiAAAA2BJREFU WIXtl01v1EYYx//z4hlnbTao3yDXXJESPkNOFYj0wgEiRYmEYBVclDTthdAiUsSLeMmmBJAIUq0K xDnfIKLttRx6iRRaqY1gBVot9o7XHg6rzOLE3t1ksxKt8kiWdvyf/zy/HXueGZNqtarxGQXX+rPi OQTqGIdAnaJnoDiO8ekYhBAwxvoL9PV3l1Cr1kxbWAI3F2+AMYaZOQ9KK6PZlo1bV28AAOYuz+N9 5Z3RHNfB4sK1tsBdAdWqNTy78Jtpj6+MIkkSUEqhtMKz6V9bWvm4mbH3lXcp36nlEePrCSgrtNbI 87Ybs53vvwW0sLCASqUCAIh1nNLCegjP8wAAEVUpTak6SqVSpi+qK3ieh6GhIdNnZ9Bt4p1XpVKB 7/vwfR+WZaVMtj2A1dVV+L4PIWVKk1Lm+oSUKJfL2Nraysypte7ukblFF+N3R1pJhWVeTMcu4Ku7 o0YrfnHE/C64BYwvtzRBWr68vF0BPby/kqs9XnqUq63ce4AkSUybUoowDPcHdBAVnDGWW3Pyxs98 h4IgQJIkKJVKqFarPYNlweRdmUBSSjDGMDw8jLW1tQMHagfFgfxHY1kWGo1GX4Dy8mbOUBiGiOMY 6+vrGBsb6w/OXpa9EAKUUiwtLe2qJQcJlBW5q4wQ0jeYfQH1O3oCmrsyj82NTdN2XAf3rt+BlBLn Lp3H23/fGO3I0SJ+ul0GpRTffD+Pv17/bbTBwUH88O2V3oE2Nzbx/OxLJKzZ9+TTEQRBACkl3v7z Br+cf2n6ji+PIo5jUEqx8ecGXkz+brQTP49AKbU/INu2MTExAQAIwwAJ04h5cxv4EH7AzMwMCCGI GlHKp+oKU1NTAIBIRYhka8cPggCzs7NwXXfvQJ53EUo1k/1453pKk0Ji4vRZOI6LazcXU5plcUxP T4NzvksTUmDyzCSKxeLegYQQEEI0G4SkRULgOA5c19nl0wRwXQecc5AdPkIJCoUBWBbvcZVldOl0 YszX2m/cXQHZhQF8+eSYmSlea37qbO97px60zkosoSCEQGsNYQucfPKJViNgjLYFIq9e/dGRKIoi 1Ov11r/gHLZtAwAajUZqv2OMmYKqlDKraqcvL7qaIc45OOepe9u+rDPPtmZZ1q5q3ynf/+9T+qDj EKhTfASuWU2Dktfa0QAAAABJRU5ErkJggg== " id="image14301" x="115.76238" y="59.056816"/>
      <g transform="translate(102.39201,-144.65196)" id="g9136-3">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="13.244623" y="199.10042" id="text4495-3-4-7-3"><tspan sodipodi:role="line" id="tspan4493-9-3-2-9" x="13.244623" y="199.10042" style="font-style:italic;font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px">If editing an existing library :</tspan></text>
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="66.366638" y="199.08319" id="text4495-3-4-7-7-4-0"><tspan sodipodi:role="line" id="tspan4493-9-3-2-3-4-4" x="66.366638" y="199.08319" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px">Select active library</tspan></text>
        <image y="194.56477" x="58.360695" id="image7633-3" xlink:href="data:image/png;base64,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 " preserveAspectRatio="none" height="7.1437502" width="7.1437502" style="stroke-width:1.33333325"/>
      </g>
      <g transform="translate(98.820132,-147.81143)" id="g9292-3">
        <image style="stroke-width:1.33333325" y="217.07057" x="16.942245" id="image7901-4" xlink:href="data:image/png;base64,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 GdMZ5wAAAABJRU5ErkJggg== " preserveAspectRatio="none" height="7.1437502" width="28.575001"/>
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="47.415867" y="221.53818" id="text4495-3-4-7-7-4-3-94-2"><tspan sodipodi:role="line" id="tspan4493-9-3-2-3-4-8-9-4" x="47.415867" y="221.53818" style="font-style:italic;font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px">Draw component</tspan></text>
      </g>
      <g id="g14678">
        <image style="stroke-width:1.33333325" y="78.403145" x="115.76238" id="image7949-5" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAABHNCSVQICAgIfAhkiAAAAytJREFU WIXtlr9v01oUxz9O8/MljiWqVDQQVoJE6gnCayOVLd0Y3vDYULYyMhX+Atgyki1iZGBgo1tQ00Db yS1DuxJqo0YgXcdR6qSJGRB+zQNktw19PCnf8fj63o/uPd9zjmSapsNvpMB/DfBvTYC8NAHy0gTI S8GzbjBwBux+2gUgO51lSpo6f6B2r015q0y9WUdraXT7XQBioRhqSqWQKfDgxgPksHzivaWTVura +xr3V+9jWAZKRCEZSaKEFQBET2DaJsIWzCZmeVp8yu0rt38d0OM3j3ny9gmJUIJcKocSUX64TtiC ndYOVt/i4a2HPPrz0fiBau9r3Hlxh3QizfXUdQIefhgy5F3rHbql8/Kvl75vyhdQu9fm5rObmLbJ /OX5ERjHcegcdQCIB+NIkjQC1fjQIBlJsnlv01dO+bJ9eauMYRnkUrkRGN3SqTVrrDXXWGuuUWvW 0C392OYBcqkchmVQ3ir7Ocqfy+rNOkpEGckZ3dLRDjTy6TyluRIA1e0qG/oGAOlEGsD9r96sjwdo 4AzQWhozf8y4Mcdx2Pu8Rz6dZ/XvVQLS11u7e+0uxedFtAON2fis+3zJSBKtpTFwBp51yvPJdj/t 0u13XWsDdI46HB4dUporuTAAASlAaa7E4dGhm1cASlih2++6BfRMQOctT6DsdJZYKIboCTcWD8aJ BqNUt6sMnaEbHzpDqttVosEo8WDcjYueIBaKkZ3OegJ55tCUNIWaUtn7vOfGJEni6oWrbOgbFJ8X v0tqdUYdsb9pm6gp1Vef8+WyQqbAprGJsIXrtG8u0g40ll8tAxANRlFnVPcbfK3awhYUMgU/RyEJ IXwXxnavzfyl+ZFEdhwHq28BkAglRgujM6Sx30AOy+MtjHJYprJUwepb7LR2RvJGkiTksIwclr+D +dbPKksV353ft8sWM4us5FcwOgaN/QbCFj9dK2xBY7+B0TFYya+wmFn0e4y/Jzuu183XLL9a5mPn ozt+JMNJAMye6Y4fF+MXqSxVTgRzKiD4Z0Bb/7D+wwFt4fLC6Qe00wAd17hH2DMDjVv/v9Zx3poA eWkC5KXfDugLix1w/eGrbY4AAAAASUVORK5CYII= " preserveAspectRatio="none" height="7.1437507" width="7.1437507"/>
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="124.85815" y="82.939644" id="text4495-3-4-7-7-4-3-5-3"><tspan sodipodi:role="line" id="tspan4493-9-3-2-3-4-8-5-8" x="124.85815" y="82.939644" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px">Add pins</tspan></text>
      </g>
      <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:19.23197174px;line-height:12.01998234px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00961599px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="147.02336" y="64.711845" id="text4495-3-9-9-8-5-2-1-6-7-3-8-5-1-3-3"><tspan sodipodi:role="line" x="147.02336" y="64.711845" style="font-size:6.41065693px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-9-6-9-2-3-2-7-1-0-2-2-1">/</tspan></text>
      <image style="stroke-width:1.33333325" width="7.1437502" height="7.1437502" preserveAspectRatio="none" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAABHNCSVQICAgIfAhkiAAABJhJREFU WIXtl11sFFUUx3937szsLLulRJoQQUKqAQ2UaIIpKIkm+JEIPFRIC0FrQqN8WHBTtyRQIWpJhIpA AUGiGMJHqElr1BfTJ5v4QYMESQjlRQRcEKmNS9vtsruzuzM+DB26dHe7CCRo+Cf34e45597fnHvu nB0RiURs7iGptn1P8dwHGlH3gUbSbQOl02mGriGEQEp5d4Hq168hGom6c13T2da0FSkldWuDmLbp 2gzNYPsHWwFY+34DfeFe1+bz+2hq3JwXuCCgaCRK61vH3XnVZzOxLAtFUTBtk9YVP9+wfTLLzVhf uDcjrnJvuRt3W0DZZNs2uWLzrZkv7r8F1NjYSDgcBiBlpzJs8XicYDAIgKmYGTbTTBAIBLLGmQmT YDBIaWmp61MwUDgcpqWlBYBF1YszbF6vl4O7D6BpGrVrVvPG2McQCACefLGUmleXArD/4H4eLJnm 2qa/MIFFFVXU19fnzFJBR+Yf7adqV7k713TVLcwppZNZ8dDyG86LIZVyMlO9pJrqIevEKmJu3G0B fb57X07b6hWr+PXyKb748SOEEDn9dNUgMG8nVtr6d0CWZY0IOqjTvx/leLgVqeX2GRWfQCptoqDm BVIGq37oiMVi2LZNIBAgEokUDFaosu05OLICeTwepJRMnTqV9vb2Ow6UD0qF3DWkaZpboHcBKeuv WTMUj8exLIvOzk7mzp17d3ByZShbcem6jhCCPXv2oGmZlZpOp0mmEnSFjrkLX+w5WxDEqQs/IYVK 2VMTuRI5xzh/6TCfnLdMCDEMZlADsX42fVXDNc8fg85o3pviFYEiQVEECDDVP2n6fgG2DZYpuHLi JCufaR62dtYjy/duklIyxl/CpiXf8IAsRRuVCSMESE1B8yhoHolmKOiGxFMk8ZeoeMdIJhc/zbuV Rwo/spu1dmMDofMhd140uoidTc3UPreDXd+tJKpfzoCRmnCGVFCkky0E2BYU9T3KhsoW+vsiWR+8 IKDQ+RBtS49hScd3waFyYrEYMx6Zw6K+Bg6d2EBSv4pUHRhVvw6lCqSqIBQHlksTaZh/mB86jjJ9 elnWvXICGYZBTU0N4HR3S9qkVeftHY/FqKuro7h4NMH6err7Q7T/thvFiF2HcEBU3cmUIgWpSyUs n72Ti2d76OjooKxs2q0BBYNvY5pJAJp2bMmw6YaHmleW4vP5+XDbFho2vkNP3yVODrQhvDZCEUgV pCpQNYVUTxEvT1mHniohpQ6wbNmyW2sdtm2j6zp+vw+/3+fUwE3y+Rxb91/dLLxQy5vzt/OwfBYr aTvHIwRCCFL9HmYWv8akybNp3rcDr9eLpqm31jqG3bgsDzP0NnZGf+H10DrWLzzM2OgTpFM2tmWT GIBJ8ed5qbyWivPLGbgWxbbz97KCitoY5aXiwIzrlQlq1PnUGex7lZ+WA1f5cs7XvLewlYa2ecTH nmVcdBarKz5m894tPH5uHDLq3Lx8e4ozZ7pGJEomkyQSCXeuqiqGYQDOn7Gh/W78+PEMpP+m+dtV bKxqo6c7TG/v1WFxOYG6uk7fU5+u/79P6Tut+0Aj6R/Y7eNDcPeZfQAAAABJRU5ErkJggg== " id="image14609" x="151.47769" y="59.056816"/>
      <text id="text4495-3-4-7-7-4-3-9-1" y="63.593319" x="159.33034" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan7854-33" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="63.593319" x="159.33034" sodipodi:role="line">Load footprint from library</tspan></text>
      <text id="text4495-3-4-7-7-4-3-4" y="63.611404" x="123.70115" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="63.611404" x="123.70115" id="tspan4493-9-3-2-3-4-8-4" sodipodi:role="line">New footprint</tspan></text>
      <g transform="translate(0,-1.4898241)" id="g14673">
        <image y="89.036972" x="155.61401" id="image7989-1" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAABHNCSVQICAgIfAhkiAAABDVJREFU WIXtl0FIG1kYx38zk+jEULVqajRZupAUobDVgAcLla5QSqEeihbsMTfx0psXba5C9VrJ2fXooutB kVIqW7sEbRtskaqtKFoITRC0WKshZt4e0pHYzCQTC10L+4dhYOZ93/eb/3sz3xtJCCE4Q7J9/vz5 v2Y4IdsZM+h/oIL6OYGEEEiS9N3FrOSRhRDkO96+fUsoFCISiaBpWt6xZoemaUSjUQYGBpicnMw7 Vtre3ja0KBqNEo/Hsdvt7O3tIUkSa2tr3LlzB7/fb9mRxcVFZmZm8Hg81NXV8fjxY/x+P93d3YYx plP28uVLysvLmZ+fp76+nu7ubq5du8bExASzs7N0dHRQVVVlCvP69Wump6c5d+4c7e3tqKrK5uYm LpeL9fV1zOqaAgkhaGtrIxAIsLa2hizL7O3tcePGDRKJBOFwmM7OThoaGk7EHR4eMjo6yocPH7h5 8yY+nw+Xy0V1dTVOp5NPnz6xs7NTPJAOJUkSqqri9Xrxer0cHBxQXl6O3W5nZGSEW7du0draCsDG xgZDQ0MEAgF6e3vxeDzYbLacfLW1tSiKwtHRUXEOZZ91ORwOfD4fHo8Ht9tNKBSipKSEyspKHjx4 QF9fH9evX8dut+fk1DQNSZJQFOV4ERcFJIRAlmU0Tcu5r6oqly9fZnBwkGAwyP7+PsPDw1y9etUw n1HuooGyz2by+Xy0t7cTi8UKwugP9l1AsiybBgPHa6y0tDQvjC49X3YNy0D6PaMp+/aLa+WLn53n 1A5ZbRlWW1C246cCMip2Gnf0cXqsKRDkS5ZJoFudyWXsmNUpkyQJITQydYtwCARC6BCFYYp1qegp 0zT9CaSsQPOiGRfzQ+kOZXIW+ZbpDsmy/PWJ8tbKRBQYk3EnO39ugOl+SNMENpuNmpoalpaWePTo EZFIxLD/6HseIyWTSebm5giHw4yNjeF2u49hjA5Th5zOMqLRKFeu/EZ/fz/x+EdevYoyNTXF7du3 aWlpOfHGfKvDw0OePHnCs2d/c/Hir6hqKYFAEysrq5SVlRW3hiRJoqOjg/fv3/P8+T+Mjf1Jbe0F Ll26RFdXFy9evGBhYYGenh5KSkoQQpBOp4/jl5eXCYfDOJ1OHA4HIHC5LnD+fCUVFRVUVFQWB6Qo CmVlThobm2hsbELT0nz8GGdra4s3b94gBFRVVfHw4UPu379/wqnx8XEmJ//C6/2Ftrbf8fv9lJaq OTXMFrX07t1qztVCfSkWi7GwsMD6+gb7+/uoqsru7i7V1dXEYjHu3u2kubn5xF7ISMlkMhdodXWl aCBdiUSCp0+fMjLyB1++fCEYDHLvXtfXaSosQ6CVleUcIJvNhqIolpLqYKlUCo/HYzkmnU5b3zGm UqmvjVDBSm91uVyA1QYLmmYMYwqkQ0EKsN7xC8MUBrb85/qj9HP+2/9InTmgfwGQCv8v/PHs8gAA AABJRU5ErkJggg== " preserveAspectRatio="none" height="7.1437502" width="7.1437502" style="stroke-width:1.33333325"/>
        <image y="89.036972" x="115.76237" id="image14631" xlink:href="data:image/png;base64,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 OaD/AJOX4lnd1nSYAAAAAElFTkSuQmCC " preserveAspectRatio="none" height="7.1437502" width="7.1437502" style="stroke-width:1.33333325"/>
        <g id="g14657" transform="translate(1.3529239,0.06974771)">
          <text id="text4495-3-4-7-7-4-3-5-9-1" y="91.822517" x="162.19986" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="91.822517" x="162.19986" id="tspan4493-9-3-2-3-4-8-5-0-3" sodipodi:role="line">Create new library and</tspan></text>
          <text id="text4495-3-4-7-7-4-3-5-9-7-7" y="95.184929" x="162.32216" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="95.184929" x="162.32216" id="tspan4493-9-3-2-3-4-8-5-0-2-7" sodipodi:role="line">save current footprint</tspan></text>
        </g>
        <text id="text4495-3-9-9-8-5-2-1-6-7-3-8-5-1-3-5-6" y="94.691994" x="151.15968" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:19.23197174px;line-height:12.01998234px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00961599px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6-9-2-3-2-7-1-0-2-2-0-3" style="font-size:6.41065741px;fill:#333333;stroke-width:0.26458332px" y="94.691994" x="151.15968" sodipodi:role="line">/</tspan></text>
        <g id="g9284-9" transform="translate(213.81966,-162.54303)">
          <text id="text4495-3-4-7-7-4-3-5-7-1" y="254.4353" x="-90.07029" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="254.4353" x="-90.07029" id="tspan4493-9-3-2-3-4-8-5-3-0" sodipodi:role="line">Save footprint in</tspan></text>
          <text id="text4495-3-4-7-7-4-3-5-7-7-4" y="257.7977" x="-90.072014" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="257.7977" x="-90.072014" id="tspan4493-9-3-2-3-4-8-5-3-2-1" sodipodi:role="line">active library</tspan></text>
        </g>
      </g>
      <g id="g14911">
        <image y="98.278648" x="122.72596" id="image12968" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAABHNCSVQICAgIfAhkiAAABORJREFU WIXtl09oE1kcxz9vZprRpE2aVNvQDSXsQSvuooWCVEpxQVnbxaI99CCKIi5bWHpcDx4862lvSgXd XWXBXeq/Q724l0I9iLQg1hX/LHbRpq1JkyaxbWaSmdlDOiHTJP0jhVXwFx7z8ua93/u+7++97++N SKfTFh+RKZb1UeH5DGhV+zQAaZrG2NgYiqIgSZKjCCEqtgkh8k4VhVAotHGARkZG2L9/P6ZpIoTA ymZBURx97HHFT7sYhkEymcTr9W4MILstl8shhODfo0epCoXYeuYMcl1dCQjTNB11SZIK/9drUvHK ip04wmAYfHH8OJH+ftJ37iAJgSgqdr/iejm/aykVARXvEQBfRwdf376NNTnJZF8fuTdvKoICHKyt p6x4yvRXr8jOzGBlsxjz88Tv3cPT3IyvrY23587hbm+n9sQJhCwXWLXB2IA2NGT6xAQLjx5h6jpC UVBDIdRQiOqWFr66dYvNNTVMnjqF9uSJA9CGM2RZFkII/J2dBLq6eD8ygqSqeNvaHP0a+/qo6+ri n7NnkerrUcJhXDt2oOzc+cEMVQzZcm0BSI+OkovH8R84QDqd5sGDBxiJBCmfD5ffjyIEyrt3SLkc pmnidruRZblEu4QQeDweGhoa1gbIZmhmYIDk8DC5RILs7Cxvzp/H1DSUQIC/Jib4trMzr1Xd3WUX Vex7uVQkEomyDK7IUMPJkzQcO8az3l6q6ur48sIFjPl5cskkqeFhrIMHyWazjkmHhoZYWFhwAGhq aqK1tdWhWbIslwVUdlPbHWW3m6raWrBTQm0tU1evErlyheo9exBCkMqm2HVtF913uonFYgwODuJy uRgfH+fx48coisLly5eJLkbZ9ts2Dg8dLmyDdemQPcA0TQCiN2/ytLeXmn37CF+8iOR25wUQi5n5 GaKLUYQQBAIBenp6CAaDBINBDh06tEQ5aIaGbugrCqcC5UNWTLnk8ZB6+JBtN24gqqsd0rDFvYXI jxEkIRGPxgvt/f39WJaFpmkABD1B3n7/1iEH5eYuu4dUVSUWi6EsJdTgwAAIwXvLwkqlEEIU8lws E6Pj9w6a65q51HapcKLsSe3wRBejdPzZQbO/mcHvBivmurKAWlp28/LlixW1ZG5uDiEEhmUwPT9N YHOgkGaKpaKg3piktBQpPVVgfs2AstkssiwzOzuLrutlB2YyGQBC3hCR/giykEnNpioCaqxuZOL0 BGLpV2mxZQHZF6z6+npyuVxZhkZHx5AkicRigtZfWgn7wlz/5jqQT8z2hDagOW2O3dd2E/aGud9z f30M2StTVRVVVcu+d7mqgHwopt9P46nyOLJ9cd02zdDQTecpWzOg1cyy8pNu9WwldSYfquh0tACm +CQC+Df5ifwQKbnQLbeKwrhasY9sPBMn+HOQvb/uXXEBiUyCxoFG2v9oB8AwjPXfh1ZjCMAyLTK5 DFpOW3mAAFVWUeX8FljXpl4boLxD/yY/6Z/SACSTSaampjhy5Iijb1NTE37Vz+vTr0vuSRsGyDDM kjafz8fdu3eXAFfOkZZloes6bvfmEh/i2bO/PwhRIpHg+fMXgIVpll4zlp+44qckSXi9NWzfvr3E 7wcz5Ha7CQYbiEajGIZe8j7PSOk4WVZwuarwer1lQyaePh3/qL6lP41v+//TPgNazf4DTAz53yTZ FvwAAAAASUVORK5CYII= " preserveAspectRatio="none" height="7.1437502" width="7.1437502" style="stroke-width:1.33333325"/>
        <path style="fill:none;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:0.52899998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;marker-end:url(#marker8510-4-7)" d="m 115.76237,101.85052 h 3.46053" id="path4526-8-06-4" inkscape:connector-curvature="0"/>
        <g id="g14881" transform="translate(0,-1.6992923)">
          <text id="text4495-3-4-7-7-8-0-5" y="102.81515" x="131.4955" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="102.81515" x="131.4955" id="tspan4493-9-3-2-3-2-0-3" sodipodi:role="line">Run CvPcb to associate components</tspan></text>
          <text id="text4495-3-4-7-7-8-0-5-7" y="106.21374" x="131.59712" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="106.21374" x="131.59712" id="tspan4493-9-3-2-3-2-0-3-2" sodipodi:role="line">and footprints</tspan></text>
        </g>
      </g>
      <path style="fill:none;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:0.52916682;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;marker-end:url(#marker8510-7-2)" d="m 195.20843,96.267314 v 7.545496" id="path4526-8-0-9" inkscape:connector-curvature="0"/>
      <g transform="translate(102.27405,-144.86819)" id="g11682-9">
        <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:none;fill-opacity:1;fill-rule:nonzero;stroke:#ff7700;stroke-width:0.30000001;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:1.2, 1.2;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect10223-5" width="83.722382" height="28.348911" x="13.738317" y="252.73209" ry="2.6495223"/>
        <g id="g11159-2" transform="translate(4.0731982,-0.54517134)">
          <g transform="matrix(0.29865191,0,0,0.29499141,-9.47517,240.7133)" id="g4524-7-0" style="stroke-width:1.38132131">
            <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#9f9f9f;stroke-width:0.73094922;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-2-8" width="65.643974" height="12.825409" x="92.050613" y="74.086281" ry="1.8196113"/>
            <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.36547458px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="96.455109" y="84.470322" id="text4519-1-3"><tspan sodipodi:role="line" id="tspan4517-7-5" x="96.455109" y="84.470322" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.36547458px">Preferences</tspan></text>
          </g>
          <path inkscape:connector-curvature="0" id="path4526-9-9" d="m 38.729771,264.45981 h 2.18336" style="fill:none;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:0.5291667;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;marker-end:url(#TriangleOutS-4-9)"/>
          <g transform="matrix(0.2989589,0,0,0.29496467,15.386466,240.69945)" id="g4524-9-6-6" style="stroke-width:1.38067448">
            <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#9f9f9f;stroke-width:0.73060691;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-36-8-5" width="91.634254" height="12.825409" x="91.609367" y="74.140541" ry="1.8196113"/>
            <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.36530343px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="95.87236" y="84.470322" id="text4519-2-9-6"><tspan sodipodi:role="line" id="tspan4517-1-5-3" x="95.87236" y="84.470322" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.36530343px">Footprint libraries</tspan></text>
          </g>
        </g>
        <text id="text4495-3-4-7-0-0" y="258.3645" x="17.645006" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-style:italic;font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="258.3645" x="17.645006" id="tspan4493-9-3-2-6-2" sodipodi:role="line">How to load the new library in CvPcb :</tspan></text>
        <g transform="matrix(0.2986519,0,0,0.29499142,-5.1176373,246.8676)" id="g4524-7-5-3" style="stroke-width:1.38132131">
          <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#9f9f9f;stroke-width:0.73094922;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-2-3-0" width="102.32646" height="12.825409" x="91.104256" y="74.086281" ry="1.8196113"/>
          <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.36547458px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="96.416519" y="83.392868" id="text4519-1-2-1"><tspan sodipodi:role="line" id="tspan4517-7-1-6" x="96.416519" y="83.392868" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.36547458px">Append with wizard</tspan></text>
        </g>
        <text id="text4495-3-4-7-7-1-9-7" y="277.57523" x="21.902016" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-style:italic;font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="277.57523" x="21.902016" id="tspan4493-9-3-2-3-6-7-5" sodipodi:role="line">Select your <tspan style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-family:'Fira Mono for Powerline';-inkscape-font-specification:'Fira Mono for Powerline'" id="tspan5425">.pretty</tspan> folder</tspan></text>
      </g>
      <g id="g16013" transform="translate(0,-2.6458334)">
        <path style="fill:none;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:0.52899998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;marker-end:url(#marker8510-4-0)" d="m 115.76237,143.97989 h 3.46053" id="path4526-8-06-0" inkscape:connector-curvature="0"/>
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="131.4955" y="144.94452" id="text4495-3-4-7-7-8-0-3"><tspan sodipodi:role="line" id="tspan4493-9-3-2-3-2-0-6" x="131.4955" y="144.94452" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px">Generate netlist</tspan></text>
        <image y="140.40802" x="122.72596" id="image15740" xlink:href="data:image/png;base64,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 " preserveAspectRatio="none" height="7.1437502" width="7.1437502" style="stroke-width:1.33333325"/>
      </g>
    </g>
    <circle style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#ff7700;fill-opacity:1;fill-rule:nonzero;stroke:none;stroke-width:0.26458332;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="path7200-9-8-5" cx="154.19774" cy="265.79388" r="0.98576403"/>
    <g id="g18416" transform="translate(0.0716629,4.5067671)">
      <text id="text4495-8" y="267.11639" x="110.19091" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#1b2b63;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-weight:bold;font-size:4.58611107px;fill:#1b2b63;fill-opacity:1;stroke-width:0.26458332px" y="267.11639" x="110.19091" id="tspan4493-2" sodipodi:role="line">6) Export Gerbers</tspan></text>
      <g id="g18248">
        <g id="g8823-2" transform="translate(103.34322,226.40316)">
          <g transform="matrix(0.40999828,0,0,0.40999828,-25.295398,13.089958)" id="g4524-0">
            <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#9f9f9f;stroke-width:0.5291667;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-24" width="26.019157" height="12.825409" x="91.990417" y="74.140541" ry="1.8196113"/>
            <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="96.455109" y="84.470322" id="text4519-5"><tspan sodipodi:role="line" id="tspan4517-8" x="96.455109" y="84.470322" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px">File</tspan></text>
          </g>
          <path inkscape:connector-curvature="0" id="path4526-40" d="m 24.196804,46.11665 h 2.18336" style="fill:none;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:0.5291667;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;marker-end:url(#TriangleOutS-13)"/>
          <g transform="matrix(0.40999828,0,0,0.40999828,-9.4756269,13.089958)" id="g4524-9-4">
            <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#9f9f9f;stroke-width:0.5291667;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-36-2" width="27.01255" height="12.825409" x="92.001389" y="74.140541" ry="1.8196113"/>
            <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="95.880157" y="84.470322" id="text4519-2-5"><tspan sodipodi:role="line" id="tspan4517-1-4" x="95.880157" y="84.470322" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px">Plot</tspan></text>
          </g>
        </g>
        <g id="g17248" transform="translate(0.00183713)">
          <g id="g17191" transform="matrix(0.40999828,0,0,0.40999828,78.045984,246.23243)">
            <rect ry="1.8196113" y="74.140541" x="91.99041" height="12.825409" width="90.572372" id="rect4515-36-5-7" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#9f9f9f;stroke-width:0.5291667;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
            <text id="text4519-2-3-5" y="84.470322" x="95.85424" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px" y="84.470322" x="95.85424" id="tspan4517-1-9-7" sodipodi:role="line">Generate Drill File</tspan></text>
          </g>
          <g transform="matrix(0.40999828,0,0,0.40999828,70.705738,259.86171)" id="g4524-9-2-2-2">
            <g id="g17208" transform="translate(119.14038,-33.242294)">
              <rect ry="1.8196113" y="74.140541" x="91.990417" height="12.825409" width="27.078976" id="rect4515-36-5-7-2" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#9f9f9f;stroke-width:0.5291667;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
              <text id="text4519-2-3-5-8" y="84.470322" x="95.902397" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px" y="84.470322" x="95.902397" id="tspan4517-1-9-7-6" sodipodi:role="line">Plot</tspan></text>
            </g>
          </g>
          <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="154.08879" y="280.57809" id="text4495-3-9-9-8-5-2-1-6-6-2"><tspan sodipodi:role="line" x="154.08879" y="280.57809" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-9-6-9-2-3-4-0">+</tspan></text>
        </g>
      </g>
      <path style="fill:none;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:0.52899998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;marker-end:url(#marker8510-4-0-3-0)" d="m 173.87474,275.06811 h 3.46053" id="path4526-8-06-0-2-1" inkscape:connector-curvature="0"/>
      <image style="stroke-width:1.5999999" width="9.260417" height="9.260417" preserveAspectRatio="none" xlink:href="data:image/png;base64,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 " id="image18223" x="187.10881" y="264.58929"/>
      <g transform="translate(3.4412859,-5.8208336)" id="g18338">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="178.52159" y="284.22293" id="text4495-3-4-7-7-4-2"><tspan sodipodi:role="line" id="tspan4493-9-3-2-3-4-6" x="178.52159" y="284.22293" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px">Check result</tspan></text>
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="175.94798" y="287.96158" id="text4495-3-4-7-7-4-2-9"><tspan sodipodi:role="line" id="tspan4493-9-3-2-3-4-6-4" x="175.94798" y="287.96158" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px">using GerbView</tspan></text>
      </g>
    </g>
    <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;opacity:1;fill:#000000;fill-opacity:0.4534884;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="167.96292" y="293.94589" id="text4495-3-4-7-7-4-8"><tspan sodipodi:role="line" id="tspan4493-9-3-2-3-4-2" x="167.96292" y="293.94589" style="font-size:2.82222223px;fill:#000000;fill-opacity:0.25581396;stroke-width:0.26458332px">Anthony Gautier - http://silica.io</tspan></text>
    <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;opacity:1;fill:#474747;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1;" x="72.027161" y="28.55213" id="text4495-3-4-7-7-4-8-8"><tspan sodipodi:role="line" id="tspan4493-9-3-2-3-4-2-2" x="72.027161" y="28.55213" style="font-size:3.52777767px;fill:#474747;fill-opacity:1;stroke-width:0.26458332px;">http://kicad-pcb.org/help/documentation/</tspan></text>
    <g id="g5356" transform="matrix(0.08748319,0,0,0.08748319,158.30299,291.83267)" style="stroke-width:3.02439046">
      <path id="path5336" d="M 2.499,0.352 85.626,0.5 c 1.161,0 2.198,-0.173 2.198,2.333 L 87.722,30.385 H 0.401 V 2.73 c 0,-1.235 0.119,-2.378 2.098,-2.378 z" inkscape:connector-curvature="0" style="fill:#aab2ab;stroke-width:3.02439046"/>
      <path id="path5338" d="M 25.316,14.449 C 25.319,20.006 20.845,24.514 15.323,24.518 9.801,24.521 5.322,20.018 5.318,14.461 V 14.449 C 5.315,8.891 9.789,4.383 15.312,4.38 c 5.522,-0.004 10.001,4.5 10.005,10.057 -0.001,0.003 -0.001,0.007 -0.001,0.012 z M 46.464,3.306 c 4.349,0 7.875,3.548 7.875,7.925 0,4.377 -3.526,7.926 -7.875,7.926 -4.35,0 -7.875,-3.548 -7.875,-7.926 -10e-4,-4.377 3.525,-7.925 7.875,-7.925 z m 28.632,7.751 c 0.003,4.314 -3.47,7.814 -7.757,7.818 -4.286,0.003 -7.765,-3.492 -7.769,-7.806 v -0.012 c -0.002,-4.314 3.471,-7.814 7.758,-7.817 4.287,-0.003 7.765,3.492 7.768,7.806 z" inkscape:connector-curvature="0" style="fill:#ffffff;stroke-width:3.02439046"/>
      <path id="path5340" d="m 23.446,6.252 c 2.217,2.232 3.326,4.964 3.326,8.197 0,3.233 -1.089,5.936 -3.269,8.11 -2.313,2.289 -5.046,3.434 -8.2,3.434 -3.116,0 -5.802,-1.135 -8.057,-3.405 C 4.99,20.317 3.863,17.606 3.863,14.45 3.863,11.294 4.99,8.561 7.246,6.252 9.444,4.02 12.13,2.904 15.303,2.904 c 3.212,0 5.926,1.116 8.143,3.348 z M 8.739,7.753 c -1.875,1.905 -2.812,4.138 -2.812,6.698 0,2.561 0.928,4.773 2.783,6.64 1.855,1.867 4.064,2.801 6.627,2.801 2.563,0 4.791,-0.942 6.684,-2.829 1.797,-1.752 2.697,-3.955 2.697,-6.611 0,-2.636 -0.914,-4.874 -2.74,-6.712 -1.826,-1.838 -4.04,-2.757 -6.641,-2.757 -2.601,0 -4.801,0.923 -6.598,2.77 z m 4.933,5.572 c -0.287,-0.628 -0.715,-0.942 -1.287,-0.942 -1.011,0 -1.516,0.685 -1.516,2.054 0,1.37 0.505,2.055 1.516,2.055 0.667,0 1.145,-0.333 1.431,-1.002 l 1.401,0.751 c -0.668,1.194 -1.67,1.792 -3.006,1.792 -1.03,0 -1.856,-0.317 -2.476,-0.954 -0.621,-0.636 -0.931,-1.512 -0.931,-2.629 0,-1.099 0.32,-1.97 0.959,-2.616 0.639,-0.646 1.436,-0.968 2.39,-0.968 1.413,0 2.424,0.56 3.035,1.679 z m 6.593,0 c -0.287,-0.628 -0.707,-0.942 -1.261,-0.942 -1.031,0 -1.547,0.685 -1.547,2.054 0,1.37 0.516,2.055 1.547,2.055 0.669,0 1.137,-0.333 1.404,-1.002 l 1.433,0.751 c -0.667,1.194 -1.667,1.792 -3.001,1.792 -1.029,0 -1.853,-0.317 -2.473,-0.954 -0.619,-0.636 -0.928,-1.512 -0.928,-2.629 0,-1.099 0.314,-1.97 0.943,-2.616 0.628,-0.646 1.428,-0.968 2.4,-0.968 1.41,0 2.42,0.56 3.029,1.679 z M 86.353,0 H 1.647 C 0.739,0 0,0.744 0,1.658 V 30.625 C 0,30.832 0.167,31 0.372,31 H 87.628 C 87.833,31 88,30.832 88,30.625 V 1.658 C 88,0.744 87.261,0 86.353,0 Z M 1.647,0.749 h 84.705 c 0.498,0 0.903,0.408 0.903,0.909 V 21.767 H 26.714 c -2.219,4.038 -6.494,6.779 -11.401,6.779 -4.908,0 -9.183,-2.738 -11.4,-6.779 H 0.744 V 1.658 c 0,-0.501 0.405,-0.909 0.903,-0.909 z M 67.277,2.5 c -2.355,0 -4.349,0.827 -5.98,2.481 -1.675,1.712 -2.512,3.737 -2.512,6.077 0,2.34 0.837,4.351 2.512,6.034 1.674,1.683 3.668,2.524 5.98,2.524 2.342,0 4.371,-0.849 6.089,-2.546 1.616,-1.611 2.427,-3.616 2.427,-6.012 0,-2.396 -0.824,-4.422 -2.471,-6.077 C 71.677,3.327 69.662,2.5 67.277,2.5 Z m 0.022,1.54 c 1.93,0 3.569,0.685 4.918,2.054 1.361,1.355 2.043,3.01 2.043,4.964 0,1.968 -0.666,3.602 -2.001,4.9 -1.405,1.397 -3.058,2.096 -4.96,2.096 -1.901,0 -3.541,-0.691 -4.917,-2.074 -1.376,-1.384 -2.064,-3.024 -2.064,-4.921 0,-1.897 0.695,-3.552 2.086,-4.964 1.332,-1.371 2.965,-2.055 4.895,-2.055 z m -3.791,5.809 c 0.34,-2.153 1.846,-3.304 3.733,-3.304 2.716,0 4.369,1.982 4.369,4.626 0,2.58 -1.76,4.584 -4.411,4.584 -1.824,0 -3.457,-1.13 -3.755,-3.347 h 2.143 c 0.063,1.151 0.806,1.556 1.866,1.556 1.209,0 1.994,-1.13 1.994,-2.857 0,-1.812 -0.679,-2.771 -1.951,-2.771 -0.934,0 -1.739,0.341 -1.909,1.513 L 66.21,9.846 64.523,11.543 62.837,9.846 Z M 48.743,8.938 c 0,-0.306 -0.246,-0.553 -0.55,-0.553 h -3.478 c -0.303,0 -0.55,0.247 -0.55,0.553 v 3.5 h 0.971 v 4.145 h 2.636 v -4.145 h 0.971 z M 46.455,5.53 c 0.656,0 1.189,0.536 1.189,1.197 0,0.661 -0.533,1.197 -1.189,1.197 -0.657,0 -1.189,-0.536 -1.189,-1.197 0,-0.661 0.532,-1.197 1.189,-1.197 z M 46.443,2.5 c -2.355,0 -4.349,0.827 -5.981,2.481 -1.675,1.711 -2.512,3.737 -2.512,6.076 0,2.339 0.837,4.351 2.512,6.034 1.674,1.683 3.668,2.524 5.981,2.524 2.342,0 4.371,-0.849 6.088,-2.547 1.619,-1.611 2.428,-3.615 2.428,-6.012 0,-2.397 -0.823,-4.421 -2.47,-6.076 C 50.844,3.326 48.828,2.5 46.443,2.5 Z m 0.022,1.539 c 1.93,0 3.569,0.685 4.917,2.054 1.363,1.355 2.044,3.01 2.044,4.963 0,1.968 -0.666,3.602 -2.001,4.9 -1.405,1.398 -3.058,2.096 -4.96,2.096 -1.901,0 -3.541,-0.691 -4.917,-2.075 -1.377,-1.383 -2.065,-3.023 -2.065,-4.921 0,-1.896 0.695,-3.551 2.086,-4.963 1.334,-1.369 2.966,-2.054 4.896,-2.054 z" inkscape:connector-curvature="0" style="stroke-width:3.02439046"/>
      <path id="path5342" d="m 69.277,24.171 1.816,4.888 H 69.984 L 69.617,27.97 h -1.816 l -0.381,1.089 h -1.074 l 1.836,-4.888 z m 0.062,2.997 -0.612,-1.793 H 68.713 L 68.08,27.168 Z M 63.26,27.85 c 0.059,0.115 0.137,0.207 0.234,0.277 0.098,0.071 0.211,0.124 0.342,0.158 0.133,0.034 0.268,0.051 0.408,0.051 0.095,0 0.197,-0.008 0.306,-0.023 0.109,-0.015 0.21,-0.047 0.306,-0.093 0.094,-0.046 0.174,-0.108 0.236,-0.188 0.064,-0.08 0.096,-0.181 0.096,-0.305 0,-0.132 -0.042,-0.238 -0.126,-0.321 -0.083,-0.083 -0.194,-0.15 -0.329,-0.206 -0.136,-0.055 -0.29,-0.102 -0.461,-0.143 -0.173,-0.042 -0.348,-0.088 -0.523,-0.138 -0.182,-0.046 -0.358,-0.102 -0.531,-0.167 -0.171,-0.066 -0.325,-0.152 -0.461,-0.258 -0.137,-0.104 -0.246,-0.235 -0.33,-0.393 -0.083,-0.158 -0.125,-0.349 -0.125,-0.572 0,-0.252 0.053,-0.469 0.16,-0.654 0.105,-0.184 0.246,-0.338 0.418,-0.462 0.172,-0.123 0.366,-0.214 0.584,-0.274 0.217,-0.059 0.436,-0.088 0.652,-0.088 0.254,0 0.497,0.028 0.73,0.086 0.232,0.057 0.44,0.149 0.621,0.277 0.182,0.127 0.326,0.291 0.432,0.49 0.107,0.198 0.16,0.439 0.16,0.723 h -1.036 c -0.009,-0.146 -0.04,-0.268 -0.091,-0.363 -0.053,-0.096 -0.121,-0.172 -0.207,-0.227 -0.086,-0.055 -0.184,-0.094 -0.295,-0.115 -0.11,-0.023 -0.23,-0.035 -0.361,-0.035 -0.086,0 -0.172,0.01 -0.258,0.027 -0.086,0.019 -0.163,0.051 -0.232,0.096 -0.07,0.047 -0.129,0.104 -0.174,0.172 -0.045,0.068 -0.067,0.155 -0.067,0.26 0,0.096 0.019,0.174 0.054,0.232 0.037,0.061 0.109,0.115 0.215,0.165 0.106,0.05 0.254,0.101 0.441,0.151 0.188,0.049 0.434,0.113 0.736,0.191 0.092,0.018 0.217,0.051 0.377,0.1 0.161,0.047 0.32,0.123 0.479,0.229 0.159,0.105 0.296,0.246 0.412,0.422 0.115,0.176 0.173,0.4 0.173,0.674 0,0.225 -0.044,0.432 -0.13,0.623 -0.086,0.192 -0.214,0.357 -0.384,0.496 -0.171,0.141 -0.381,0.248 -0.632,0.326 -0.252,0.078 -0.544,0.116 -0.874,0.116 -0.268,0 -0.527,-0.033 -0.779,-0.1 -0.251,-0.065 -0.474,-0.171 -0.667,-0.312 -0.192,-0.143 -0.346,-0.323 -0.459,-0.543 -0.113,-0.219 -0.168,-0.479 -0.163,-0.78 h 1.036 c -0.001,0.165 0.028,0.304 0.087,0.418 z M 45.973,24.171 h 1.198 l 1.138,1.931 1.13,-1.931 h 1.19 l -1.803,3.012 v 1.876 h -1.07 v -1.903 z m -1.975,0 c 0.231,0 0.442,0.021 0.633,0.062 0.191,0.041 0.354,0.108 0.491,0.201 0.136,0.094 0.241,0.219 0.316,0.373 0.075,0.155 0.112,0.348 0.112,0.575 0,0.247 -0.055,0.451 -0.167,0.616 -0.11,0.164 -0.276,0.298 -0.493,0.402 0.3,0.088 0.523,0.239 0.672,0.456 0.148,0.218 0.223,0.479 0.223,0.784 0,0.246 -0.049,0.46 -0.144,0.641 -0.095,0.18 -0.224,0.327 -0.386,0.441 -0.161,0.114 -0.346,0.199 -0.552,0.254 -0.207,0.055 -0.419,0.082 -0.638,0.082 H 41.707 V 24.17 h 2.291 z m -0.137,1.976 c 0.191,0 0.347,-0.046 0.47,-0.136 0.123,-0.092 0.185,-0.239 0.185,-0.444 0,-0.114 -0.021,-0.208 -0.062,-0.28 -0.041,-0.072 -0.095,-0.129 -0.164,-0.17 -0.069,-0.041 -0.146,-0.07 -0.235,-0.086 -0.089,-0.016 -0.181,-0.023 -0.276,-0.023 h -1 v 1.14 h 1.082 z m 0.062,2.075 c 0.105,0 0.205,-0.01 0.3,-0.03 0.095,-0.021 0.18,-0.055 0.252,-0.104 0.073,-0.047 0.13,-0.112 0.174,-0.194 0.044,-0.082 0.065,-0.187 0.065,-0.315 0,-0.25 -0.071,-0.43 -0.212,-0.536 -0.141,-0.107 -0.328,-0.161 -0.559,-0.161 h -1.166 v 1.341 h 1.146 z" inkscape:connector-curvature="0" style="fill:#ffffff;stroke-width:3.02439046"/>
    </g>
    <g transform="translate(-0.07837338,0.05349374)" id="g17694-6">
      <g transform="translate(0,-8.9958338)" id="g5437-2">
        <text id="text4495-3-8-9" y="163.01523" x="110.32975" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-weight:bold;font-size:4.58611107px;fill:#1b2b63;fill-opacity:1;stroke-width:0.26458332px" y="163.01523" x="110.32975" id="tspan4493-9-8-1" sodipodi:role="line">5)</tspan></text>
        <image style="stroke-width:2.15829086" y="158.26936" x="115.85287" id="image15540-2" xlink:href="data:image/png;base64,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 4QvJLQAAAABJRU5ErkJggg== " preserveAspectRatio="none" height="6.8650002" width="6.8650002"/>
        <text id="text4495-3-41-0-7" y="163.39926" x="124.19234" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="font-weight:bold;font-size:4.58611107px;fill:#1b2b63;fill-opacity:1;stroke-width:0.26458332px" y="163.39926" x="124.19234" id="tspan4493-9-7-7-0" sodipodi:role="line">Pcbnew : design the layout</tspan></text>
      </g>
      <path style="fill:none;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:0.52899998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;marker-end:url(#marker8510-4-0-3-3)" d="m 115.85287,169.94994 h 3.46053" id="path4526-8-06-0-2-9" inkscape:connector-curvature="0"/>
      <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="131.586" y="170.91461" id="text4495-3-4-7-7-8-0-3-1-3"><tspan sodipodi:role="line" id="tspan4493-9-3-2-3-2-0-6-5-6" x="131.586" y="170.91461" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px">Read netlist</tspan></text>
      <image y="166.37811" x="122.81646" id="image15740-3-0" xlink:href="data:image/png;base64,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 " preserveAspectRatio="none" height="7.1437507" width="7.1437507" style="stroke-width:1.33333325"/>
      <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="115.56177" y="178.92697" id="text4495-3-9-9-6-3-62"><tspan sodipodi:role="line" x="115.56177" y="178.92697" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-0-7-61">Select top layer :</tspan></text>
      <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.265, 1.06000001;stroke-dashoffset:0;stroke-opacity:1" d="m 148.83111,184.27823 h 27.13557" id="path12412-4-91-8" inkscape:connector-curvature="0"/>
      <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="115.6479" y="203.96686" id="text4495-3-9-9-86-7"><tspan sodipodi:role="line" x="115.6479" y="203.96686" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-93-9">Copy item :</tspan></text>
      <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26500002;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.265, 1.06000005;stroke-dashoffset:0;stroke-opacity:1" d="m 135.63502,203.1716 h 43.04073" id="path12412-4-2-2-2" inkscape:connector-curvature="0"/>
      <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="115.56349" y="210.32199" id="text4495-3-9-9-0-31-0"><tspan sodipodi:role="line" x="115.56349" y="210.32199" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-04-8-2">Rotate item :</tspan></text>
      <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.26499998, 1.06000002;stroke-dashoffset:0;stroke-opacity:1" d="m 137.48539,209.46939 h 41.37427" id="path12412-4-13-1-3" inkscape:connector-curvature="0"/>
      <text id="text4495-3-9-9-0-3-0-3-4-7" y="223.13562" x="115.80465" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-04-6-0-30-7-5" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="223.13562" x="115.80465" sodipodi:role="line">Add via :</tspan></text>
      <path inkscape:connector-curvature="0" id="path12412-4-71-2-4-9" d="m 131.88289,222.06497 h 53.97537" style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.26499999, 1.05999999;stroke-dashoffset:0;stroke-opacity:1"/>
      <text id="text4495-3-9-9-0-3-0-3-7-2" y="229.49075" x="115.71507" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-04-6-0-30-8-2" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="229.49075" x="115.71507" sodipodi:role="line">Switch posture :</tspan></text>
      <path inkscape:connector-curvature="0" id="path12412-4-71-2-6-89" d="m 142.95868,228.36277 h 43.20347" style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.26500001, 1.06000001;stroke-dashoffset:0;stroke-opacity:1"/>
      <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="115.80465" y="216.78047" id="text4495-3-9-9-0-3-0-3-73"><tspan sodipodi:role="line" x="115.80465" y="216.78047" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-04-6-0-30-6">Add tracks :</tspan></text>
      <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.26500002, 1.06000009;stroke-dashoffset:0;stroke-opacity:1" d="m 136.39433,215.76718 h 49.90844" id="path12412-4-71-2-1" inkscape:connector-curvature="0"/>
      <text id="text4495-3-9-9-0-3-0-3-7-4-2" y="235.8459" x="115.71507" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-04-6-0-30-8-3-9" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="235.8459" x="115.71507" sodipodi:role="line">Switch track width :</tspan></text>
      <path inkscape:connector-curvature="0" id="path12412-4-71-2-6-1-3" d="m 148.11753,234.66056 h 38.24883" style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.26500001, 1.06000003;stroke-dashoffset:0;stroke-opacity:1"/>
      <text id="text4495-3-9-9-0-3-0-3-7-0-1" y="242.20103" x="115.56177" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-04-6-0-30-8-9-9" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="242.20103" x="115.56177" sodipodi:role="line">Drag track :</tspan></text>
      <path inkscape:connector-curvature="0" id="path12412-4-71-2-6-6-4" d="m 135.6143,240.95835 h 50.49967" style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.26500001, 1.06000006;stroke-dashoffset:0;stroke-opacity:1"/>
      <text id="text4495-3-9-9-0-3-0-3-7-43-7" y="248.55617" x="115.56177" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-04-6-0-30-8-8-8" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="248.55617" x="115.56177" sodipodi:role="line">Fill zones :</tspan></text>
      <path inkscape:connector-curvature="0" id="path12412-4-71-2-6-8-4" d="m 133.74522,247.25615 h 52.7219" style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.26500002, 1.06000009;stroke-dashoffset:0;stroke-opacity:1"/>
      <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="115.69096" y="254.80795" id="text4495-3-9-9-8-2-1-5"><tspan sodipodi:role="line" x="115.69096" y="254.80795" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-9-8-9-0">3D viewer :</tspan></text>
      <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.26499997, 1.05999999;stroke-dashoffset:0;stroke-opacity:1" d="m 134.11979,253.55394 h 14.19397" id="path12412-4-6-0-3" inkscape:connector-curvature="0"/>
      <g style="stroke-width:1.04537463" transform="matrix(0.91507376,0,0,1,101.46525,115.55143)" id="g8823-2-7-6">
        <g style="stroke-width:1.11313784" id="g4524-0-5-1" transform="matrix(0.36159964,0,0,0.40999828,-17.428819,13.089958)">
          <rect ry="1.8196113" y="74.140541" x="91.990417" height="12.825409" width="70.546783" id="rect4515-24-3-0" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#9f9f9f;stroke-width:0.58903551;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
          <text id="text4519-5-5-6" y="83.421288" x="96.590584" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.29451773px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.29451773px" y="83.421288" x="96.590584" id="tspan4517-8-6-3" sodipodi:role="line">Design Rules</tspan></text>
        </g>
        <path style="fill:none;fill-rule:evenodd;stroke:#1e1e1e;stroke-width:0.55317742;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;marker-end:url(#TriangleOutS-13-3-7)" d="m 42.453053,46.11665 h 2.18336" id="path4526-40-2-2" inkscape:connector-curvature="0"/>
        <g style="stroke-width:1.09932959" id="g4524-9-4-9-0" transform="matrix(0.37074055,0,0,0.40999828,41.565995,13.089958)">
          <rect ry="1.8196113" y="74.140541" x="92.001389" height="12.825409" width="67.396492" id="rect4515-36-2-1-6" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#9f9f9f;stroke-width:0.58172864;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
          <text id="text4519-2-5-2-1" y="83.237839" x="95.132339" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.29086429px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.29086429px" y="83.237839" x="95.132339" id="tspan4517-1-4-7-5" sodipodi:role="line">Layers Setup</tspan></text>
        </g>
        <g style="stroke-width:1.11313784" id="g4524-0-5-2-5" transform="matrix(0.36159964,0,0,0.40999828,13.226234,13.089958)">
          <rect ry="1.8196113" y="74.140541" x="91.990417" height="12.825409" width="70.546783" id="rect4515-24-3-6-4" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#9f9f9f;stroke-width:0.58903551;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
          <text id="text4519-5-5-1-7" y="83.421288" x="96.590584" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.29451773px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.29451773px" y="83.421288" x="96.590584" id="tspan4517-8-6-8-6" sodipodi:role="line">Design Rules</tspan></text>
        </g>
        <text id="text4495-3-9-9-8-5-2-1-6-6-7-5" y="47.281094" x="72.842583" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.27658868px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6-9-2-3-4-9-6" style="font-size:3.52777767px;fill:#333333;stroke-width:0.27658868px" y="47.281094" x="72.842583" sodipodi:role="line">+</tspan></text>
      </g>
      <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="115.64273" y="197.9924" id="text4495-3-9-9-6-3-6-9"><tspan sodipodi:role="line" x="115.64273" y="197.9924" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-0-7-7-3">Grab item<tspan style="font-size:2.11666656px;baseline-shift:super" id="tspan5361-7">1</tspan> :</tspan></text>
      <g id="g6786-4-4" transform="translate(149.03503,115.37071)">
        <g transform="matrix(0.40999828,0,0,0.40999828,0.18886265,41.639486)" id="g4524-21-5-3-3-5">
          <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-3-7-3-7-2" width="12.670878" height="12.670878" x="94.907524" y="75.532768" ry="2.703063"/>
          <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="96.625671" y="85.630249" id="text4519-0-3-6-1-5"><tspan sodipodi:role="line" id="tspan4517-9-3-1-3-4" x="96.625671" y="85.630249" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px">M</tspan></text>
        </g>
        <image style="stroke-width:36.58646011" width="2.0734308" height="3.2864909" preserveAspectRatio="none" xlink:href="data:image/png;base64,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 " id="image6031-2-8-9-7" x="33.043667" y="73.562065"/>
        <text id="text4495-3-9-9-8-5-2-1-6-6-4" y="76.369751" x="35.982738" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6-9-2-3-4-4" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="76.369751" x="35.982738" sodipodi:role="line">+</tspan></text>
      </g>
      <g id="g6777-2-3" transform="translate(145.21196,120.41953)">
        <g transform="matrix(0.40999828,0,0,0.40999828,4.0119307,49.186247)" id="g4524-21-5-0-0">
          <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-3-7-29-7" width="12.670878" height="12.670878" x="94.907524" y="75.532768" ry="2.703063"/>
          <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="97.788391" y="85.630249" id="text4519-0-3-5-8"><tspan sodipodi:role="line" id="tspan4517-9-3-7-6" x="97.788391" y="85.630249" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px">C</tspan></text>
        </g>
        <image style="stroke-width:36.58646011" width="2.0734308" height="3.2864909" preserveAspectRatio="none" xlink:href="data:image/png;base64,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 " id="image6031-2-8-3-4-8" x="36.866734" y="81.108826"/>
        <text id="text4495-3-9-9-8-5-2-1-6-7-6-8" y="83.916512" x="39.805805" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6-9-2-3-2-4-4" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="83.916512" x="39.805805" sodipodi:role="line">+</tspan></text>
      </g>
      <g id="g6731-1-3" transform="translate(149.25287,97.962124)">
        <g transform="matrix(0.40999828,0,0,0.40999828,-0.02897908,77.941441)" id="g4524-21-5-54-3-1">
          <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-3-7-2-8-4" width="12.670878" height="12.670878" x="94.907524" y="75.532768" ry="2.703063"/>
          <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="97.6437" y="85.630249" id="text4519-0-3-4-9-9"><tspan sodipodi:role="line" id="tspan4517-9-3-9-2-2" x="97.6437" y="85.630249" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px">R</tspan></text>
        </g>
        <image style="stroke-width:36.58646011" width="2.0734308" height="3.2864909" preserveAspectRatio="none" xlink:href="data:image/png;base64,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 " id="image6031-2-8-3-5-6-4-0" x="32.825825" y="109.86402"/>
        <text id="text4495-3-9-9-8-5-2-1-6-7-3-8-51-6" y="112.67171" x="35.764896" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6-9-2-3-2-7-1-00-8" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="112.67171" x="35.764896" sodipodi:role="line">+</tspan></text>
      </g>
      <g id="g16558-9" transform="translate(-7.9302081,15.236311)">
        <rect ry="1.1082512" y="204.23114" x="196.06602" height="5.1950383" width="5.1950383" id="rect4515-3-7-2-0-4-3-0-9-2" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:0.5291667;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
        <text id="text4519-0-3-4-3-9-9-2-8-6" y="208.37108" x="197.28107" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.33914852px;line-height:2.71196747px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00216958px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.1084787px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.1084787px" y="208.37108" x="197.28107" id="tspan4517-9-3-9-5-0-0-2-5-6" sodipodi:role="line">V</tspan></text>
      </g>
      <g id="g16563-4" transform="translate(-8.3663348,14.337851)">
        <rect ry="1.1082512" y="211.4274" x="196.50215" height="5.1950383" width="5.1950383" id="rect4515-3-7-2-0-4-3-0-6-9" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:0.5291667;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
        <text id="text4519-0-3-4-3-9-9-2-0-50" y="215.32794" x="197.62187" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.33914852px;line-height:2.71196747px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00216958px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.1084787px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.1084787px" y="215.32794" x="197.62187" id="tspan4517-9-3-9-5-0-0-2-0-4" sodipodi:role="line">Q</tspan></text>
      </g>
      <g id="g16553-8" transform="translate(-7.2759875,15.153471)">
        <rect ry="1.1082512" y="198.01619" x="195.4118" height="5.1950383" width="5.1950383" id="rect4515-3-7-2-0-4-3-0-7" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:0.5291667;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
        <text id="text4519-0-3-4-3-9-9-2-1" y="202.15613" x="196.64594" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.33914852px;line-height:2.71196771px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00216958px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.1084787px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.1084787px" y="202.15613" x="196.64594" id="tspan4517-9-3-9-5-0-0-2-7" sodipodi:role="line">X</tspan></text>
      </g>
      <g id="g16568-2" transform="translate(-7.7427996,14.856818)">
        <rect ry="1.1082512" y="217.20622" x="195.87862" height="5.1950383" width="5.1950383" id="rect4515-3-7-2-0-4-3-0-6-7-7" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:0.52916676;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
        <text id="text4519-0-3-4-3-9-9-2-0-5-2" y="221.34618" x="196.53326" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.33914852px;line-height:2.71196747px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00216958px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.1084787px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.1084787px" y="221.34618" x="196.53326" id="tspan4517-9-3-9-5-0-0-2-0-8-2" sodipodi:role="line">W</tspan></text>
      </g>
      <g id="g16573-6" transform="translate(-7.960863,13.413187)">
        <rect ry="1.1082512" y="224.94765" x="196.09668" height="5.1950383" width="5.1950383" id="rect4515-3-7-2-0-4-3-0-6-3-1" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:0.52916676;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
        <text id="text4519-0-3-4-3-9-9-2-0-0-0" y="229.0876" x="197.22063" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.33914852px;line-height:2.71196747px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00216958px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.1084787px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.1084787px" y="229.0876" x="197.22063" id="tspan4517-9-3-9-5-0-0-2-0-2-6" sodipodi:role="line">D</tspan></text>
      </g>
      <g id="g16578-1" transform="translate(-7.6337603,12.950851)">
        <rect ry="1.1082512" y="231.70778" x="195.76958" height="5.1950383" width="5.1950383" id="rect4515-3-7-2-0-4-3-0-6-6-5" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:0.52916676;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
        <text id="text4519-0-3-4-3-9-9-2-0-7-9" y="235.84773" x="196.9592" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.33914852px;line-height:2.71196747px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00216958px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.1084787px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.1084787px" y="235.84773" x="196.9592" id="tspan4517-9-3-9-5-0-0-2-0-0-4" sodipodi:role="line">B</tspan></text>
      </g>
      <g id="g16636-9" transform="translate(-8.8831612,12.161419)">
        <text id="text4495-3-9-9-8-5-2-6-0" y="242.55696" x="193.90092" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6-9-28-9" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="242.55696" x="193.90092" sodipodi:role="line">+</tspan></text>
        <g transform="translate(1.2494009,7.0872207)" id="g16578-7-1">
          <rect ry="1.1082512" y="231.70778" x="195.76958" height="5.1950383" width="5.1950383" id="rect4515-3-7-2-0-4-3-0-6-6-2-7" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:0.52916676;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
          <text id="text4519-0-3-4-3-9-9-2-0-7-8-7" y="235.84773" x="197.19014" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.33914852px;line-height:2.71196747px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00216958px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.1084787px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.1084787px" y="235.84773" x="197.19014" id="tspan4517-9-3-9-5-0-0-2-0-0-1-1" sodipodi:role="line">3</tspan></text>
        </g>
        <g transform="matrix(0.40999828,0,0,0.40999828,121.30215,207.36458)" id="g4524-21-5-5-9-8-3-5-1">
          <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-3-7-5-9-1-4-0-5" width="26.102278" height="12.670878" x="91.977303" y="76.659882" ry="2.703063"/>
          <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="98.672119" y="86.912392" id="text4519-0-3-3-4-6-6-1-9"><tspan sodipodi:role="line" id="tspan4517-9-3-8-9-3-1-5-7" x="98.672119" y="86.912392" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px">Alt</tspan></text>
        </g>
        <g id="g5460-7" style="opacity:0.75">
          <g id="g4524-21-5-5-9-8-1-6" transform="matrix(0.40999828,0,0,0.40999828,142.97622,207.36458)">
            <g id="g5384-7">
              <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-3-7-5-9-1-6-36" width="38.993198" height="12.670878" x="79.086388" y="76.659882" ry="2.703063"/>
              <g id="g5377-5" transform="translate(0.52388907)">
                <text id="text4519-0-3-3-4-6-4-63" y="86.966652" x="92.642342" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px" y="86.966652" x="92.642342" id="tspan4517-9-3-8-9-3-8-94" sodipodi:role="line">Shift</tspan></text>
                <path id="rect5304-5-8" d="m 86.368839,79.319926 -3.623244,3.619194 h 1.756855 v 3.857641 h 3.732779 V 82.93912 h 1.756847 z" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:none;fill-opacity:0.74806201;fill-rule:nonzero;stroke:#3f3f3f;stroke-width:0.60975862;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" inkscape:connector-curvature="0"/>
              </g>
            </g>
          </g>
          <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="172.28346" y="242.55696" id="text4495-3-9-9-8-5-2-1-9-1"><tspan sodipodi:role="line" x="172.28346" y="242.55696" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-9-6-9-2-5-2">+</tspan></text>
          <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="170.75006" y="242.40279" id="text4495-3-9-9-8-5-2-1-9-9-9"><tspan sodipodi:role="line" x="170.75006" y="242.40279" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-9-6-9-2-5-1-3">(</tspan></text>
          <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="192.05861" y="242.40279" id="text4495-3-9-9-8-5-2-1-9-9-2-9"><tspan sodipodi:role="line" x="192.05861" y="242.40279" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-9-6-9-2-5-1-7-0">)</tspan></text>
        </g>
      </g>
      <g id="g6786-4-5-8" transform="translate(149.11599,121.6685)">
        <g transform="matrix(0.40999828,0,0,0.40999828,0.18886265,41.639486)" id="g4524-21-5-3-3-3-8">
          <rect style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:1.29065585;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate" id="rect4515-3-7-3-7-5-5" width="12.670878" height="12.670878" x="94.907524" y="75.532768" ry="2.703063"/>
          <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458302px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="97.713463" y="85.630249" id="text4519-0-3-6-1-6-0"><tspan sodipodi:role="line" id="tspan4517-9-3-1-3-2-9" x="97.713463" y="85.630249" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.26458332px">G</tspan></text>
        </g>
        <image style="stroke-width:36.58646011" width="2.0734308" height="3.2864909" preserveAspectRatio="none" xlink:href="data:image/png;base64,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 " id="image6031-2-8-9-9-6" x="33.043667" y="73.562065"/>
        <text id="text4495-3-9-9-8-5-2-1-6-6-1-3" y="76.369751" x="35.982738" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-9-6-9-2-3-4-2-8" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" y="76.369751" x="35.982738" sodipodi:role="line">+</tspan></text>
      </g>
      <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.26500001, 1.06000004;stroke-dashoffset:0;stroke-opacity:1" d="m 135.71598,196.87381 h 43.78909" id="path12412-4-91-7-5" inkscape:connector-curvature="0"/>
      <text id="text4495-3-9-9-6-6-3-5-6" y="260.29523" x="115.70647" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:0.74806201;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" xml:space="preserve"><tspan id="tspan5740-1-0-75-6-3-1" style="font-size:2.82222223px;fill:#333333;fill-opacity:0.74806201;stroke-width:0.26458332px" y="260.29523" x="115.70647" sodipodi:role="line"><tspan id="tspan5287-7-5-1" style="font-size:1.76388884px;line-height:8.60999966px;baseline-shift:super;fill:#333333;fill-opacity:0.74806201;stroke-width:0.26458332px">1</tspan><tspan id="tspan5326-6-5" style="font-style:italic;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:2.82222223px;font-family:Roboto;-inkscape-font-specification:'Roboto Italic';fill:#333333;fill-opacity:0.74806201;stroke-width:0.26458332px">grab</tspan> keeps connections, <tspan id="tspan5328-2-9" style="font-style:italic;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:2.82222223px;font-family:Roboto;-inkscape-font-specification:'Roboto Italic';fill:#333333;fill-opacity:0.74806201;stroke-width:0.26458332px">move</tspan> doesn't</tspan></text>
      <g transform="translate(2.223979,9.6478904)" id="g5539-8">
        <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#787878;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="163.95857" y="253.39621" id="text4495-3-9-9-6-6-3-5-0-4"><tspan sodipodi:role="line" x="163.95857" y="253.39621" style="font-size:2.11666656px;fill:#787878;fill-opacity:1;stroke-width:0.26458332px" id="tspan5740-1-0-75-6-3-6-8">(Only for AZERTY keyboards)</tspan></text>
      </g>
      <path style="fill:none;fill-rule:evenodd;stroke:#787878;stroke-width:0.52899998;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;marker-end:url(#marker6559-3)" d="m 176.20611,260.4984 v -2.20137" id="path4526-40-0-1" inkscape:connector-curvature="0"/>
      <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="115.68497" y="191.63727" id="text4495-3-9-9-6-3-3"><tspan sodipodi:role="line" x="115.68497" y="191.63727" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-0-7-6">Move item<tspan style="font-size:2.11666656px;baseline-shift:super;stroke-width:0.26458332px" id="tspan5300-7">1</tspan> :</tspan></text>
      <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.265, 1.06000002;stroke-dashoffset:0;stroke-opacity:1" d="m 135.75822,190.57602 h 43.80432" id="path12412-4-91-5" inkscape:connector-curvature="0"/>
      <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:10.58333302px;line-height:6.61458349px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00529167px;word-spacing:0px;fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.26458332px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="115.77851" y="185.28212" id="text4495-3-9-9-6-3-35"><tspan sodipodi:role="line" x="115.77851" y="185.28212" style="font-size:3.52777767px;fill:#333333;stroke-width:0.26458332px" id="tspan5740-1-0-7-62">Select bottom layer :</tspan></text>
      <g id="g16553-2-6" transform="translate(-15.015045,-16.335475)">
        <rect ry="1.1082512" y="198.01619" x="192.46515" height="5.1950383" width="15.880749" id="rect4515-3-7-2-0-4-3-0-7-0" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:0.5291667;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
        <g id="g7175" transform="translate(0.20580766,2.796296e-6)">
          <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.33914852px;line-height:2.71196771px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00216958px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.1084787px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="196.65082" y="201.70485" id="text4519-0-3-4-3-9-9-2-09-6"><tspan sodipodi:role="line" id="tspan4517-9-3-9-5-0-0-2-3-2" x="196.65082" y="201.70485" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.1084787px">PgDn</tspan></text>
          <path inkscape:connector-curvature="0" id="path4526-40-0-8" d="m 194.63548,198.94485 v 2.20137" style="fill:none;fill-rule:evenodd;stroke:#3f3f3f;stroke-width:0.80000001;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;marker-end:url(#marker6559-6)"/>
        </g>
      </g>
      <g id="g16553-2-6-7" transform="translate(-15.015045,-22.633269)">
        <rect ry="1.1082512" y="198.01619" x="192.46515" height="5.1950383" width="15.880749" id="rect4515-3-7-2-0-4-3-0-7-0-5" style="color:#000000;clip-rule:nonzero;display:inline;overflow:visible;visibility:visible;opacity:1;isolation:auto;mix-blend-mode:normal;color-interpolation:sRGB;color-interpolation-filters:linearRGB;solid-color:#000000;solid-opacity:1;fill:#e0e0e0;fill-opacity:1;fill-rule:nonzero;stroke:#6c6c6c;stroke-width:0.5291667;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-dashoffset:0;stroke-opacity:1;marker:none;color-rendering:auto;image-rendering:auto;shape-rendering:auto;text-rendering:auto;enable-background:accumulate"/>
        <g id="g7175-9" transform="translate(0.15601748,2.796296e-6)">
          <text xml:space="preserve" style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.33914852px;line-height:2.71196771px;font-family:Roboto;-inkscape-font-specification:Roboto;letter-spacing:0.00216958px;word-spacing:0px;fill:#3f3f3f;fill-opacity:1;stroke:none;stroke-width:0.1084787px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" x="196.65082" y="201.70485" id="text4519-0-3-4-3-9-9-2-09-6-2"><tspan sodipodi:role="line" id="tspan4517-9-3-9-5-0-0-2-3-2-2" x="196.65082" y="201.70485" style="fill:#3f3f3f;fill-opacity:1;stroke-width:0.1084787px">PgUp</tspan></text>
          <path inkscape:connector-curvature="0" id="path4526-40-0-8-8" d="m 194.63548,202.28256 v -2.20137" style="fill:none;fill-rule:evenodd;stroke:#3f3f3f;stroke-width:0.80000001;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1;marker-end:url(#marker6559-6-2)"/>
        </g>
      </g>
      <path style="fill:none;fill-rule:evenodd;stroke:#c2c2c2;stroke-width:0.26499999;stroke-linecap:butt;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:0.26499999, 1.06000002;stroke-dashoffset:0;stroke-opacity:1" d="m 142.40089,177.98044 h 33.55172" id="path12412-4-91-9" inkscape:connector-curvature="0"/>
    </g>
  </g>
</svg>
> Src: Foalyy @ https://forum.kicad.info/t/cheatsheet-for-kicad/5247

https://llllllll.co/t/pcb-art-artfully-shaped-copper-traces/22027/2

<blockquote class="twitter-tweet" data-conversation="none"><p lang="en" dir="ltr">Always double check your footprints. 😬 <a href="https://t.co/BdTq9e9Byq">pic.twitter.com/BdTq9e9Byq</a></p>&mdash; Greg (@GregDavill) <a href="https://twitter.com/GregDavill/status/1252912461457420288?ref_src=twsrc%5Etfw">April 22, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>





# Chapter 24.1 - PCB 'Badges'

![badges]({static}/openg/badges.jpeg)

> Source: @AkioOhtori on Twitter





<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Hacked <a href="https://twitter.com/DCFurs?ref_src=twsrc%5Etfw">@DCFurs</a> badges to broadcast AWOO beacons! <a href="https://t.co/6CUdRlKHn1">pic.twitter.com/6CUdRlKHn1</a></p>&mdash; caudamus (@caudamus) <a href="https://twitter.com/caudamus/status/1160112857679220736?ref_src=twsrc%5Etfw">August 10, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

https://github.com/badgeek/svg2shenzhen



# Chapter 25 - We've got cores, let's use em'

[TODO]

https://lemire.me/blog/2020/01/30/cost-of-a-thread-in-c-under-linux/

C++ coroutines

not really threading, but process children

# Chapter 26 - Graphical Programming

Let's start in a way that's incredibly simple, and abstract away all the hard stuff at first by using a tool kit called 'Processing', which is available under that name from the community repo in arch. The default IDE that comes with it is awful to work in though, so go ahead and open up VSCode and grab the [Processing Language](https://marketplace.visualstudio.com/items?itemName=Tobiah.language-pde) add on, then in VSCode open up a new workspace folder and make a file called processing.pde, then open VSCode's command pallete (CTRL+Shift+P) and run 'Processing: create task file', after that you'll want to open the tasks.json file and change the `command:` line to have `"command": "/usr/bin/processing-java",` after that you can easily try new code just by re-building project the project with CTRL+Shift+B

Alright, setup out of the way, let's code! One of my first projects in processing was to make a [Topographic Map](https://en.wikipedia.org/wiki/Topographic_map), looking generator because I just find them quite visually appealing.

So, thinking about that problem, we clearly need data. probably an array of sorts with a bunch of values that have a smoothed relationship when viewing them as height map, then we'd want to look at the transition points between ranges of values.

Looking up random data generation in python, and you should stumble upon it's noise generation, and see that it uses [Perlin Noise](https://en.wikipedia.org/wiki/Perlin_noise), which upon looking at it should be obvious that it generates exactly what we want. So, looking up an example for that in processing we get to this page: https://processing.org/examples/noise2d.html

Well, that's already super close, so let's look at that code

```java
float increment = 0.02;

void setup() {
  size(640, 360);
}

void draw() {

  loadPixels();

  float xoff = 0.0; // Start xoff at 0
  float detail = map(mouseX, 0, width, 0.1, 0.6);
  noiseDetail(8, detail);

  // For every x,y coordinate in a 2D space, calculate a noise value and produce a brightness value
  for (int x = 0; x < width; x++) {
    xoff += increment;   // Increment xoff 
    float yoff = 0.0;   // For every xoff, start yoff at 0
    for (int y = 0; y < height; y++) {
      yoff += increment; // Increment yoff

      // Calculate noise and scale by 255
      float bright = noise(xoff, yoff) * 255;

      // Try using this line instead
      //float bright = random(0,255);

      // Set each pixel onscreen to a grayscale value
      pixels[x+y*width] = color(bright);
    }
  }

  updatePixels();
}
```

Alright, so line by line, it seems that line 1 is just defining a constant. Reading the Processing docs you'll find setup() should contain size() which takes two arguments that are the size of the output window in pixels (x and y) and that draw() is an endlessly looping function that updates that window.

Before going further let's copy and paste the code into VSCode and run it:

[TODO] add picture

[TODO]

C++ from scratch, JS electron app, Processing creative coding, Python Kivy or similar, Flutter (google lang), shaders (graphical editors), nimp, ronin, Nuklear

## GP-GPU


# Chapter 27 - (((())(()((()(()))))))

[TODO]

Functional Programming, and other paradigms : lisp, haskell, luna-lang.org, ronin


# Chapter 28 - Let's try out programmable logic

[TODO]

Finite State Machines, VHDL, Verilog, FPGA & CPLD internals


# Chapter 29 - Let's make our own SOC

Before we start, I'll warn you this isn't easy, but it's also not as bad as it sounds, and it's certainly not as [bad](https://www.youtube.com/watch?v=C8txvmXUIJQ&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz&index=141&t=0s) as it used to be

[TODO]

[FPGA Linux Kernel drivers](https://www.kernel.org/doc/html/latest/driver-api/fpga/index.html)

[An FPGA that only plays Doom](https://twitter.com/sylefeb/status/1258808333265514497)

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">The DooM-chip! It will run E1M1 till the end of times (or till power runs out, whichever comes first).<br>Algorithm is burned into wires, LUTs and flip-flops on an <a href="https://twitter.com/hashtag/FPGA?src=hash&amp;ref_src=twsrc%5Etfw">#FPGA</a>: no CPU, no opcodes, no instruction counter. <br>Running on Altera CycloneV + SDRAM. (1/n) <a href="https://t.co/wd7j4JnfWn">pic.twitter.com/wd7j4JnfWn</a></p>&mdash; Sylvain Lefebvre (@sylefeb) <a href="https://twitter.com/sylefeb/status/1258808333265514497?ref_src=twsrc%5Etfw">May 8, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

# Chapter 30 - 3D printing, CNC, and making things

[TODO]

While this book/guide/thing primarily focuses on the less mechancial-engieering-y side of things, it wouldn't make sense not to include at least a little about 3D printing, molding, materials, gears, springs, and the like. So, here goes:



[Giant Mechanical Iris! Cut on a CNC Router (YouTube)](https://www.youtube.com/watch?v=u9KHhsnLhfM&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz)

[Topology Optimization makes for some cool shelves (YouTube)](https://www.youtube.com/watch?v=3smr5CEdksc)

# Chapter 31 - Fine, I'll talk about AI

[Neural Network Architectures (YouTube)](https://www.youtube.com/watch?v=oJNHXPs0XDk&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz)

https://hific.github.io/

# Chapter 32 - Ham Radio

<img src=" /home/vega/git/local/openg2/content/openg/radioart.png " alt="radioart" style="zoom:50%;" />

> '137Mhz' by u/CashewHut

LORA

2.4Ghz patch antenna

electronically tunable filters

https://newhams.info/2017/02/17/rf-connector-types/

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">question of the day:<br>Analog TV is shut down in the US, right? so all the over-the-air TV is digital. And existing analog OTA frequencies are getting repurposed to other uses... so what am I seeing on UHF channel 60? it&#39;s got way more structure than the noise everywhere else. <a href="https://t.co/Jm9W9JsjgF">pic.twitter.com/Jm9W9JsjgF</a></p>&mdash; foone (@Foone) <a href="https://twitter.com/Foone/status/1240011033395073024?ref_src=twsrc%5Etfw">March 17, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

[Waveguides Explained (YouTube)](https://www.youtube.com/watch?v=r9-m17IPOco)

[How a Crystal Radio Works (YouTube)](https://www.youtube.com/watch?v=0-PParSmwtE&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz)

[So You Got an SDR (Twitch, DefCon28)](https://www.twitch.tv/videos/703442337)

# Wrapping up - Where to go from here

[TODO]

## Integrating other interests

## Projects to work on

## Contributing to Open Source


# Appendix A- Using the Linux Shell

## The Basic Commands

Of note, while the majority of these commands should be available on nearly any unix system you may use, many of the alternate recommendations may not be.

- **man** "man [command/topic]", ex, "man ascii", bring up an indepth manual page for a given command/topic.
  - Alternative recommendation: **tldr**, actually digestible and much faster when it gives enough info 
- **pwd** - Print working directory - literally just a command to tell you the file path to where you are
- **ls** - list - list the files/folders in the current directory, lots of flags available
  - Alternative recommendation: **exa** 
- **cd** - change directory, if you can't use this may god have mercy
  - Alternative recommendation: **j (for autojump)** 
- **mv** - move (or rename) a file to a new location (or name)
  - Alternative recommendation: **rsync**
- **rm** - remove a file/folder
- **touch** - create an empty file, or change last accessed time of existing file
- **mkdir & rmdir** - make or remove an empty directory (folder)
- **cat** - output the contents of a file
  - Alternative recommendation: **bat**, **less**, **more**, **fltrdr**, or an editor like **vim** or **nano** 
- **date** - output current date and time
- **chmod & chown** - change a file or folders permissions or owner
- **ln** - make a symbolic / hard link (shortcut)
- **du & df** - Disk usage and disk free, **df** will show you how much room you have left per disk, **du** serves to help find what's using up your disk
  - Alternative recommendation: **ncdu** doesn't suck. 
- **clear** - clear the screen of text- (only use in scripts)
  - Alternative recommendation: **ctrl + l** , much faster
- **passwd** - change a users password
- **sudo & su** - run a command as another user, typically root
- **head & tail** - print a number of lines from the top or bottom of a file
- **tee** - mostly used with pipes to print output to terminal as well as put it into a file
- **grep, sed, awk, tr** - the 'big four' commands used for text processing in a terminal. **grep** (and **egrep**) are used for search, for example running `ls | grep myfile` to confirm a file is indeed in a folder. **sed** is used for text/character replacement. **awk** is a programming language in it's own right, used primarily for selecting text fields by separator, for example only printing the permissions column in the output of `ls -l` 
- **w** -  show who is currently logged in and what they're running, epically applicable on shared servers if you need to see if there's an active ssh connection to your system
- **tar, gzip, bzip, zip** - all used for making compressed folders (like .zip files)
- **ssh , scp, ftp** - used for doing remote access, letting you run commands on one system from another
- **diff** - show the differences between two files
- **sort** - sort input by a number of criteria
- **uniq** - remove duplicate entries
  - **fdupes** is recommended if the goal is to identify duplicate files 
- **export** - used to set environment variables, these for example use `export EDITOR=nano` to use nano as your terminal text viewer by default.
- **systemctl** - literally system control, wayyy to big to cover quickly, used for everything from setting services to run on boot, shutting down/restarting the system, to viewing logs. Look up Systemd for more information
- **ip, ping, & dig** - **ip** is used to view as well as modify aspects of network configuration at the more hardware-level, such as turning on/off a networking interface.  **ping** allows you to see if you're able to reach a site/ip address, and **dig** allows you to check if you're able to turn a domain name to an ip, such as checking the ip address that archlinux.org points to with `dig archlinux.org`
- **ps** - process management: listing processing, finding the parent of a particular process, etc. 
- **free** - display information about system RAM usage
- **top** - a graphical-ish view of the running processes, ram, and CPU usage
  - Alternative recommendation: **htop**
- **kill**, murder a process in various ways
- **whereis** - find the location of an executable, ex `whereis ls` will tell you it's in `/usr/bin/ls`
- **wget, curl** - retrieve a web page
  - Alternative recommendation: **lynx**, **w3m**

## Tab Completion and faster navigation

Probably the most useful shortcut for using the shell is tab completion. This is used when you need to type a really long command or chain of commands, say I want to run ncmpcpp, a name that is both long and hard to remember, instead of just typing the full name I can type `ncm` and press tab, and ta-da suddenly the full name is inserted. If you happen to have another package that has multiple possible endings say you want to run ``lstopo`` but you have `ls, lsusb, lstopo` all on your system, most shells will display a menu underneath with all the possible options. This is nice for commands, but the true power comes in file names, say I want to run `cat /etc/pacman.d/mirrorlist` while that's not too awful to type out, you could easily type `cat /e` press tab, get `cat /etc/` add pac to get `cat /etc/pac` press tab, get `cat /etc/pacman.d/` type mir and tab and get the full command, while that sounds complicated it actually speeds using the command line up rather significantly and prevents spelling mistakes

Next up for navigation is directory shortcuts, these can be massive time savers, the most obvious is `~` which is just short hand for the location of the current shell users home directory, so in my case `~` is the exact same as typing out `/home/vega`. The next two have already been touched on which are `.` for the current directory and `..` for the previous directory. Depending on the shell and arbitrary number of dots may take you back and arbitrary number of directories. Give it a shot! If nothing else you can always use `../../..` to navigate back as necessary. Finally, `-` represents the last directory you were in so if your in `~/Downloads` and then `cd /etc/pacman.d/`, running `cd -` will bring you back to downloads.

The most advanced form of built in linux navigation comes in the form of `pushd` and `popd`, which as their names imply push and pop directories to a stack (a special kind of list) of directories. Like a stack of any item you can put or 'push' an item on top, and take or 'pop' an item off. Running `dirs -v` will show you a numbered list of the stack, you can navigate to the top item with `popd` or and abitrary item with `cd ~#` where # is the number as shown by `dirs -v`.

Finally, there's one more super handy way to get around your file system but it's a non-standard tool so most systems or servers you use other than your own will not have it installed, and that's autojump. Put simply it takes a good guess about where you want to go by only typing part of the name of a folder you've navigated to before, so say you have a long file path `/mnt/data/archived/january2000/pictures/family/vacation/` you can get back to it again by simply running `j vac` which is obviously much simpler. It works the vast majority of the time in practice, only having issues if you don't include enough letters leading to ambiguity.

## I/O redirection

for the hard core, you can read good documentation here: https://www.tldp.org/LDP/abs/html/io-redirection.html

* stdin (<) (<<)

[TODO]

* stdout (>) (>>)

[TODO]

* stderr (2>) (2>>)

[TODO]

Note, `&>` redirects both stderr and stdout

* pipes ( | ) and [nammed pipes](https://www.networkworld.com/article/3251853/why-use-named-pipes-on-linux.html)

Finally, the weirdest and rarely used `<>` operator can be used to directly attch file descriptions and read/write files dirctly, this is rearely used as it's kind of a pita, but if you need to script something advanced it's available. Stollen from the above advanced link:

> [j]<>filename
> 
> Open file "filename" for reading and writing,
> and assign file descriptor "j" to it.
> If "filename" does not exist, create it.
> If file descriptor "j" is not specified, default to fd 0, stdin.
> 
> An application of this is writing at a specified place in a file.
> 
> echo 1234567890 > File    # Write string to "File".
> exec 3<> File             # Open "File" and assign fd 3 to it.
> read -n 4 <&3             # Read only 4 characters.
> echo -n . >&3             # Write a decimal point there.
> exec 3>&-                 # Close fd 3.
> cat File                  # ==> 1234.67890
> 
> Random access, by golly.

## Wild Cards & Regex

Regular Expressions or 'Regex' are an incredibly powerful tool used to match strings in a logical way. For example, say you wanted to find all the phone numbers on page that started with the area code 555, the next three digits were any number, and the last four digits could be represented as either numbers or letters, and '-' separating each group. With regex that's easy, the regular expression for this looks like:

`5{3}-[0-9]{3}-[a-zA-Z0-9]{4}`

Which while I could explain, I think just staring at that a little while should make it obvious and ideally the mental effort will lead to a better understanding. Regex can do a lot more than this though. Go ahead and checkout https://regex101.com and give it a shot.

regex can be used with a bunch of common tools like awk, sed, and grep. This means you can do fancy things like chain ls and grep together with a pipe to find any file matching a pattern or chain commands to rename any file containing characters which may be invalid in NTFS ( The file system used by Windows) to be valid before doing a transfer.

Also, you may find [The Regular Expression Visualizer, Simulator & Cross-Compiler Tool](https://blog.robertelder.org/regular-expression-visualizer/) useful.

## Job Control

[TODO]

* fg

* bg

* jobs

* & operator

* Ctrl+z

* Ctrl+c / +d

## Shortcuts

- ctrl-z to bg process, fg to resume
- jobs -l or ps -a to see jobs
- reptyr to move
- pushd/popd & dirs to use path stack
- cd - to last dir
- history, and !№ to run that cmd
- ctrl-c/d to kill
- ctrl-l to clearscrn
- ctrl-u to clrline
- ctrl-r to search hist
- ctrl-left/right to nav args
- expansion with mv /path/meh.{md,txt}

## Aliases and customization

[TODO]

## Shell Scripting

[TODO] xargs, sed, awk, fzf, grep,

https://shellmagic.xyz/

https://wiki.bash-hackers.org/

## Alternative Shells

When we installed arch we actually changed the default shell from bash to zsh, but there are other options such as fish, csh, and xonsh among others

[TODO]

## Alternative commands

* bat
  * alternative to `cat`, capable of syntax highlighting and line numbering
* exa, lsd
  * alternatives to `ls`, eaiser on the eyes
  * You could also use `ranger` or `nnn` two fully featured terminal file browsers
* fd
  * altertnative to `find`, doesn't suck
* htop, gtop
  * alternatives to `top`, doesn't suck
* prettyping
  * alternative to `ping`, pretty
* diff-so-fancy, icdiff, [Delta](https://github.com/dandavison/delta)
  * alternative to `diff`, but better
* ncdu
  * while much slower than `du` it's great for finding out what's eating storage space
* [choose](https://github.com/theryangeary/choose)
  * user friendly, simple alternative to awk/cut

## Useful Non-Stock CLI Tools

* tldr
  
  * tldr, 'for too long didn't read' provides a quick, easy to read version of the man page for many common linux commands. Forget how to use `tar` ? just run `tldr tar`

* autojump
  
  * refrence above description in faster navigation

* mpd + ncmpcpp
  
  * 'music player daemon' and 'ncurses music player client plus plus' are two cli tools that work in tandem to provide an experiance that I presonally find superiour to any graphical music player

* irssi
  
  * full featured IRC client, chat right from your terminal

* screenfetch
  
  * get some nift stats about your terminal, add to your shell's RC file to be one of the cool kids

* [moreutils](https://joeyh.name/code/moreutils/)
  
  * "moreutils is a growing collection of the unix tools that nobody thought to write long ago when unix was young."

* [hr](https://github.com/octobanana/hr)
  
  * Need some way to visually seperate things, this literally just makes a horizontal line in the terminal

* [fltrdr](https://github.com/octobanana/fltrdr)
  
  * Wanna read at 1000wpm, this is the tool for you.

* [crex]( https://github.com/octobanana/crex)
  
  * test regular expressions in the terminal

* lynx, w3m, browsh
  
  * Browse the web from a terminal (not a joke and actually useful)

* entr
  
  * monitor file system for changes

* noti
  
  * send a graphical system notification when a command finishes

* progress
  
  * start a command and have no way to see what its doing (rsync, cp, etc)? This is your tool

* figlet, toilet, banner
  
  * makes big text, run `figlet Your Text Here` and see your text in big, ascii letters

* no more secrets
  
  * reveal text in a martix effect.. I'm streching the meaning of useful here

* stress-ng
  
  * stresstest your system in pretty much any super specific way you can think of, or hammer your cpu to test an overclock

* pandoc
  
  * convert between damn near any text format to any other format

* taskwarrior
  
  * keep track of To-Do's and tasks, can also be paired with timewarrior for timetracking

* waifu2x (many forks available)
  
  * Upscale and de-noise images zoom-and-enhance style but for real-    this ones' a bit GPU intensive because it uses AI

* youtube-dl
  
  * despite the name this tool can download videos or audio from almost any page on the internet, even supporting playlists in many cases too.

* [rat](https://github.com/ericfreese/rat)
  
  * "Compose shell commands to build terminal applications"

* magic-wormhole
  
  * tool for getting a file between two systems easily and secure, just run `wormhole send` and `wormhole recive` on the respective systems

* Ix, Gist
  
  * Paste tools, like pastebin

* DMIDecode
  
  * get info from BIOS

* hexyl
  
  * pretty terminal based hex viewer

* [UXY](https://github.com/sustrik/uxy)
  
  * "UXY tool also wraps some common UNIX tools and exports their output in UXY format."
    
    "UXY is a tool to manipulate UXY format, which is a basically a two-dimenstional table that's both human- and machine-readable."
    
    This gives a nice format for manipulation of commands though pipes for super complex shell scripting

* lsof
  
  * list what files a runnig process has open

While some of these may be included, they're some of the OG addons or tools to make included things better:

* tmux
  
  * multiplex your termianal, open multiple terminals in your terminal, usefull in non-graphicas ttys espically

* vim + extensions (neovim, spacevim, etc)
  
  * the old school text editor meets new school

* GDB + gef
  
  * GDB, the original debugger, has it's faults. GEF, a config file for GDB on steroids, fixes many of them. While originally made for exploit developers, many people use it for everyday debugging

* resh
  
  * replacement for ctrl+r history seach

## Common Graphical Linux Utils

[TODO]

Mostly taken from https://wiki.archlinux.org/index.php/List_of_applications and https://github.com/Kickball/awesome-selfhosted

## Graphical Enviroments++

Gnome, KDE, Pantheon,

Rofi, Polybar, j4,

Compton

Nitrogen, pywal, (feh),

## Free Graphical Utilities

### Office & Daily

Libreoffice, Xournal++,

thunar + bulk rename, nautilus, Filezilla, Deluge, qBitTorrent,

Firefox, Min, Vivalidi,

Marktext, Typora, Notable

Geogebra

Evolution

Evince

### A/V

Feh, Nomacs

Rawtherepee, Krita, Gimp, Darktable

Inkscape,

Blender, Pencil2D, OpenToonz

Goxel,

Pithos, Gnome-Music,

Cadence (jack2)

Audacity, Ardour, LMMS, non, Radium

Giada

VCV Rack

Guitarix

PureData, SonicPi, ORCA

Processing, VVVV,

VLC

DaVinci Resolve

Cheese, Motion, OBS

### Social

Thunderbird

LBRY

Discord, Telegram, qTox, HexChat, SRain, Riot/Fractal ,

### Programming

Okteta

Gitkraken

Code, Atom, Sublime, Code::Blocks, Eclipse, Netbeans, IntelliJ, Sublime

PyCharm, Spyder

Cutter, Node-Red

Etherape/cap, Wireshark

### Engineering

FreeCAD, LibreCAD, KiCad, CircuitSim, Fritzing

PulseView, Arduino, PlatformIO

### System

Alacritty, urxvt, Deepin-Terminal, Hyper,

Baobab, Filelight, GParted, VeraCrypt

Syncthing

Etcher

lsusb, lshw, lstopo, usbview,

Firewall frontend?

ClamAV

deepin-screesshot, scrot

### IRL

Gnome-Maps

Gnome-Weather

Celestia

Stellarium

### Other

GnuRadio, SDRAngel

## Paid Graphical Utilities

Renoise, Bitwig

## Self hosted / Services

Netdata

VPN (Wiregaurd)

Snort, Suritica

Gitea, Gitlab

Mathics

LAMP stack

Couchpotato, headphones

mpd, ampache

Owncloud, NextClound

Samba

DAT, IPFS

Convos.by

Ix , 0bin (pastebin)

Mathics

TaskWeb (TaskWarrior)


# Appendix B - Cheat Sheets and quick info

## Electrical Part Tables

[TODO]

* package types

* reading specs

* datasheets
  
  *

## Git



## Markdown

```html
# heading1
## heading2
### heading3

--- on it's own line will give you a diveder line

* for a bulleted list
*
alternatively,
- works too
- 

~~The world is flat.~~ for a strike though,
**to bold**
*to itilicize* 

1. for a numbered list
2.

​```python

​```

for a code box, where 'python' can be whatever language you want syntax highlighting for

`single backticks (note, these aren't apostrophes) for in line code too`

> lets you make a block quote

markdown also lets you use inline HTML, so, depending on the intent to render out to a pdf or webpage, you may be able to embed YouTube Videos or Tweets or whatever like I have through out this guide.

[title](https://www.example.com) for links
![alt text](image.jpg) for images

| Tables | Can     |
| ------ | ------- |
| Be     | Made    |
| Like   | This    |

Here's a sentence with a footnote. [^1]

[^1]: This is the footnote.

- [x] This is a task list
- [ ] As we go down this page
- [ ] Some of this syntax may not be supported

$ may let you type inline math in \LaTeX $, and $$$ for blocks, same as the code syntax

1^2 or 1~2 may let you write super and sub-script text as well.
```



# Appendix C - BOM

[TODO - FINAL REVSION]

| Item                                                                        | Price/item (approx)                | Quantity      |
| --------------------------------------------------------------------------- | ---------------------------------- | ------------- |
| Backup Hard Drive                                                           | 40/Tb                              | optional      |
| Thumb Drive                                                                 | 8                                  | 1             |
| Arduino nano                                                                | 5/board                            | 2             |
| ESP8266                                                                     | 5/board                            | 2             |
| STM32F103C8T6 w/ programmer                                                 | 8                                  | Optional      |
| [ICE-Breaker FPGA](https://www.crowdsupply.com/1bitsquared/icebreaker-fpga) | 80                                 | Optional      |
| 74-series logic IC's                                                        | 25                                 | Optional      |
| Assorted Resistors                                                          | 10                                 |               |
| Assorted Potentiometers                                                     | 5                                  |               |
| Assorted Capacitors (Ceramic)                                               | 10                                 |               |
| Assorted Capacitors (Electrolytic)                                          | 10                                 |               |
| Assorted Inductors                                                          | 5                                  |               |
| Assorted transistors                                                        | 8                                  |               |
| Assorted Diodes                                                             | 10                                 |               |
| Op-Amps (UA741)                                                             | 5/10                               |               |
| Assorted LEDs                                                               | 5                                  |               |
| Assorted Crystal osc                                                        |                                    |               |
| 555 Timers                                                                  | 4/10                               |               |
| Hook up wire                                                                |                                    |               |
| jumper wire                                                                 |                                    |               |
| Solid Core wire                                                             |                                    | Optional      |
| Breadboard                                                                  |                                    |               |
| Proto PCB                                                                   |                                    |               |
| Buttons                                                                     |                                    |               |
| DIP Switches                                                                |                                    |               |
| 7-segment display                                                           |                                    |               |
| OLED display                                                                | 6                                  |               |
| Accelerometer                                                               |                                    | Optional      |
| Servo                                                                       |                                    |               |
| Relay board                                                                 | 5                                  |               |
| Lab Power Supply                                                            | 35                                 | 1, 2 optional |
| Soldering Iron (TS100)                                                      | 75 (full kit)                      |               |
| Solder                                                                      | 9/spool                            |               |
| Flux                                                                        | 10/4oz                             |               |
| Osciliscope                                                                 | 30 for a shit, \350 for a good one | Optional-ish  |
| Multimeter                                                                  | 35                                 |               |
| Logic Analyzer                                                              | 10                                 |               |
| Software Defined Radio                                                      | 150                                | optional      |
| Proxmark3                                                                   |                                    |               |
|                                                                             |                                    |               |
|                                                                             |                                    |               |
| TOTAL                                                                       | BASE ;OPTINONAL                    |               |

Also we're going to be building a little server, for this you'll want

| Item                                                     | Price   | Quantity |
| -------------------------------------------------------- | ------- | -------- |
| ASRock J3455-ITX                                         | 75      | 1        |
| ITX, SFX case (APEX MI Series MI-008, with power supply) | 50      |          |
| DD3L                                                     | 40/8Gb  | 1        |
| 1Tb 2.5" hard drive (Redundant Storage)                  | 55/dive | 2        |
| 120Gb SSD (OS)                                           | 20      |          |
| Extra Network interface card                             | 25      | Optional |
| Total (Barebones)                                        |         |          |
| Total (Optional)                                         |         |          |

OR

You can find a used Dell Poweredge r610 or poweredge 1950. Many of these will come with out drives, but this option is probably cheaper than the above for better specs. However; these servers are LOUD, loud enough to not be comfortable in the same room and absolutely drink power. As mentioned in the server section, the hardware you use really doesn't matter, you'll just want at least two hard drives, an OS drive, and multiple network interfaces are encouraged. These things can all be added to just about any desktop though, so going to electronics thrift stores or auctions and finding a desktop works too.

## Getting things for cheap

salvage, auctions


# Appendix D - Reserved for future content

Politics was here. It has moved to OpPhilosophy

# Appendix E - Fixing issues

[TODO]

## Fix by working comparison


# Appendix F - Other Great Resources

https://news.ycombinator.com/

https://slashdot.org/

https://hackaday.com/

https://lobste.rs/

https://snapzu.com/

https://serializer.io/

https://stackoverflow.com/

http://textfiles.com/

https://www.alchemistowl.org/pocorgtfo/

https://n-o-d-e.news/

https://glitch.com/

https://media.ccc.de/

https://media.ccc.de/

[Crash Course: Comptuer Science, from PBS](https://www.youtube.com/watch?v=tpIctyqH29Q&list=PL8dPuuaLjXtNlUrzyH5r6jN9ulIgZBpdo)

## Learning Linux

https://linuxjourney.com

## Youtube

[ElectroBoom](https://www.youtube.com/channel/UCJ0-OtVpF0wOKEqT2Z1HEtA)

[CNLohr](https://www.youtube.com/channel/UCG7yIWtVwcENg_ZS-nahg5g)

[N-O-D-E](https://www.youtube.com/channel/UCvrLvII5oxSWEMEkszrxXEA)

[LiveOverflow](https://www.youtube.com/channel/UClcE-kVhqyiHCcjYwcpfj9w)

[Tom Scott](https://www.youtube.com/channel/UCBa659QWEk1AI4Tg--mrJ2A)

[bigclive](https://www.youtube.com/channel/UCtM5z2gkrGRuWd0JQMx76qA)

[AdoredTV](https://www.youtube.com/channel/UCHXbDmbswY3xNOmzr5O3zgA)

[3Blue1Brown](https://www.youtube.com/channel/UCYO_jab_esuFRV4b17AJtAw)

[Bryan Lunduke](https://www.youtube.com/channel/UCkK9UDm_ZNrq_rIXCz3xCGA)

[Level1Techs](https://www.youtube.com/channel/UC4w1YQAJMWOz4qtxinq55LQ)

## Podcasts

https://theamphour.com/

## Github info pages

https://github.com/dwmkerr/hacker-laws

https://github.com/lorin/resilience-engineering

https://github.com/alex/what-happens-when

https://github.com/Awesome-Windows/Awesome

https://github.com/dwmkerr/hacker-laws

https://github.com/cirosantilli/x86-assembly-cheat

https://github.com/kozross/awesome-c

https://github.com/rby90/Project-Based-Tutorials-in-C

https://github.com/trimstray/the-book-of-secret-knowledge

https://github.com/terkelg/awesome-creative-coding

https://github.com/toplap/awesome-livecoding

https://github.com/sindresorhus/awesome

https://github.com/apsdehal/awesome-ctf#readme

https://github.com/carpedm20/awesome-hacking#readme

https://github.com/sdnds-tw/awesome-sdn#readme

https://github.com/jagracey/Awesome-Unicode#readme

https://github.com/netspooky/Simple-Virtual-CPU

## Books and Papers

https://github.com/EbookFoundation/free-programming-books#readme
https://scihub.org/

## Blogs

http://blog.cleancoder.com/

## DIY Pages

https://www.instructables.com/circuits/

## Non-Technical

https://longform.org/
https://www.metafilter.com/
https://relevant.community/relevant/top

## Some really cool, inspirational people

## Security

Netspooky @ https://twitter.com/netspooky , https://twitter.com/netspooky
LiveOverflow @ https://twitter.com/LiveOverflow
https://twitter.com/ANDnXOR
https://twitter.com/DCFurs
https://twitter.com/gynvael
https://twitter.com/ZonkSec
https://twitter.com/Viss
https://twitter.com/hacks4pancakes
https://twitter.com/malwareunicorn
https://twitter.com/da_667
https://twitter.com/0xCODEs
https://twitter.com/zerosum0x0
https://twitter.com/x0rz -- https://discord.0day.rocks/

## Programming/Live coding

RavenKwok @ https://twitter.com/RavenKwok
Neauoire & RekkaBell @ https://merveilles.town/@neauoire , http://100r.co/
https://twitter.com/RavenKwok
https://twitter.com/generateme_blog
https://twitter.com/manoloidee

## Just generally nerdy

https://twitter.com/Level1Techs / https://twitter.com/tekwendell
https://twitter.com/Snowden
https://twitter.com/oshpark
https://twitter.com/climagic
https://archive.org/
https://media.ccc.de/v/31c3_-_6373_-_en_-_saal_6_-_201412291600_-_the_only_thing_we_know_about_cyberspace_is_that_its_640x480_-_olia_lialina#t=621


# Appendix G - History

[TODO] Move this elsewhere

[Adam Savage's Computer History Collection! (Youtube)](https://www.youtube.com/watch?v=TfwKYUmoC-k&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz&index=17)

## Perserving data

https://media.ccc.de/v/31c3_-_6373_-_en_-_saal_6_-_201412291600_-_the_only_thing_we_know_about_cyberspace_is_that_its_640x480_-_olia_lialina#t=3641


# Appendix H - Other odd things

// Potentially move these elsewhere

## Polygot Files

elf hacking, POC||GTFO

## Strange thought

Main not fn

order of variable declaration (paged out 001 pg 33)

generic midi use (paged out 002 pg 24)

rop

## Blog posts that dont fit anywhere eles but that you should totally read

- https://hackaday.com/2020/02/20/we-ruined-status-leds-heres-why-that-needs-to-change/
- [Foone one weird adapters (Twitter Thread)](https://twitter.com/Foone/status/1224206741602062336)
- [Building the World's Weirdest Fan (YouTube)](https://www.youtube.com/watch?v=77Y7DHfoFOk&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz)
- [Minetest Circuit Challenge (YouTube)](https://www.youtube.com/watch?v=nI8Q1bqT8QU&list=PL5cGwrD7cv8hK-qxPqRB25Dzs0BtLWhXz)
- [A post by the guy who made Task Manager](https://old.reddit.com/r/techsupport/comments/gqb915/i_wrote_task_manager_and_i_just_remembered/)
- https://n-o-d-e.live/zine/NODE_VOL_02.pdf


