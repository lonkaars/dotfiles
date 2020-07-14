const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#151618", /* black   */
  [1] = "#131e35", /* red     */
  [2] = "#222323", /* green   */
  [3] = "#1d2841", /* yellow  */
  [4] = "#2a2929", /* blue    */
  [5] = "#2a313f", /* magenta */
  [6] = "#303d57", /* cyan    */
  [7] = "#c4c4c5", /* white   */

  /* 8 bright colors */
  [8]  = "#4f5051",  /* black   */
  [9]  = "#131e35",  /* red     */
  [10] = "#222323", /* green   */
  [11] = "#1d2841", /* yellow  */
  [12] = "#2a2929", /* blue    */
  [13] = "#2a313f", /* magenta */
  [14] = "#303d57", /* cyan    */
  [15] = "#c4c4c5", /* white   */

  /* special colors */
  [256] = "#151618", /* background */
  [257] = "#c4c4c5", /* foreground */
  [258] = "#c4c4c5",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
