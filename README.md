![Audio Waveforms - Simform LLC.](https://raw.githubusercontent.com/47gurvinder/audio_waveforms/main/preview/banner.png)

# Audio Waveforms GDX Plus

[![pub package](https://img.shields.io/pub/v/audio_waveforms_gdx_plus.svg)](https://pub.dev/packages/audio_waveforms_gdx_plus)
[![license](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/47gurvinder/audio_waveforms/blob/main/LICENSE)
[![Flutter platforms](https://img.shields.io/badge/platforms-Android%20%7C%20iOS%20%7C%20macOS-02569B.svg)](https://github.com/47gurvinder/audio_waveforms)

A Flutter package to generate waveforms while recording audio or from audio files. Features gesture controls to scroll through waveforms or seek positions, with extensive customization options.

This community-maintained package continues the original
[`audio_waveforms`](https://github.com/SimformSolutionsPvtLtd/audio_waveforms) project by
[Simform Solutions](https://github.com/SimformSolutionsPvtLtd). Original authorship, contributor
credits, and MIT license attribution are preserved.

## Preview

![Audio Waveforms Demo](https://raw.githubusercontent.com/47gurvinder/audio_waveforms/main/preview/demo_v2_0_0.gif)

## Features

- **Recording**: Record audio with customizable encoder settings
- **Waveform Display**: Visualize audio in real-time during recording
- **Playback**: Play audio files with waveform visualization
- **Gesture Controls**: Scroll through waveforms and seek to specific positions
- **Customization**: Style waveforms with colors, gradients, and various appearance options
- **Waveform Extraction**: Extract and save waveform data for better performance

## Documentation

See the [complete implementation guide](doc/documentation.md) for platform setup, recorder and
player examples, waveform extraction, customization, advanced usage, and migration guidance.

## Installation

```yaml
dependencies:
  audio_waveforms_gdx_plus: ^2.1.0
```

Then import the library:

```dart
import 'package:audio_waveforms_gdx_plus/audio_waveforms_gdx_plus.dart';
```

## Compatibility

| Platform | Minimum version |
| --- | --- |
| Android | API 21 |
| iOS | 13.0 |
| macOS | 10.14 |

The package requires Dart 3.12 or later and Flutter 3.44 or later. Android recording requires
microphone permission; iOS and macOS apps must provide a microphone usage description. See the
[installation guide](doc/documentation.md#installation) for full setup.

## Usage

Create a recorder controller and provide it to `AudioWaveforms`:

```dart
final recorderController = RecorderController();

await recorderController.record();

AudioWaveforms(
  size: const Size(double.infinity, 64),
  recorderController: recorderController,
);
```

Prepare an audio file and display its waveform with a player controller:

```dart
final playerController = PlayerController();
await playerController.preparePlayer(path: audioFilePath);

AudioFileWaveforms(
  size: const Size(double.infinity, 64),
  playerController: playerController,
);
```

Dispose controllers when they are no longer needed. The
[example application](example/lib/main.dart) and [complete documentation](doc/documentation.md)
cover permissions, playback controls, styling, events, and waveform extraction in detail.

## Maintained Package

`audio_waveforms_gdx_plus` is a community-maintained continuation of the original Audio Waveforms
project. This repository continues maintenance because the upstream package is no longer actively
maintained. Credit for the original project remains with Simform Solutions and the upstream
contributors listed in the [documentation](doc/documentation.md#contributors) and repository
history.

## Feature Requests

Feature requests and Pull Requests are always welcome.

- [Request a feature](https://github.com/47gurvinder/audio_waveforms/issues/new?template=feature_request.yml)
- [Report a bug](https://github.com/47gurvinder/audio_waveforms/issues)
- [Open a Pull Request](https://github.com/47gurvinder/audio_waveforms/pulls)
- Read the [contribution guidelines](CONTRIBUTING.md)

## Need Help?

Need help with integration, plugin maintenance, consulting, or Flutter development? Visit
[gurwinderdevx.com](https://gurwinderdevx.com) to discuss your project.

## Maintainer

Maintained by **Gurwinder Singh**.

- [Website](https://gurwinderdevx.com)
- [GitHub](https://github.com/47gurvinder)
- [LinkedIn](https://www.linkedin.com/in/gurwinderDevX)
- [Upwork](https://www.upwork.com/freelancers/gurwinderdevx)

## Acknowledgements

Audio Waveforms was originally created by
[Simform Solutions](https://github.com/SimformSolutionsPvtLtd/audio_waveforms). Thank you to the
original authors and every upstream contributor whose work forms the foundation of this package.

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE), which retains the original
Simform Solutions copyright and license notice.
