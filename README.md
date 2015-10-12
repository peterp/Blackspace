### Blackspace

Blackspace is a simple application that adds "blank" spaces to the OS X dock. 




![](https://github.com/peterp/Blackspace/blob/master/dock_example.png)

![Download](https://github.com/peterp/Blackspace/blob/master/Blackspace.app)

It uses the following commands to achieve this, so if you're comfortable with using the Terminal then just do that.

```
	defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
	killall Dock
```

To remove a space, simply drag it off the Dock like you would any other icon.



