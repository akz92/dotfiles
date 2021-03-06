# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Uncomment this to still load settings configured via autoconfig.yml
# config.load_autoconfig()

# Aliases for commands. The keys of the given dictionary are the
# aliases, while the values are the commands they map to.
# Type: Dict
c.aliases = {'w': 'session-save', 'q': 'quit', 'wq': 'quit --save', 'gmail': 'open -t https://gmail.com', 'localhostEdools': 'open -t http://demo.edools-dev.com:3000/', 'gmailEdools': 'open -t https://mail.google.com/mail/u/?authuser=lucas@edools.com', 'pipefy': 'open -t https://app.pipefy.com/pipes/263956#', 'mopidy': 'open -t http://localhost:6680/moped', 'instapaper-add': 'spawn --userscript ~/.config/qutebrowser/instapaper_add', 'load_work': 'session-load work', 'instapaper': 'open -t https://instapaper.com', 'view-in-mpv': 'spawn --userscript ~/.config/qutebrowser/view_in_mpv'}

# This setting can be used to map keys to other keys. When the key used
# as dictionary-key is pressed, the binding for the key used as
# dictionary-value is invoked instead. This is useful for global
# remappings of keys, for example to map Ctrl-[ to Escape. Note that
# when a key is bound (via `bindings.default` or `bindings.commands`),
# the mapping is ignored.
# Type: Dict
c.bindings.key_mappings = {'<Ctrl-[>': '<Escape>', '<Ctrl-6>': '<Ctrl-^>', '<Ctrl-M>': '<Return>', '<Ctrl-J>': '<Return>', '<Shift-Return>': '<Return>', '<Enter>': '<Return>', '<Shift-Enter>': '<Return>', '<Ctrl-Enter>': '<Ctrl-Return>'}

# Background color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.bg = '#6f7783'

# Bottom border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.bottom = '#6f7783'

# Top border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.top = '#6f7783'

# Background color of the completion widget for even rows.
# Type: QssColor
c.colors.completion.even.bg = '#4a515d'

# Background color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.bg = '#383c46'

# Bottom border color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.border.bottom = '#383c46'

# Top border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.item.selected.border.top = '#383c46'

# Foreground color of the selected completion item.
# Type: QtColor
c.colors.completion.item.selected.fg = '#fff'

# Foreground color of the matched text in the completion.
# Type: QssColor
c.colors.completion.match.fg = '#afe785'

# Background color of the completion widget for odd rows.
# Type: QssColor
c.colors.completion.odd.bg = '#4a515d'

# Background color for the download bar.
# Type: QssColor
c.colors.downloads.bar.bg = '#383c46'

# Color gradient start for download backgrounds.
# Type: QtColor
c.colors.downloads.start.bg = '#72bef2'

# Color gradient stop for download backgrounds.
# Type: QtColor
c.colors.downloads.stop.bg = 'green'

# Color gradient interpolation system for download backgrounds.
# Type: ColorSystem
# Valid values:
#   - rgb: Interpolate in the RGB color system.
#   - hsv: Interpolate in the HSV color system.
#   - hsl: Interpolate in the HSL color system.
#   - none: Don't show a gradient.
c.colors.downloads.system.bg = 'none'

# Color gradient interpolation system for download text.
# Type: ColorSystem
# Valid values:
#   - rgb: Interpolate in the RGB color system.
#   - hsv: Interpolate in the HSV color system.
#   - hsl: Interpolate in the HSL color system.
#   - none: Don't show a gradient.
c.colors.downloads.system.fg = 'none'

# Background color for hints. Note that you can use a `rgba(...)` value
# for transparency.
# Type: QssColor
c.colors.hints.bg = '#feda31'

# Font color for hints.
# Type: QssColor
c.colors.hints.fg = '#4a400e'

# Font color for the matched part of hints.
# Type: QssColor
c.colors.hints.match.fg = '#dcbc2a'

# Background color of the keyhint widget.
# Type: QssColor
c.colors.keyhint.bg = 'rgba(0, 0, 0, 65%)'

# Highlight color for keys to complete the current keychain.
# Type: QssColor
c.colors.keyhint.suffix.fg = '#FFFF00'

# Background color of an error message.
# Type: QssColor
c.colors.messages.error.bg = '#e88388'

# Background color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.bg = '#383c46'

# Background color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.bg = '#689F38'

# Background color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.bg = '#383c46'

# Foreground color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.fg = 'white'

# Foreground color of the URL in the statusbar for hovered links.
# Type: QssColor
c.colors.statusbar.url.hover.fg = '#81D4FA'

# Foreground color of the URL in the statusbar on successful load
# (http).
# Type: QssColor
c.colors.statusbar.url.success.http.fg = '#9CCC65'

# Foreground color of the URL in the statusbar on successful load
# (https).
# Type: QssColor
c.colors.statusbar.url.success.https.fg = '#9CCC65'

# Foreground color of the URL in the statusbar when there's a warning.
# Type: QssColor
c.colors.statusbar.url.warn.fg = '#039BE5'

# Background color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.bg = '#6f7783'

# Background color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.bg = '#383c46'

# The height of the completion, in px or as percentage of the window.
# Type: PercOrInt
c.completion.height = '50%'

# Shrink the completion to be smaller than the configured size if there
# are no scrollbars.
# Type: Bool
c.completion.shrink = False

# Whether quitting the application requires a confirmation.
# Type: ConfirmQuit
# Valid values:
#   - always: Always show a confirmation.
#   - multiple-tabs: Show a confirmation if multiple tabs are opened.
#   - downloads: Show a confirmation if downloads are running
#   - never: Never show a confirmation.
c.confirm_quit = ['never']

# List of domains that should always be loaded, despite being ad-
# blocked. Domains may contain * and ? wildcards and are otherwise
# required to exactly match the requested domain. Local domains are
# always exempt from hostblocking.
# Type: List of String
c.content.host_blocking.whitelist = ['piwik.org', 'herokuapp.com']

# Enables or disables plugins in Web pages.
# Type: Bool
c.content.plugins = True

# The directory to save downloads to. If unset, a sensible os-specific
# default is used.
# Type: Directory
c.downloads.location.directory = '~/Downloads'

# Prompt the user for the download location. If set to false,
# `downloads.location.directory` will be used.
# Type: Bool
c.downloads.location.prompt = False

# Font used in the completion categories.
# Type: Font
c.fonts.completion.category = 'bold 10pt Monaco'

# Font used in the completion widget.
# Type: Font
c.fonts.completion.entry = '10pt Monaco'

# Font used for the debugging console.
# Type: QtFont
c.fonts.debug_console = '10pt Monaco'

# Font used for the downloadbar.
# Type: Font
c.fonts.downloads = '10pt Monaco'

# Font used for the hints.
# Type: Font
c.fonts.hints = 'bold 10pt Monaco'

# Font used in the keyhint widget.
# Type: Font
c.fonts.keyhint = '10pt Monaco'

# Font used for error messages.
# Type: Font
c.fonts.messages.error = '10pt Monaco'

# Font used for info messages.
# Type: Font
c.fonts.messages.info = '10pt Monaco'

# Font used for warning messages.
# Type: Font
c.fonts.messages.warning = '10pt Monaco'

# Font used for prompts.
# Type: Font
c.fonts.prompts = '9pt sans-serif'

# Font used in the statusbar.
# Type: Font
c.fonts.statusbar = '10pt Monaco'

# Font used in the tab bar.
# Type: QtFont
c.fonts.tabs = '10pt Monaco'

# Font family for sans-serif fonts.
# Type: FontFamily
c.fonts.web.family.sans_serif = None

# The default font size for regular text.
# Type: Int
c.fonts.web.size.default = 16

# CSS border value for hints.
# Type: String
c.hints.border = '2px solid #feda31'

# Chars used for hint strings.
# Type: UniqueCharString
c.hints.chars = 'arstdhneio'

# Make chars in hint strings uppercase.
# Type: Bool
c.hints.uppercase = True

# Time from pressing a key to seeing the keyhint dialog (ms).
# Type: Int
c.keyhint.delay = 500

# The rounding radius for the edges of prompts.
# Type: Int
c.prompt.radius = 3

# Additional arguments to pass to Qt, without leading `--`. With
# QtWebEngine, some Chromium arguments (see
# https://peter.sh/experiments/chromium-command-line-switches/ for a
# list) will work. This setting requires a restart.
# Type: List of String
c.qt.args = ['debug']

# Hide the statusbar unless a message is shown.
# Type: Bool
c.statusbar.hide = False

# Padding for the statusbar.
# Type: Padding
c.statusbar.padding = {'top': 5, 'bottom': 5, 'right': 5, 'left': 5}

# Scaling for favicons in the tab bar. The tab size is unchanged, so big
# favicons also require extra `tabs.padding`.
# Type: Float
c.tabs.favicons.scale = 1.5

# Padding around text for tabs
# Type: Padding
c.tabs.padding = {'top': 5, 'bottom': 5, 'left': 5, 'right': 5}

# When to show the tab bar.
# Type: String
# Valid values:
#   - always: Always show the tab bar.
#   - never: Always hide the tab bar.
#   - multiple: Hide the tab bar if only one tab is open.
#   - switching: Show the tab bar when switching tabs.
c.tabs.show = 'always'

# The format to use for the tab title. The following placeholders are
# defined:  * `{perc}`: The percentage as a string like `[10%]`. *
# `{perc_raw}`: The raw percentage, e.g. `10` * `{title}`: The title of
# the current web page * `{title_sep}`: The string ` - ` if a title is
# set, empty otherwise. * `{index}`: The index of this tab. * `{id}`:
# The internal tab ID of this tab. * `{scroll_pos}`: The page scroll
# position. * `{host}`: The host of the current web page. * `{backend}`:
# Either ''webkit'' or ''webengine'' * `{private}` : Indicates when
# private mode is enabled.
# Type: FormatString
c.tabs.title.format = '{private} {index}: {title}'

# Width of the progress indicator (0 to disable).
# Type: Int
c.tabs.width.indicator = 0

# The page to open if :open -t/-b/-w is used without URL. Use
# `about:blank` for a blank page.
# Type: FuzzyUrl
c.url.default_page = 'http://google.com'

# Definitions of search engines which can be used via the address bar.
# Maps a searchengine name (such as `DEFAULT`, or `ddg`) to a URL with a
# `{}` placeholder. The placeholder will be replaced by the search term,
# use `{{` and `}}` for literal `{`/`}` signs. The searchengine named
# `DEFAULT` is used when `url.auto_search` is turned on and something
# else than a URL was entered to be opened. Other search engines can be
# used by prepending the search engine name to the search term, e.g.
# `:open google qutebrowser`.
# Type: Dict
c.url.searchengines = {'DEFAULT': 'https://google.com/search?q={}', 'y': 'http://www.youtube.com/results?search_query={}'}

# The page(s) to open at the start.
# Type: List of FuzzyUrl, or FuzzyUrl
c.url.start_pages = 'https://google.com'

# The format to use for the window title. The following placeholders are
# defined:  * `{perc}`: The percentage as a string like `[10%]`. *
# `{perc_raw}`: The raw percentage, e.g. `10` * `{title}`: The title of
# the current web page * `{title_sep}`: The string ` - ` if a title is
# set, empty otherwise. * `{id}`: The internal window ID of this window.
# * `{scroll_pos}`: The page scroll position. * `{host}`: The host of
# the current web page. * `{backend}`: Either ''webkit'' or
# ''webengine'' * `{private}` : Indicates when private mode is enabled.
# Type: FormatString
c.window.title_format = '{perc}{title}'

# Bindings for normal mode
config.bind(',g', 'gmail')
config.bind(',i', 'instapaper')
config.bind(',s', 'mopidy')
config.bind(';p', 'hint links fill :open -p {hint-url}')
config.bind('<ctrl+w>', 'close')
config.bind('<g', 'gmailEdools')
config.bind('<l', 'localhostEdools')
config.bind('<p', 'pipefy')
config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')
config.bind('\\d', 'download-delete')
config.bind('\\o', 'download-open')
config.bind('sf', None)
config.bind('si', 'instapaper-add')
config.bind('sk', None)
config.bind('sl', None)
config.bind('slw', 'load_work')
config.bind('sm', 'view-in-mpv')
config.bind('ss', None)
config.bind('wo', 'set-cmd-text -s :open -t -- {url:pretty}')
config.bind('wp', 'open -t -- {clipboard}')