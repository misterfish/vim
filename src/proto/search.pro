/* search.c */
int search_regcomp(char_u *pat, int pat_save, int pat_use, int options, regmmatch_T *regmatch);
char_u *get_search_pat(void);
char_u *reverse_text(char_u *s);
void save_re_pat(int idx, char_u *pat, int magic);
void save_search_patterns(void);
void restore_search_patterns(void);
void free_search_patterns(void);
void save_last_search_pattern(void);
void restore_last_search_pattern(void);
char_u *last_search_pattern(void);
int ignorecase(char_u *pat);
int ignorecase_opt(char_u *pat, int ic_in, int scs);
int pat_has_uppercase(char_u *pat);
char_u *last_csearch(void);
int last_csearch_forward(void);
int last_csearch_until(void);
void set_last_csearch(int c, char_u *s, int len);
void set_csearch_direction(int cdir);
void set_csearch_until(int t_cmd);
char_u *last_search_pat(void);
void reset_search_dir(void);
void set_last_search_pat(char_u *s, int idx, int magic, int setlast);
void last_pat_prog(regmmatch_T *regmatch);
int searchit(win_T *win, buf_T *buf, pos_T *pos, pos_T *end_pos, int dir, char_u *pat, long count, int options, int pat_use, searchit_arg_T *extra_arg);
void set_search_direction(int cdir);
int do_search(oparg_T *oap, int dirc, int search_delim, char_u *pat, long count, int options, searchit_arg_T *sia);
int search_for_exact_line(buf_T *buf, pos_T *pos, int dir, char_u *pat);
int searchc(cmdarg_T *cap, int t_cmd);
pos_T *findmatch(oparg_T *oap, int initc);
pos_T *findmatchlimit(oparg_T *oap, int initc, int flags, int maxtravel);
void showmatch(int c);
int current_search(long count, int forward);
int linewhite(linenr_T lnum);
void find_pattern_in_path(char_u *ptr, int dir, int len, int whole, int skip_comments, int type, long count, int action, linenr_T start_lnum, linenr_T end_lnum);
spat_T *get_spat(int idx);
int get_spat_last_idx(void);
void f_searchcount(typval_T *argvars, typval_T *rettv);
/* vim: set ft=c : */
