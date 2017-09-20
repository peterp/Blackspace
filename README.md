### Blackspace

Blackspace is an application that adds "blank" spaces (or "spacers") to the macOS Dock.

![](https://github.com/perfaram/Blackspace/blob/master/dock_example.png)

This is most commonly used as a way to place apps into logical categories.

To remove a space drag it off the Dock, like you would any other icon.

#### Download

[Download Blackspace.app](https://github.com/peterp/Blackspace/releases/download/1.1.0/Blackspace.zip)

#### How does it work?

It uses a programmatic equivalent to the following commands to add Dock spacers, so if you're comfortable with using the Terminal then just do the following instead:

```
> defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
> killall Dock
```

Or, if you want a thin spacer, replaces `spacer-tile` by `small-spacer-tile`.

Enjoy.
