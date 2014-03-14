package acceleo.test;

import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import static org.junit.Assert.*;

import org.junit.Test;

import acceleo.main.Generate;

public class GenerateCodeForTest {

	@Test
	public void GenerateAllTestCode() throws IOException, InterruptedException {

		Path dir = Paths.get("testing");

		//for each of the directories
		DirectoryStream<Path> testDirectories = Files.newDirectoryStream(dir);
		
		for (Path file: testDirectories) {
			System.out.println(file.getFileName());
			
			Path modelDirectory = file.resolve("model");
			Path autogenDirectory = file.resolve("autogen");
			
			//find the UML files
			DirectoryStream<Path> stream =
					Files.newDirectoryStream(modelDirectory, "*.uml"); 
			for (Path modelFile: stream) {
				System.out.println("\t" + modelFile.getFileName());
				generateCode(modelFile.toAbsolutePath().toString(), autogenDirectory.toAbsolutePath().toString());
			}
		}

		// Clean up blank lines and duplicate require_relative statements
		// David: TODO
		
		assertTrue(true);
	}

    /**
     * Call the acceleo generator to generate ruby code for a given model
     * 
     */
	private void generateCode(String modelFilename, String outputDirectory) {
		String[] args = new String[2];
		args[0] = modelFilename;
		args[1] = outputDirectory;
		
		Generate.main(args);
	}

}
