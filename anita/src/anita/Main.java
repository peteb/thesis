package anita;

import anita.phases.PrettyPrinter;

import org.json.*;

import java.util.List;
import java.util.ArrayList;

import java.io.File;
import java.io.IOException;

public class Main extends Object {

    public static void printUsage() {
	System.err.println("No file given.");
    }

    public static void printUsageAndDie() {
	printUsage();
	System.exit(1);
    }
    
    public static void main(String[] args) {
	boolean pp = false;
	if (args.length > 0 && args[0].equals("-pp")) {
	    pp = true;
	    String[] tmp = new String[args.length-1];
	    System.arraycopy(args, 1, tmp, 0, tmp.length);
	    args = tmp;
	}
	List<JSONObject> units = new ArrayList<JSONObject>();
	Compiler compiler = new Compiler();

	if (args.length == 0 || args[0].equals("-")) { // Read source from stdin
	    try {
		JSONObject o = compiler.parseStream(System.in);
		units.add(o);
	    } catch (IOException ioe) {
		System.err.println("IOE when reading from stdin" + ioe.getMessage());
	    }	    
	} else { // Process files
	    for (String path : args) {
		File file = new File(path);
		if (!file.exists() || !file.canRead()) {
		    System.err.println("File does not exist or is not readable: " + path);
		}
		try {
		    JSONObject o = compiler.parseFile(file);
		    units.add(o);
		} catch (IOException ioe) {
		    System.err.println("IOE when trying to read file: " + path);
		}
	    }
	    
	}

	if (pp) {
	    PrettyPrinter p = new PrettyPrinter(System.out);
	    for (JSONObject o : units) {
		p.visit(o);
		System.out.println();
	    }
	} else {
	    for (JSONObject o : units) {
		System.out.println(o.toString());
	    }
	}

    }

}