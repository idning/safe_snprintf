- A (very) limited version of snprintf.
- async-signal-safe
- code based on mysql ``my_safe_snprintf``

::

    /**
      A (very) limited version of snprintf.
      @param   to   Destination buffer.
      @param   n    Size of destination buffer.
      @param   fmt  printf() style format string.
      @returns Number of bytes written, including terminating '\0'
      Supports 'd' 'i' 'u' 'x' 'p' 's' conversion.
      Supports 'l' and 'll' modifiers for integral types.
      Does not support any width/precision.
      Implemented with simplicity, and async-signal-safety in mind.
    */
    size_t safe_snprintf(char *to, size_t n, const char *fmt, ...);
