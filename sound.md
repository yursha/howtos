# Hardware
- S/PDIF (Sony/Philiphs Digital Interface Format) (digital audio)
  + coaxial (orange RCA cable)
  + optical (Toslink - Toshiba link square black, can look like headphone jack)
- HDMI (digital audio + video)
- Pair of white and red RCA cables (analog audio)

# ALSA
- https://wiki.archlinux.org/index.php/Advanced_Linux_Sound_Architecture
- https://wiki.archlinux.org/index.php/Advanced_Linux_Sound_Architecture/Troubleshooting
- `alsamixer`
- `alsa` package
- `pulseaudio` package

```
/proc/asound tree

├── card0
│   ├── codec#0
│   ├── eld#0.0
│   ├── eld#0.1
│   ├── eld#0.2
│   ├── id
│   ├── pcm3p
│   │   ├── info
│   │   ├── sub0
│   │   │   ├── hw_params
│   │   │   ├── info
│   │   │   ├── prealloc
│   │   │   ├── prealloc_max
│   │   │   ├── status
│   │   │   ├── sw_params
│   │   │   └── xrun_injection
│   │   └── xrun_debug
│   ├── pcm7p
│   │   ├── info
│   │   ├── sub0
│   │   │   ├── hw_params
│   │   │   ├── info
│   │   │   ├── prealloc
│   │   │   ├── prealloc_max
│   │   │   ├── status
│   │   │   ├── sw_params
│   │   │   └── xrun_injection
│   │   └── xrun_debug
│   └── pcm8p
│       ├── info
│       ├── sub0
│       │   ├── hw_params
│       │   ├── info
│       │   ├── prealloc
│       │   ├── prealloc_max
│       │   ├── status
│       │   ├── sw_params
│       │   └── xrun_injection
│       └── xrun_debug
├── card1
│   ├── codec#0
│   ├── id
│   ├── pcm0c
│   │   ├── info
│   │   ├── sub0
│   │   │   ├── hw_params
│   │   │   ├── info
│   │   │   ├── prealloc
│   │   │   ├── prealloc_max
│   │   │   ├── status
│   │   │   ├── sw_params
│   │   │   └── xrun_injection
│   │   └── xrun_debug
│   ├── pcm0p
│   │   ├── info
│   │   ├── sub0
│   │   │   ├── hw_params
│   │   │   ├── info
│   │   │   ├── prealloc
│   │   │   ├── prealloc_max
│   │   │   ├── status
│   │   │   ├── sw_params
│   │   │   └── xrun_injection
│   │   └── xrun_debug
│   └── pcm1p
│       ├── info
│       ├── sub0
│       │   ├── hw_params
│       │   ├── info
│       │   ├── prealloc
│       │   ├── prealloc_max
│       │   ├── status
│       │   ├── sw_params
│       │   └── xrun_injection
│       └── xrun_debug
├── cards
├── devices
├── HDMI -> card0
├── hwdep
├── modules
├── oss
│   ├── devices
│   └── sndstat
├── PCH -> card1
├── pcm
├── seq
│   ├── clients
│   ├── drivers
│   ├── queues
│   └── timer
├── timers
└── version
```

