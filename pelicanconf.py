#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = 'Open Source'
SITENAME = 'Opinionated Guides'
SITEURL = ''

PATH = 'content'
STATIC_PATHS = ['gifs','opdesign','openg','opmusic','chapters']

THEME =  'medius'

TIMEZONE = 'America/Chicago'

DEFAULT_LANG = 'en'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
LINKS = (('Vega Deftwing Patreon', 'https://www.patreon.com/deftwing'),
         ('Vega Deftwing Personal Page', 'http://deftwing.us/'),
         ('Vega Deftwing Telegram', 't.me/vegadeftwing'),
         ('OpGuides SRC', 'https://github.com/opinionatedguide/opinionatedguide.github.io-src'),)

# Social widget
SOCIAL = (('You can add links in your config file', '#'),
          ('Another social link', '#'),)

MARKDOWN = {
  'extension_configs': {
    'markdown.extensions.toc': {
      'title': 'Table of Contents:'
    },
    'markdown.extensions.codehilite': {'css_class': 'highlight'},
    'markdown.extensions.extra': {},
    'markdown.extensions.meta': {},
  },
  'output_format': 'html5',
}

PLUGIN_PATHS = ["plugins"]
PLUGINS = ["render_math","filetime_from_git"]

DEFAULT_PAGINATION = 10

# Uncomment following line if you want document-relative URLs when developing
#RELATIVE_URLS = True