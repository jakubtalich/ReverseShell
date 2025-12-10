# Reverse Shells Written in Nim

Simple reverse shells written in Nim that bypass Microsoft Defender detection.


## Tested Operating Systems

- Windows 10/11
- UNIXes


## Compiling

### NimShell1

For Windows compile to EXE using MinGW.

```bash
nim c -d:mingw NimShell1.nim
```

### NimShell2

For Windows compile to EXE using MinGW: runs in the background once executed ("--app:gui" flag) - minimum detections.

```bash
nim c -d:mingw --app:gui NimShell2.nim
```

### NimShell3

```bash
nim c -d:mingw --app:gui NimShell3.nim
```

## Listening

```bash
nc -nvlp XXXX
```
Where XXXX is the listener's port.
