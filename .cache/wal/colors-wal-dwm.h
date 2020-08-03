static const char norm_fg[] = "#c4c4c5";
static const char norm_bg[] = "#141618";
static const char norm_border[] = "#4e5051";

static const char sel_fg[] = "#c4c4c5";
static const char sel_bg[] = "#171823";
static const char sel_border[] = "#c4c4c5";

static const char urg_fg[] = "#c4c4c5";
static const char urg_bg[] = "#071831";
static const char urg_border[] = "#071831";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
