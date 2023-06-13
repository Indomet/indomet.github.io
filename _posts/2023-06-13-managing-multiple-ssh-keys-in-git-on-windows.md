---
title: Managing Multiple SSH Keys in Git on Windows
author: Asim
date: 2023-06-13 17:22:04 -0400
categories: [Git,Multiple-SSH-Keys]
tags: [Git,Gitlab,Github]
pin: false
render_with_liquid: false
---

### **Managing Multiple SSH Keys in Git on Windows**
1. Create the first SSH key by running the following command:
```bash
ssh-keygen -t rsa -C "someone@example.com" -f "/c/Users/username_for_pc/.ssh/first_username"
```

2. Next, create the second SSH key by executing the command:
```bash
ssh-keygen -t rsa -C "someone2@example.com" -f "/c/Users/username_for_pc/.ssh/second_username"
```

3. Now, we need to create a *config* file without any extension. You can either use VS Code or download the [config](https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/Indomet/indomet.github.io/blob/main/assets/website-files/Managing%20Multiple%20SSH%20Keys%20in%20Git%20on%20Windows/config) file and modify it. Here's the content of the config file:
```bash
# GitLab configuration
Host git.chalmers.se
  HostName git.chalmers.se
  User git
  IdentityFile C:\Users\username_for_pc\.ssh\first_username

# GitHub configuration
Host github.com #if both of them are github then you can change the first one to github-second
  HostName github.com
  User git
  IdentityFile C:\Users\username_for_pc\.ssh\second_username
```

4. Additionally, we need to edit the [*.gitconfig*](https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/Indomet/indomet.github.io/blob/main/assets/website-files/Managing%20Multiple%20SSH%20Keys%20in%20Git%20on%20Windows/.gitconfig) file, located at "C:\Users\username_for_pc\.gitconfig," if you have two different Git providers (e.g., GitLab and GitHub). Modify the file as follows:
```bash
[credential "https://git.chalmers.se"]
	provider = generic
[user]
	name = first_username
	email = someone@example.com

[credential "https://github.com"]
	provider = generic
[user]
	name = second_username
	email = someone2@example.com
```

That's it! You have successfully configured multiple SSH keys for Git. I hope you find this information helpful.
