// -*- Mode: C++; indent-tabs-mode: nil; c-basic-offset: 2 -*-

/* gstreamermm - a C++ wrapper for gstreamer
 *
 * Copyright 2008 The gstreamermm Development Team
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library; if not, write to the Free
 * Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 */

#include <gstreamermm.h>
#include <iostream>

int main (int argc, char* argv[])
{
  Gst::init(argc, argv);

  Gst::TagList taglist;

  if (taglist)
  {
    std::cout << "TagList is invalid.  Exiting." << std::endl;
    exit(1);
  }

  taglist.add(Gst::TAG_TITLE, "My Song");
  taglist.add(Gst::TAG_ARTIST, "Artist");
  taglist.add(Gst::TAG_BITRATE, (guint) 192);

  Glib::ustring title;
  if (taglist.get(Gst::TAG_TITLE, title))
    std::cout << "Tag title is '" << title << "'." << std::endl;

  Glib::ustring artist;
  if (taglist.get(Gst::TAG_ARTIST, artist))
    std::cout << "Tag artist is '" << artist << "'." << std::endl;

  guint rate;
  if (taglist.get(Gst::TAG_BITRATE, rate))
    std::cout << "Tag bit-rate is " << rate << "." << std::endl;

  return 0;
}