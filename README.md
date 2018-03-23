# 💻🔀🗑️ Random declutter

**Tech companies help you amass data – we help you clean it**

Have fun while cleaning up your digital life


## How it works

Show _one_ random object at a time, from different sources:
- Files: pictures, notes, …
- Mails
- Contacts
- Events
- Apps: uninstall, or mute notifications, remove startup programs
- text messages, Signal
- browser: tabs, bookmarks, extensions, Pocket, …
- map markers
- Twitter: Tweets, favorites, follows, direct messages, authorized apps, …
- Github: notifications, stars, repos, watched repos, follows, authorized apps, …
- Youtube: subscriptions, favorites
- Steam: games, wishlist
- Meetup: groups
- expired Passbook passes
- people can add their own modules, like If This Then That
- …

Swipe right to keep or swipe left to delete, tap to open. Deletions fill a counter. Possible further actions: favorite, share, etc.

Optionally limit to:
- Only things older than 3 months
- Don’t show already favorited things
- Archive instead of delete


## Implementation

- Possibly as app for: Desktop, Android, iOS, Nextcloud
- Terminal command to find random file: `find ~ -type f -print0 | shuf -zn1`
	- Expanded functionality in `random-declutter.sh` script
- In Nextcloud it could be done via: Write own controller, get the userFolder, do a search with a random letter on that, and then take a random result (be sure to check if it is a file)
- Maybe helpful for Twitter operations: [random-tweet](https://github.com/michaelbutler/random-tweet)

- Should have [nice animations](https://daneden.github.io/animate.css/)
- Probably use a [card swipe JS library](https://github.com/gajus/swing)



## Related apps

- [Triage](http://triage.cc/): for iOS and only for unread mails, not random
- [Data Detox](https://datadetox.myshadow.org/detox): take control of your digital life, made by Mozilla and Tactical Tech
- [unroll.me](https://unroll.me/): unsubscribing from newsletters, not random
- [Deseat.me](https://www.deseat.me/), [JustDelete.me](http://justdelete.me), [AccountKiller](https://www.accountkiller.com/en/): deleting accounts, not random
- [Mailstrom](https://mailstrom.co/): helps manage your email with lots of filters, no randomness
- [Manageflitter](https://manageflitter.com/): helps unfollowing people on Twitter, with lots of filters but no randomness
- [Octobox](https://octobox.io/): helps manage Github issues with lots of filters, no randomness
- [Random Decluttering Generator](http://less-stuff.co.uk/random-decluttering-generator/): for physical things



## Further reading

- [»How Clutter Affects Your Brain (and What You Can Do About It)« from lifehacker.com](https://lifehacker.com/how-clutter-affects-your-brain-and-what-you-can-do-abo-662647035)
- [Zeromalist](http://verekia.com/zeromalist/)
