from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import default_colors, reverse, bold, normal, default


class Color():
    def __init__(self):
        self.background = 17
        self.background_alt = 39
        self.foreground = 19
        self.primary = 87
        self.secondary = 170
        self.alert = 255
        self.disable = 57

class Cyberpunk(ColorScheme):
    progress_bar_color = 108

    def set_browser(self, context):
        if context.selected:
            self.attr = reverse
        else:
            self.attr = normal
        if context.empty or context.error:
            self.fg = self.color.alert
            self.bg = self.color.background
        if context.border:
            self.fg = self.color.secondary
        if context.image:
            self.fg = self.color.primary
        if context.video:
            self.fg = self.color.primary
        if context.audio:
            self.fg = self.color.primary
        if context.document:
            self.fg = self.color.primary
        if context.container:
            self.attr |= bold
            self.fg = self.color.primary
        if context.directory:
            self.attr |= bold
        elif context.executable and not any((context.media, context.container, context.fifo, context.socket)):
            self.attr |= bold
            self.fg = self.color.primary
        if context.socket:
            self.fg = self.color.socket
        if context.fifo or context.device:
            self.fg = self.color.primary
            if context.device:
                self.attr |= bold
        if context.link:
            self.fg = self.color.primary
            self.bg = self.color.background_alt
        if context.bad:
            self.bg = self.color.alert
        if context.tag_marker and not context.selected:
            self.attr |= bold
            self.fg = self.color.primary
        if not context.selected and (context.cut or context.copied):
            self.fg = self.color.primary
            self.bg = self.color.background_alt
        if context.main_column:
            if context.selected:
                self.attr |= bold
            if context.marked:
                self.attr |= bold
                self.fg = self.color.primary
        if context.badinfo:
            if self.attr & reverse:
                self.bg = self.color.background
            else:
                self.fg = self.color.primary

    def set_titlebar(self, context):
        self.attr |= bold
        if context.hostname:
            self.fg = self.color.primary
        elif context.directory:
            self.fg = self.color.primary
        elif context.tab:
            if context.good:
                self.bg = self.color.background
        elif context.link:
            self.fg = self.color.primary

    def set_statusbar(self,context):
        if context.permissions:
            if context.good:
                self.fg = self.color.primary
            elif context.bad:
                self.fg = self.color.primary
        if context.marked:
            self.attr |= bold | reverse
            self.fg = self.color.primary
        if context.message:
            if context.bad:
                self.attr |= bold
                self.fg = self.color.primary
        if context.loaded:
            self.bg = self.progress_bar_color
        if context.vcsinfo:
            self.fg = self.color.primary
            self.attr &= ~bold
        if context.vcscommit:
            self.fg = self.color.primary
            self.attr &= ~bold

    def set_text(self, context):
        if context.highlight:
            self.attr |= reverse

    def set_taskview(self, context):
        if context.title:
            self.fg = self.color.primary
        if context.selected:
            self.attr |= reverse
        if context.loaded:
            if context.selected:
                self.fg = self.progress_bar_color
            else:
                self.bg = self.progress_bar_color

    def set_vcsfile(self, context):
        self.attr &= ~bold
        if context.vcsconflict:
            self.fg = self.color.primary
        elif context.vcschanged:
            self.fg = self.color.primary
        elif context.vcsunknown:
            self.fg = self.color.primary
        elif context.vcsstaged:
            self.fg = self.color.primary
        elif context.vcssync:
            self.fg = self.color.primary
        elif context.vcsignored:
            self.fg = default

    def set_vcsremote(self, context):
        self.attr &= ~bold
        if context.vcssync:
            self.fg = self.color.primary
        elif context.vcsbehind:
            self.fg = self.color.primary
        elif context.vcsahead:
            self.fg = self.color.primary
        elif context.vcsdiverged:
            self.fg = self.color.primary
        elif context.vcsunknown:
            self.fg = self.color.primary

    def use(self, context):
        self.fg, self.bg, self.attr = default_colors
        self.color = Color()

        if context.reset:
            return default_colors
        elif context.in_browser:
            self.set_browser(context)
        elif context.in_titlebar:
            self.set_titlebar(context)
        elif context.in_statusbar:
            self.set_statusbar(context)
        if context.text:
            self.set_text(context)
        if context.in_taskview:
            context.set_taskview(context)
        if context.vcsfile and not context.selected:
            self.set_vcsfile(context)
        elif context.vcsremote and not context.selected:
            self.set_vcsremote(context)
        return self.fg, self.bg, self.attr



