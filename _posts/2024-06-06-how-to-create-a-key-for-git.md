---
layout: post
title: How to create a SSH key for git
categories: [Git,SSH key]
tags: [Git,Gitlab,Github]
---

### Step 1: Configure Git with Your User Information

1. Open a terminal (Command Prompt, Git Bash, or terminal emulator on macOS/Linux).
2. Configure your Git username and email address:

    ```sh
    git config --global user.name "USERNAME"
    git config --global user.email "someone@email.com"
    ```

### Step 2: Generate a New SSH Key

1. In the terminal, generate a new SSH key by running:

    ```sh
    ssh-keygen
    ```

2. Press Enter to accept the default file location when prompted:

    ```sh
    Enter a file in which to save the key (/home/you/.ssh/id_rsa): [Press enter]
    ```

3. Optionally, enter a passphrase for additional security, or press Enter to skip:

    ```sh
    Enter passphrase (empty for no passphrase):
    Enter same passphrase again:
    ```

### Step 3: Add the SSH Key to Your GitHub Account

1. Copy the SSH public key to your clipboard:

    - On macOS:

        ```sh
        pbcopy < ~/.ssh/id_rsa.pub
        ```

    - On Windows :

        ```sh
        type %USERPROFILE%\.ssh\id_rsa.pub | clip
        ```

    - On Windows (Only Git Bash not cmd):

        ```sh
        clip < ~/.ssh/id_rsa.pub
        ```

    - On Linux:

        ```sh
        xclip -sel clip < ~/.ssh/id_rsa.pub
        ```

2. Log in to your GitHub account.
3. Go to **Settings** by clicking your profile photo in the upper-right corner and selecting **Settings**.
4. In the left sidebar, click **SSH and GPG keys**.
5. Click **New SSH key**.
6. In the "Title" field, add a descriptive label (e.g., "Personal MacBook").
7. Paste your copied SSH key into the "Key" field.
8. Click **Add SSH key** and confirm your GitHub password if prompted.

You're all set! You can now start committing to your repositories using SSH.