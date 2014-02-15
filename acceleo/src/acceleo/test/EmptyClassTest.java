package acceleo.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import static org.junit.Assert.*;

import org.junit.Test;

import acceleo.main.Generate;

public class EmptyClassTest {

	@Test
	public void CheckGeneratedCode() throws IOException, InterruptedException {
		
		generateCode("./test/EmptyClassStory/models/emptyClass.uml", "./test/EmptyClassStory/autogen");

		assertTrue(compareGeneratedAndExpected("EmptyClassStory"));
	}

    /**
     * Compare generated Ruby file contents to the expected contents
     * 
     * @param testDirectory	Name of directory within './test' directory that includes the expected and generated files
     */
	private boolean compareGeneratedAndExpected(String testDirectory) throws IOException,
			InterruptedException {
		
		//Run Ruby comparison script and pipe standard input
		Process process = new ProcessBuilder("ruby", "./test/SimpleRegression/regression.rb", testDirectory).start();
		InputStream is = process.getInputStream();
		InputStreamReader isr = new InputStreamReader(is);
		BufferedReader br = new BufferedReader(isr);
		String line;

		while ((line = br.readLine()) != null) {
			System.out.println(line);
		}

		process.waitFor();
		return process.exitValue()==0;
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
