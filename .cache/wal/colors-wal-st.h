const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#312322", /* black   */
  [1] = "#c3acaa", /* red     */
  [2] = "#8eb8fb", /* green   */
  [3] = "#f4b3aa", /* yellow  */
  [4] = "#c0c3ef", /* blue    */
  [5] = "#e9bce1", /* magenta */
  [6] = "#bed5fb", /* cyan    */
  [7] = "#cbc8c7", /* white   */

  /* 8 bright colors */
  [8]  = "#645a59",  /* black   */
  [9]  = "#c3acaa",  /* red     */
  [10] = "#8eb8fb", /* green   */
  [11] = "#f4b3aa", /* yellow  */
  [12] = "#c0c3ef", /* blue    */
  [13] = "#e9bce1", /* magenta */
  [14] = "#bed5fb", /* cyan    */
  [15] = "#cbc8c7", /* white   */

  /* special colors */
  [256] = "#312322", /* background */
  [257] = "#cbc8c7", /* foreground */
  [258] = "#cbc8c7",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
