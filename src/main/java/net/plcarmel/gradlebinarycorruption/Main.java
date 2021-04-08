package net.plcarmel.gradlebinarycorruption;

import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;

public class Main {

  public static void main(String[] args) throws IOException {
    final var bytes = new byte[] { -1, 2, -3, 4, -5, 6, -7, 8 };
    try (final var stdOut = new FileOutputStream(FileDescriptor.out)) {
      stdOut.write(bytes);
    }
  }

}
