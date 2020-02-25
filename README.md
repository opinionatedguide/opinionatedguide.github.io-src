# The Opinionated Guide to Learning Computer and Electrical Enginerring
### Version 0.1, Contributions welcome

View the main guide [here](https://opinionatedguide.github.io/OpinionatedEngineering.html)

This repo also contains some other guides, deemed to specific or off topic for the main guide:

[Opinionated Music](https://opinionatedguide.github.io/OpinionatedMusic.html), a guide to music production hardware, software, and theory

[Opinionated Design](https://opinionatedguide.github.io/OpinionatedDesign.html), a guide to design and art

---
#### Purpose:
I've got a lot of random knowledge floating around in my skull, and I've done countless of hours of internet browsing to find cool things that intrest me.
Along the way I've tried hundreds of programs, tools, and hacks and I've found which ones work for me and which ones don't. Furthermore, I get asked on a regular basis "How'd your learn all of this?" and the answer is by failure, time commitment, and going down a lot of dead ends. I still think these things are necessary for learning, but I also think a straight forward guide that leads people through these things while still providing a challange would be useful.

There are plenty of 'Awesome Whatever' repos on github, but there's far too much information there to wade through to pick what resources are truly important and avoid reading or watching the same thing a dozen times. After the 256th explanation, I not only know how a buffer overflow works, but I'm tired of hearing about them. The point of this is to save you time as you learn. A crash course that avoids all the repetition and that goes in depth enough to really hit the advanced topics, but friendly enough to not feel like a text book.

That, and it's a pretty slick way of taking notes for my own use and finding gaps in my own knowledge ┐( ˘_˘)┌


---
#### Milestones:

- 0.1 - Early development, still in the planning stage
- 0.2 - Chapter headings and project outline complete
- 0.3 - Inital content phase completed
- 0.4 - Re evaluate content, fill gaps, remove unnecssary items
- 0.5 - Edit for technicall correctness
- 0.6 - Edit for style, spelling, etc
- 0.7 - Full review markup
- 0.8 - Edits from review
- 0.9 - Cosmetics
- 1.0 - Inital release

---
# Contributing
Written using marktext and vscode, but really use whatever as long as it doesn't cause issues
OpinionatedEng.md Developed in chapters folder as seprate files, rendered into single file by either **chupdate.sh** when you don't wish to push your changes or **gitupdate.sh** when you do. The only dependancy is the Pelican static site generator which can be found at https://blog.getpelican.com/ and is likely available in your distributions repositories if you use Linux.

The site uses the 'medius' pelican theme from https://blog.getpelican.com/.

Pelican - the static site generator used for this project - can be a bit picky about the markdown file formatting, so if you notice any errors, try to figure out what's causing them, but it's okay to push anyway- just be sure to open an issue

Please do your best to keep image and gif sizes down. The documents are served over a single, static page, so each byte counts.

On the note of media, do your best to ensure that if copyright content is used that the owner of the copyright is okay with it. This is a free, educational use project but copyright still applies to us nevertheless.

If you only wish to contribute content and don't want to deal with any of the static site end that's fine, just add content to the necessary .md file and do a git push directly **without** using gitupdate.sh. The next person to use the gitupdate.sh script will be able to merge your changes into the site.

If you would like to repeatedly contribute, please open an issue and I'll hapily add you as a contributor to avoid the need for many pull requests.
