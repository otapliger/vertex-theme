AC_INIT(
  [vertex-theme],
  [20170128],
  [https://github.com/otapliger/vertex-theme/issues],
  [vertex-theme],
  [https://github.com/otapliger/vertex-theme],
  []
)

AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([m4])
AM_INIT_AUTOMAKE([foreign])
AC_PROG_MKDIR_P

VERTEX_ENABLE([GTK2], [gtk2], [GTK2], [disable])
VERTEX_ENABLE([GTK3], [gtk3], [GTK3], [disable])
VERTEX_ENABLE([DARK], [dark], [Vertex Dark], [disable])
VERTEX_ENABLE([LIGHT], [light], [Vertex Light], [disable])
VERTEX_ENABLE([GNOME_SHELL], [gnome-shell], [GNOME Shell], [disable])

VERTEX_GNOME

AC_CONFIG_FILES([
  common/Makefile
  Makefile
])

AC_OUTPUT
