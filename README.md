<p align="center">
    <img src="https://raw.githubusercontent.com/keeporsweep/keeporsweep.net/master/images/icon-256.png" height="128">
</p>
<h3 align="center"><a href="http://keeporsweep.net">Keep or Sweep</a></h3>
<p align="center">Randomly declutter your digital life!<p>
<p align="center">
    <img src="https://raw.githubusercontent.com/keeporsweep/keeporsweep.net/master/images/screenshot-desktop.png" height="500">
</p>

**Tech companies help you amass data – we help you clean it**

Have fun while getting things done! 😊 You will see a random element of your data at a time and you decide whether to ✅keep or ❌sweep it.



## Start keeping or sweeping!

Download for [⊞Windows](https://github.com/keeporsweep/keeporsweep-desktop/releases/download/v0.1.0/Keep-or-Sweep.exe), [🍏macOS](https://github.com/keeporsweep/keeporsweep-desktop/releases/download/v0.1.0/Keep-or-Sweep.app.zip) & [🐧Linux](https://github.com/keeporsweep/keeporsweep-desktop/releases/download/v0.1.0/Keep-or-Sweep-Linux.Sweep). And if you like it, [come contribute](https://github.com/keeporsweep/keeporsweep-desktop)!

Also available as [☁️Nextcloud app](https://apps.nextcloud.com/apps/keeporsweep) – [contributions welcome](https://github.com/keeporsweep/keeporsweep) too! 😍



## Roadmap

The plan is to make this extendable so you can randomly clean your:
- [x] 📁 Files, pictures, notes, …
- [ ] 💌 Mails
- [ ] 👥 Contacts
- [ ] 📆 Events
- [ ] 📱 Apps: uninstall, or mute notifications, remove startup programs
- [ ] 💬 text messages, Signal
- [ ] 🌐 browser: tabs, bookmarks, extensions, Pocket, …
- [ ] 🗺️ map markers / favorites
- [ ] 🐦 Twitter: Tweets, favorites, follows, direct messages, authorized apps, …
- [ ] 🐙🐱 Github: notifications, stars, repos, watched repos, follows, authorized apps, …
- [ ] 📼 Youtube: subscriptions, favorites
- [ ] 💨 Steam: games, wishlist
- [ ] 🤝 Meetup: groups
- [ ] 🛂 expired Passbook passes
- [ ] 🎉 … anything you can imagine! You could add your own module :)



## Related apps

- [Triage](http://triage.cc/): for iOS and only for unread mails, not random
- [Plain](http://www.plainemail.com/): prototype for macOS and Gmail only, not random
- [Data Detox](https://datadetox.myshadow.org/detox): take control of your digital life, made by Mozilla and Tactical Tech
- [unroll.me](https://unroll.me/): unsubscribing from newsletters, not random
- [Deseat.me](https://www.deseat.me/), [JustDelete.me](http://justdelete.me), [AccountKiller](https://www.accountkiller.com/en/): deleting accounts, not random
- [Mailstrom](https://mailstrom.co/): helps manage your email with lots of filters, no randomness
- [Manageflitter](https://manageflitter.com/): helps unfollowing people on Twitter, with lots of filters but no randomness
- [Octobox](https://octobox.io/): helps manage Github issues with lots of filters, no randomness
- [Random Decluttering Generator](http://less-stuff.co.uk/random-decluttering-generator/): for physical things
- Very basic prototype shell script at `keeporsweep.sh` (On macOS you need to [install coreutils](https://apple.stackexchange.com/questions/142860/install-shuf-on-os-x/142864) and then use gshuf)
- And the aliases with which it all started (put them in your `.bashrc` if you want to try):
```
# Show a random file, or some biggest, or some oldest
alias random='find /home/jan/Nextcloud/ -type f -print0 | shuf -zn1'
alias biggest='find /home/jan/Nextcloud/ -type f -exec du -Sh {} + | sort -rh | head -n 10'
alias oldest="find /home/jan/Nextcloud/ -type f -printf '%T+ %p\n' | sort | head -n 20"
```



## Further reading

- [»How Clutter Affects Your Brain (and What You Can Do About It)« from lifehacker.com](https://lifehacker.com/how-clutter-affects-your-brain-and-what-you-can-do-abo-662647035)
- [Zeromalist](http://verekia.com/zeromalist/)
