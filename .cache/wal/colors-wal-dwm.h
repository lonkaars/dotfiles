static const char norm_fg[] = "#c4c4c4";
static const char norm_bg[] = "#141415";
static const char norm_border[] = "#4e4e4f";

static const char sel_fg[] = "#c4c4c4";
static const char sel_bg[] = "#3c2a27";
static const char sel_border[] = "#c4c4c4";

static const char urg_fg[] = "#c4c4c4";
static const char urg_bg[] = "#292b37";
static const char urg_border[] = "#292b37";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
