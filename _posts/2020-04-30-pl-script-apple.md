--- 
layout: post 
title: "Script: Apple Script" 
keywords: [] 
description: 
category: "PL"
tags: ["Script"] 
--- 
{% include JB/setup %}


```shell
osascript -e 'tell application "System Events"
    tell application "Adobe Acrobat Reader DC" to activate
    keystroke "h" using {command down, control down}
    end tell'
``` 


#### Reference
1. [Complete list of AppleScript key
   codes](https://eastmanreference.com/complete-list-of-applescript-key-codes)
