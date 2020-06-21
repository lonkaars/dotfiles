const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#141415", /* black   */
  [1] = "#292b37", /* red     */
  [2] = "#3c2a27", /* green   */
  [3] = "#3b3033", /* yellow  */
  [4] = "#3f3330", /* blue    */
  [5] = "#4b4240", /* magenta */
  [6] = "#66615a", /* cyan    */
  [7] = "#c4c4c4", /* white   */

  /* 8 bright colors */
  [8]  = "#4e4e4f",  /* black   */
  [9]  = "#292b37",  /* red     */
  [10] = "#3c2a27", /* green   */
  [11] = "#3b3033", /* yellow  */
  [12] = "#3f3330", /* blue    */
  [13] = "#4b4240", /* magenta */
  [14] = "#66615a", /* cyan    */
  [15] = "#c4c4c4", /* white   */

  /* special colors */
  [256] = "#141415", /* background */
  [257] = "#c4c4c4", /* foreground */
  [258] = "#c4c4c4",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
