# DeviceColor

⚠️ Don't use this code in production - device color is part of the private API ⚠️

## About

My favorite addition to demo apps or hackathon projects is to add different color schemes for different device colors. Can be achieved easily in Objective-C using the private api. (Please note you should **not** publish apps using the private api).

Note it's possible to accomplish the same results with a bridging header, but I wanted a 'pure' Swift solution. Inspiration and help from this stackoverflow [post](http://stackoverflow.com/a/35231921/3729825).

If someone know or created a public color scheme for all different devices please ping me. I'd like to add it to my example project.

## Usage

Fork or download the project, put the extension `UIDevice+DeviceColor.swift` in your own project, get the color using `UIDevice.current.deviceInfoForKey(key: "DeviceEnclosureColor")` or `UIDevice.current.deviceInfoForKey(key: "DeviceColor")`. the returned string can be parsed with an extension to UIcolor e.g [arshad's gist](https://gist.github.com/arshad/de147c42d7b3063ef7bc) or similar.

Preferably you want to check if the method is available before calling the method to avoid crashes if the API changes.

## Acknowledgment

Check out [ortwingentz](https://twitter.com/ortwingentz)'s example [project](https://github.com/futuretap/DeviceColors) in Objective-C. He also made a collection of device colors 🙌! Also, please dupe his [radar](http://www.openradar.me/15209345), hopefully we get to use the device color in future iOS versions.

## License

MIT, see `LICENSE.md`