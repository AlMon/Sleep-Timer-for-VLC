# Sleep Timer for VLC (macOS)

Sleep Timer for VLC is a script designed for macOS users that automatically pauses and closes VLC media player after a specified duration. By pausing the media first, VLC saves the time at which it was paused, allowing you to resume playback from the same position when you reopen the file.

## Prerequisites
- macOS
- VLC media player installed
- Git installed (optional)

## Installation
1. Clone the GitHub repository:

```
git clone https://github.com/AlMon/Sleep-Timer-for-VLC.git
```

If you don't have Git installed or prefer to download the repository manually, you can download the repository as a ZIP file and extract it to a folder of your choice.

2. Open a terminal window and navigate to the Sleep-Timer-for-VLC directory:

``` 
cd /path/to/Sleep-Timer-for-VLC
```

*Replace /path/to with the appropriate path.*

## Usage

To use the script, run it from the terminal, providing the duration (in minutes) after which you want VLC to pause and close:

```
./vlc_auto_pause_close.sh <duration_in_minutes>
```

Replace `<duration_in_minutes>` with the desired duration in minutes (e.g., `./vlc_auto_pause_close.sh 10` to pause and close VLC after 10 minutes).

The script will display a countdown timer in the terminal, showing the remaining time until VLC will be paused and closed. When the timer reaches zero, the script will pause the media, wait for a moment to ensure the pause command has been processed, and then close VLC.

## Example
To pause and close VLC after 5 minutes, run:

```
./vlc_auto_pause_close.sh 5
```

The output will look like this:

```
Closing VLC in 5 minutes...
Time remaining: 05:00
...
Time remaining: 00:01
VLC closed.
```

## Contributing
I welcome any suggestions or improvements. If you have an idea, feel free to create an issue or submit a pull request on the GitHub repository. Your contributions are appreciated!
