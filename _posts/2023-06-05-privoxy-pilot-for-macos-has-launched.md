---
title: Privoxy Pilot for MacOS has launched
author: brian
date: 2023-06-05 18:10:13 -0400
categories: [code,project]
tags: [Privoxy,privoxy-pilot-macos]
pin: false 
render_with_liquid: false
---

#### **About Privoxy Pilot**

[privoxy-pilot-macos](https://github.com/brian-beeler/privoxy-pilot-macos) is a set of bash scripts and files to better manage Privoxy on macOS.

[Privoxy](https://www.privoxy.org) is a wonderful project to which I'm in debt to its contributors. My project makes managing Privoxy's settings on macOS a bit easier. Features include:

- terminal based status panel with copious status details including:
  - up time
  - current filter group with their filters lists
  - past events
  
    ![ppilot status screen](https://raw.githubusercontent.com/brian-beeler/privoxy-pilot-macos/main/ppilot_status_screen.png)

- detailed logging of events as transacted with Privoxy Pilot
- ability to easily create custom filter lists
- ability to easily create filter groups that contain multiple filter lists
- ability to easily switch between different filter groups from a single command line
- Uses Homebrew to make Privoxy installation very easy
- incorporates block lists from the [Block List Project](https://github.com/blocklistproject/Lists)

When stable I plan on using what has been done here and building the privoxy-pilot-ChromeOS project.

#### **Why I created Privoxy Pilot**

I like most others don't like being forced to accept having our actions tracked by companies that refuse to give us the option to opt out of such tracking, or advertising that also tracks us in the same way. While web browsers do have an "opt out" option for receiving targeted advertising it is also optional for advertisers to honor that "opt out" request and to no one's surprise few honor that "opt out" request. There is simply too much profit in selling the details of our life, both online and offline, for amoral corporations to pass up. Privoxy and by extension Privoxy Pilot allows us to regain much of our privacy taken by those amoral corporations.

So why not just use an ad blocking browser extension? They are easier to install and use, and as anyone that's used them knows there's limits on what they can block. Also websites are becoming better at detecting such browser extensions and are either finding ways to avoid their blocking techniques or just blocking a person from accessing their website until they disable their ad blocking extension [for the host's website]. Also thanks to Google's most recent changes to the rules governing Chrome browser extensions ad blocking and privacy extensions' ability to do what they do will be limited if not completely made impossible.

Google Chrome's [manifest v3](https://developer.chrome.com/docs/extensions/mv3/intro/) extension standard will make it difficult for ad blockers to function as they currently do under the current manifest v2 standard which will make blocking ads in Chrome much more difficult. Manifest v3 is a needed revision for security reasons but it will also make life much more difficult for the developers of ad blocking and privacy extensions in Chrome. Unsurprising other major websites have been following Google's lead to block access to their websites if they detect you're using a ad blocking browser extension. For more on this issue I recommend reading "[Mozilla solves the Manifest V3 puzzle to save ad blockers from Chromapocalypse](https://adguard.com/en/blog/firefox-manifestv3-chrome-adblocking.html)"

"Chris Titus Tech" has a good [video](https://www.youtube.com/watch?v=oQL9dVsEXT0) explaining this issue of manifest v3 and how Google is also starting to block access to YouTube if you're using an ad blocking extension. He discusses [Pi-hole](https://github.com/pi-hole/pi-hole) that acts as a "[DNS sinkhole](https://en.wikipedia.org/wiki/DNS_sinkhole)" which is also a way to remove unwanted advertising and tracking websites from your web browser. Like Privoxy Pilot Pi-hole also uses Block List Project filters. 

Privoxy avoids the issues faced by web browser ad blocking extensions by blocking intrusive websites before they are ever seen by your web browser. Proxy servers simply are much more effective at blocking unwanted web traffic than web browser extension and doing it in a way that's transparent to the website that is foisting those unwanted websites upon you.

I prefer using a proxy server method instead of a DNS sinkhole because it is easier for a host administrator to bypass if required, easier for an administrator to shut down if required and more difficult for users to bypass if their local network administrator has required them to use a proxy server but I highly recommend checking out their project as it has benefits over using a proxy server.

So not just use a VPN to block advertising and tracking websites? Remember the sentence "There is simply too much profit in selling the details of our life, both online and offline, for amoral corporations to pass up"? The same goes for VPN companies. Some are very good at protecting their users' privacy and some do little to protect their users' privacy and there's few options to sort out the good actors from the bad ones. On top of that you're paying for the privilege of the hope of privacy when in reality that hope might be misguided. VPNs have some important functions but depending on them to guarantee that tracking and advertising websites are not tracking you isn't one of them.

Privoxy and Privoxy Pilot are open source so there's no where to hide from the truth of what our software does. It's not possible for VPNs to have that level of transparently.

But why not just use Privoxy instead of also adding Privoxy Pilot? Privoxy is an amazing program and I am in the debt of all those that contributed to it. In the interest of stability many times some features must be omitted. For example if Privoxy included support for the Block List Project, like Privoxy Pilot does, and for whatever reason BLP's filter lists went offline then that would effect their entire user base. I agree with Privoxy's choices and support them, and feel there's room to additions to their application for those that find a need for such additions.





