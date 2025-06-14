themedir = $(datadir)/themes/Vertex
themedarkdir = $(datadir)/themes/Vertex-Dark
themelightdir  = $(datadir)/themes/Vertex-Light

ithemedir = $(DESTDIR)$(themedir)
ithemedarkdir = $(DESTDIR)$(themedarkdir)
ithemelightdir = $(DESTDIR)$(themelightdir)

install-data-local:
	$(MKDIR_P) $(ithemedir)
	cp $(srcdir)/index.theme $(ithemedir)

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)
	cp $(srcdir)/index.theme-dark $(ithemedarkdir)/index.theme
endif # ENABLE_DARK

if ENABLE_LIGHT
	$(MKDIR_P) $(ithemelightdir)
	cp $(srcdir)/index.theme-light $(ithemelightdir)/index.theme
endif # ENABLE_LIGHT

if ENABLE_GNOME_SHELL
	$(MKDIR_P) $(ithemedir)/gnome-shell

	cd $(srcdir)/gnome-shell/$(GNOME_VERSION) && cp -R \
		assets \
		gnome-shell.css \
		$(ithemedir)/gnome-shell
endif # ENABLE_GNOME_SHELL

if ENABLE_GTK2
	cp -R $(srcdir)/gtk-2.0 $(ithemedir)
	cd $(ithemedir)/gtk-2.0 && rm -f gtkrc-light

if ENABLE_DARK
	cp -R $(srcdir)/gtk-2.0-dark $(ithemedarkdir)/gtk-2.0
endif # ENABLE_DARK

if ENABLE_LIGHT
	cp -R $(srcdir)/gtk-2.0 $(ithemelightdir)
	cd $(ithemelightdir)/gtk-2.0 && mv gtkrc-light gtkrc
endif # ENABLE_LIGHT
endif # ENABLE_GTK2

if ENABLE_GTK3
	cp -RH $(srcdir)/gtk-3.0/$(GNOME_VERSION) $(ithemedir)/gtk-3.0

	cd $(ithemedir)/gtk-3.0 && rm -rf \
		gtk-light.css \
		thumbnail-dark.png \
		assets.svg \
		README.md \
		sass \
		*.sh \
		*.txt \
		.nvmrc \
		gulpfile.js \
		package.json

if ENABLE_DARK
	cp -RH $(srcdir)/gtk-3.0/$(GNOME_VERSION) $(ithemedarkdir)/gtk-3.0

	cd $(ithemedarkdir)/gtk-3.0 && rm -rf \
		gtk.css \
		gtk-light.css \
		assets.svg \
		README.md \
		sass \
		*.sh \
		*.txt \
		.nvmrc \
		gulpfile.js \
		package.json

	cd $(ithemedarkdir)/gtk-3.0 && mv gtk-dark.css gtk.css && mv thumbnail-dark.png thumbnail.png

endif # ENABLE_DARK

if ENABLE_LIGHT
	cp -RH $(srcdir)/gtk-3.0/$(GNOME_VERSION) $(ithemelightdir)/gtk-3.0

	cd $(ithemelightdir)/gtk-3.0 && rm -rf \
		thumbnail-dark.png \
		assets.svg \
		README.md \
		sass \
		*.sh \
		*.txt \
		.nvmrc \
		gulpfile.js \
		package.json

	cd $(ithemelightdir)/gtk-3.0 && mv gtk-light.css gtk.css

endif # ENABLE_LIGHT
endif # ENABLE_GTK3

uninstall-local:
	rm -rf $(ithemedir)

if ENABLE_DARK
	rm -rf $(ithemedarkdir)
endif # ENABLE_DARK

if ENABLE_LIGHT
	rm -rf $(ithemelightdir)
endif # ENABLE_LIGHT

EXTRA_DIST = $(srcdir)/gnome-shell \
  $(srcdir)/gtk-2.0-dark \
  $(srcdir)/gtk-2.0 \
  $(srcdir)/gtk-3.0 \
  $(srcdir)/index.theme \
  $(srcdir)/index.theme-dark \
  $(srcdir)/index.theme-light
