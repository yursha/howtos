import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class IO {

  public static String readStringFromResource WithEncoding(String resource, Charset encoding) throws IOException {
    try (InputStreamReader reader = new InputStreamReader(ClassLoader.getSystemResourceAsStream(resource), encoding)) {
      char[] cbuf = new char[4096]; // 8KiB
      StringBuilder chars = new StringBuilder();

      int nChars;
      while ((nChars = reader.read(cbuf, 0, cbuf.length)) != -1) {
        chars.append(cbuf, 0, nChars);
      }
      return chars.toString();
    }
  }
  
  public static byte[] readAllBytesFromStream(InputStream stream) throws IOException {
    byte[] buf = new byte[8192]; // 8KiB
    ByteArrayOutputStream resizingByteArray = new ByteArrayOutputStream();
    
    int count;
    while ((count = stream.read(buf, 0, buf.length)) != -1) {
      resizingByteArray.write(buf, 0, count);
    }
    return resizingByteArray.toByteArray();
  }
  
  public static void writeStringToFileWithEncoding(String str, String filepath, String encoding) throws IOException {
    try (PrintWriter writer = new PrintWriter(filepath, encoding)) {
      writer.print(str);
    }
  }
  
  public static void writeBytesToFile(byte[] bytes, String filepath) throws IOException {
    try (FileOutputStream out = new FileOutputStream(filepath)) {
      out.write(bytes);
    }
  }
  
}
