const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#141618", /* black   */
  [1] = "#071831", /* red     */
  [2] = "#171823", /* green   */
  [3] = "#0c2039", /* yellow  */
  [4] = "#1e1f2a", /* blue    */
  [5] = "#212633", /* magenta */
  [6] = "#2b2b34", /* cyan    */
  [7] = "#c4c4c5", /* white   */

  /* 8 bright colors */
  [8]  = "#4e5051",  /* black   */
  [9]  = "#071831",  /* red     */
  [10] = "#171823", /* green   */
  [11] = "#0c2039", /* yellow  */
  [12] = "#1e1f2a", /* blue    */
  [13] = "#212633", /* magenta */
  [14] = "#2b2b34", /* cyan    */
  [15] = "#c4c4c5", /* white   */

  /* special colors */
  [256] = "#141618", /* background */
  [257] = "#c4c4c5", /* foreground */
  [258] = "#c4c4c5",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
