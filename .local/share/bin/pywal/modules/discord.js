var fs = require('fs');
var path = require('path');
var color = require('color');

module.exports = colors => {
	var shade = color(colors.special.background).mix(color(colors.colors.color1), 0.2)
	fs.writeFileSync(path.join(process.env.HOME, '/.config/BetterDiscord/themes/pywal.theme.css'), `/**
 * @name pywal
 * @author Loekaars#8205
 * @version 1.0.0
 * @description Cool beans
*/

:root {
	--pywal-shade0: ${shade.hex()};
	--pywal-shade1: ${shade.lighten(0.2).hex()};
	--pywal-shade2: ${shade.lighten(0.3).hex()};
	--pywal-shade3: ${shade.lighten(0.4).hex()};
	--pywal-shade4: ${shade.lighten(0.4).saturate(1.1).hex()};

	--accent: ${String(color(colors.special.autoReadable.color6).rgb()).substr(4).slice(0, -1)};

	--pywal-serverside: ${color(colors.special.background).darken(0.1).hex()};
	--pywal-serverfolder-transparent: ${color(colors.special.background).darken(0.1).alpha(0.75).hsl().string()};

	--pywal-bg0: ${color(colors.special.background).hex()};
	--pywal-bg1: ${color(colors.special.background).lighten(0.2).hex()};
	--pywal-bg2: ${color(colors.special.background).lighten(0.4).hex()};
	--pywal-bg3: ${color(colors.special.background).lighten(0.6).hex()};

	--pywal-color0: ${colors.colors.color0};
	--pywal-color1: ${colors.colors.color1};
	--pywal-color2: ${colors.colors.color2};
	--pywal-color3: ${colors.colors.color3};
	--pywal-color4: ${colors.colors.color4};
	--pywal-color5: ${colors.colors.color5};
	--pywal-color6: ${colors.colors.color6};
	--pywal-color7: ${colors.colors.color7};
	--pywal-color8: ${colors.colors.color8};
	--pywal-color9: ${colors.colors.color9};
	--pywal-color10: ${colors.colors.color10};
	--pywal-color11: ${colors.colors.color11};
	--pywal-color12: ${colors.colors.color12};
	--pywal-color13: ${colors.colors.color13};
	--pywal-color14: ${colors.colors.color14};
	--pywal-color15: ${colors.colors.color15};

	--pywal-readable-color0: ${colors.special.readable.color0};
	--pywal-readable-color1: ${colors.special.readable.color1};
	--pywal-readable-color2: ${colors.special.readable.color2};
	--pywal-readable-color3: ${colors.special.readable.color3};
	--pywal-readable-color4: ${colors.special.readable.color4};
	--pywal-readable-color5: ${colors.special.readable.color5};
	--pywal-readable-color6: ${colors.special.readable.color6};
	--pywal-readable-color7: ${colors.special.readable.color7};
	--pywal-readable-color8: ${colors.special.readable.color8};
	--pywal-readable-color9: ${colors.special.readable.color9};
	--pywal-readable-color10: ${colors.special.readable.color10};
	--pywal-readable-color11: ${colors.special.readable.color11};
	--pywal-readable-color12: ${colors.special.readable.color12};
	--pywal-readable-color13: ${colors.special.readable.color13};
	--pywal-readable-color14: ${colors.special.readable.color14};
	--pywal-readable-color15: ${colors.special.readable.color15};

	--pywal-readableOn-color0: ${colors.special.readableOn.color0};
	--pywal-readableOn-color1: ${colors.special.readableOn.color1};
	--pywal-readableOn-color2: ${colors.special.readableOn.color2};
	--pywal-readableOn-color3: ${colors.special.readableOn.color3};
	--pywal-readableOn-color4: ${colors.special.readableOn.color4};
	--pywal-readableOn-color5: ${colors.special.readableOn.color5};
	--pywal-readableOn-color6: ${colors.special.readableOn.color6};
	--pywal-readableOn-color7: ${colors.special.readableOn.color7};
	--pywal-readableOn-color8: ${colors.special.readableOn.color8};
	--pywal-readableOn-color9: ${colors.special.readableOn.color9};
	--pywal-readableOn-color10: ${colors.special.readableOn.color10};
	--pywal-readableOn-color11: ${colors.special.readableOn.color11};
	--pywal-readableOn-color12: ${colors.special.readableOn.color12};
	--pywal-readableOn-color13: ${colors.special.readableOn.color13};
	--pywal-readableOn-color14: ${colors.special.readableOn.color14};
	--pywal-readableOn-color15: ${colors.special.readableOn.color15};
}`)
}

