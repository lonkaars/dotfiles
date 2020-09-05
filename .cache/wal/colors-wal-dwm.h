static const char norm_fg[] = "#cbc8c7";
static const char norm_bg[] = "#312322";
static const char norm_border[] = "#645a59";

static const char sel_fg[] = "#cbc8c7";
static const char sel_bg[] = "#8eb8fb";
static const char sel_border[] = "#cbc8c7";

static const char urg_fg[] = "#cbc8c7";
static const char urg_bg[] = "#c3acaa";
static const char urg_border[] = "#c3acaa";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
