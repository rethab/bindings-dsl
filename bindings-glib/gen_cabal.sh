#!/bin/sh

cat <<-"(head-end)"
	cabal-version: >= 1.4
	name: bindings-glib
	synopsis:
	  Low level bindings to GLib.
	version: 0.1.5
	license: BSD3
	license-file: LICENSE
	maintainer: Maurício C. Antunes <mauricio.antunes@gmail.com>
	author: Maurício C. Antunes
	build-type: Simple
	category: FFI
	bug-reports: http://bitbucket.org/mauricio/bindings-dsl/issues
	library
	  hs-source-dirs: src
	  extensions:
	    ForeignFunctionInterface
	  build-depends:
	    base >= 3 && < 5,
	    bindings-DSL >= 1.0.7 && < 1.1
	  pkgconfig-depends: glib-2.0 >= 2.22.2, gthread-2.0 >= 2.22.2
(head-end)

printf "  exposed-modules:\n    Bindings.GLib\n"

base="\
	Fundamentals:library.gnome.org/devel/glib/stable/glib-fundamentals.html \
	CoreApplicationSupport:library.gnome.org/devel/glib/stable/glib-core.html \
	Utilities:library.gnome.org/devel/glib/stable/glib-utilities.html \
	DataTypes:library.gnome.org/devel/glib/stable/glib-data-types.html"

imports=$(mktemp)

for b in $base ; do
	module=$(printf "%s" $b | cut -d ':' -f 1)
	printf "    Bindings.GLib.%s\n" $module
	dir=src/Bindings/GLib/$module
	doc=$(printf "%s" $b | cut -d ':' -f 2)
	printf -- "-- | <http://%s>\nmodule Bindings.GLib.%s (\n" $doc $module > $dir.hs
	printf " ) where\n" > $imports
	sub=$(ls -1 $dir | grep '.hsc$' | sed 's/\.hsc$//')
	for s in $sub ; do
		printf "    Bindings.GLib.%s.%s\n" $module $s
		printf "  module Bindings.GLib.%s.%s,\n" $module $s >> $dir.hs
		printf "import Bindings.GLib.%s.%s\n" $module $s >> $imports
	done
	cat $imports >> $dir.hs
done

rm $imports

printf "  c-sources:\n"

for f in $(ls -1 src/*.c) ; do
	printf "    %s\n" $f
done

