## Copyright 2009 The gstreamermm Development Team
##
## This library is free software: you can redistribute it and/or modify it
## under the terms of the GNU Lesser General Public License as published
## by the Free Software Foundation, either version 2.1 of the License,
## or (at your option) any later version.
##
## This library is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
## Lesser General Public License for more details.
##
## You should have received a copy of the GNU Lesser General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

AUTOMAKE_OPTIONS = subdir-objects

if ENABLE_GUI_EXAMPLES
optional_examples = media_player_gtkmm/example ogg_player_gtkmm/example
examples_cppflags = $(GUI_EXAMPLES_CFLAGS)
else
optional_examples =
examples_cppflags = $(GSTREAMERMM_CFLAGS)
endif

noinst_PROGRAMS =						\
	audio_video_muxer/example			\
	dynamic_changing_element/example	\
	dynamic_changing_source/example		\
	element_link/example				\
	hello_world/example					\
	ogg_player/example					\
	ogg_rewriter/example				\
	typefind/example					\
	optiongroup/example					\
	$(optional_examples)

gstreamermm_includes = -I$(top_builddir)/gstreamer $(if $(srcdir:.=),-I$(top_srcdir)/gstreamer)
local_libgstreamermm = $(top_builddir)/gstreamer/gstreamermm/libgstreamermm-$(GSTREAMERMM_API_VERSION).la

AM_CPPFLAGS = -I$(top_builddir) $(gstreamermm_includes) $(examples_cppflags)
AM_CXXFLAGS = $(GSTREAMERMM_WXXFLAGS) -std=c++0x
LDADD = $(GSTREAMERMM_LIBS) $(local_libgstreamermm)

audio_video_muxer_example_SOURCES			= audio_video_muxer/main.cc
dynamic_changing_element_example_SOURCES	= dynamic_changing_element/main.cc
dynamic_changing_source_example_SOURCES		= dynamic_changing_source/main.cc
element_link_example_SOURCES 				= element_link/element_link.cc
hello_world_example_SOURCES 				= hello_world/main.cc
ogg_rewriter_example_SOURCES	 			= ogg_rewriter/main.cc
media_player_gtkmm_example_SOURCES	 		= media_player_gtkmm/main.cc \
												media_player_gtkmm/player_window.cc \
												media_player_gtkmm/player_window.h
media_player_gtkmm_example_LDADD 			= $(GUI_EXAMPLES_LIBS) $(local_libgstreamermm)
ogg_player_example_SOURCES					= ogg_player/main.cc
ogg_player_gtkmm_example_SOURCES			= ogg_player_gtkmm/main.cc \
												ogg_player_gtkmm/player_window.cc \
												ogg_player_gtkmm/player_window.h
ogg_player_gtkmm_example_LDADD				= $(GUI_EXAMPLES_LIBS) $(local_libgstreamermm)
optiongroup_example_SOURCES					= optiongroup/main.cc
typefind_example_SOURCES					= typefind/main.cc
