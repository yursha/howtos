import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

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
  
  public static byte[] readAllBytes(InputStream stream) throws IOException {
    byte[] buf = new byte[8192]; // 8KiB
    ByteArrayOutputStream resizingByteArray = new ByteArrayOutputStream();
    
    int count;
    while ((count = stream.read(buf, 0, buf.length)) != -1) {
      resizingByteArray.write(buf, 0, count);
    }
    return resizingByteArray.toByteArray();
  }
  
}
