const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#1e1e1f", /* black   */
  [1] = "#666b6d", /* red     */
  [2] = "#8a8c8d", /* green   */
  [3] = "#c59683", /* yellow  */
  [4] = "#a7aeb0", /* blue    */
  [5] = "#aabbbe", /* magenta */
  [6] = "#d1c494", /* cyan    */
  [7] = "#c6c6c7", /* white   */

  /* 8 bright colors */
  [8]  = "#565657",  /* black   */
  [9]  = "#666b6d",  /* red     */
  [10] = "#8a8c8d", /* green   */
  [11] = "#c59683", /* yellow  */
  [12] = "#a7aeb0", /* blue    */
  [13] = "#aabbbe", /* magenta */
  [14] = "#d1c494", /* cyan    */
  [15] = "#c6c6c7", /* white   */

  /* special colors */
  [256] = "#1e1e1f", /* background */
  [257] = "#c6c6c7", /* foreground */
  [258] = "#c6c6c7",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
