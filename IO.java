public class IO {

  public static String readResourceIntoString(String resource) throws IOException {
    try (InputStreamReader reader = new InputStreamReader(ClassLoader.getSystemResourceAsStream(resource), StandardCharsets.UTF_8)) {
      char[] cbuf = new char[4096]; // 8KiB
      StringBuilder chars = new StringBuilder();

      int nChars;
      while ((nChars = reader.read(cbuf, 0, cbuf.length)) != -1) {
        chars.append(cbuf, 0, nChars);
      }
      return chars.toString();
    }
  }
  
}
