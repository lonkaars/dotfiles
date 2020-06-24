const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#1c1c1c", /* black   */
  [1] = "#616c71", /* red     */
  [2] = "#7f8485", /* green   */
  [3] = "#9099ba", /* yellow  */
  [4] = "#c79c95", /* blue    */
  [5] = "#9fc0c8", /* magenta */
  [6] = "#e4b695", /* cyan    */
  [7] = "#c6c6c6", /* white   */

  /* 8 bright colors */
  [8]  = "#545454",  /* black   */
  [9]  = "#616c71",  /* red     */
  [10] = "#7f8485", /* green   */
  [11] = "#9099ba", /* yellow  */
  [12] = "#c79c95", /* blue    */
  [13] = "#9fc0c8", /* magenta */
  [14] = "#e4b695", /* cyan    */
  [15] = "#c6c6c6", /* white   */

  /* special colors */
  [256] = "#1c1c1c", /* background */
  [257] = "#c6c6c6", /* foreground */
  [258] = "#c6c6c6",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
