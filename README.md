### Blackspace

Blackspace is an application that adds "blank" spaces to the OS X dock. 

![](https://github.com/peterp/Blackspace/blob/master/dock_example.png)

This is most commonly used as a way to seperate apps into logical categories.

To remove a space drag it off the Dock, like you would any other icon.

#### [Download](https://github.com/peterp/Blackspace/releases/download/1.0/Blackspace.app.zip)

[Download Blackspace.app](https://github.com/peterp/Blackspace/releases/download/1.0/Blackspace.app.zip)


#### How does it work?

It uses the following commands to achieve this, so if you're comfortable with using the Terminal then just do the following instead:

```
> defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
> killall Dock
```

Enjoy.
