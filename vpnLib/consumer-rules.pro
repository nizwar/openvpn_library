# Rules applied to every app that depends on this library.
#
# VPN profiles are persisted with Java serialization and read back when the
# service is restarted by the system (always-on VPN, START_STICKY), the native
# helpers are bound through JNI, and several classes are looked up by name.
# Shrinking or renaming any of them breaks reconnects in release builds.
-keep class de.blinkt.openvpn.** { *; }
-dontwarn de.blinkt.openvpn.**
