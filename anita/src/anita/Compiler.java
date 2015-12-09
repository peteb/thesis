package anita;

import anita.parser.*;

import static anita.Constants.*;

import org.antlr.runtime.ANTLRInputStream;
import org.antlr.runtime.CommonTokenStream;

import org.json.*;

import java.io.IOException;
import java.io.File;
import java.io.InputStream;
import java.io.FileInputStream;


public class Compiler extends Object {

    // Returns the object for convenience.
    final JSONObject put(JSONObject o, String key, Object value) {
        try {
            o.put(key, value);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return o;
    }

    private AnitaParser createParser(final InputStream is) {
        try {
            final ANTLRInputStream input = new ANTLRInputStream(is);
            final AnitaLexer lexer = new AnitaLexer(input);
            final CommonTokenStream tokens = new CommonTokenStream(lexer);
            final AnitaParser parser = new AnitaParser(tokens);
            return parser;
        }
        catch (IOException ioe) {
            new RuntimeException(ioe);
        }
        return null; // Just to shut up javac.
    }

    public JSONObject parseStream(final InputStream is) throws IOException {
        final AnitaParser parser = createParser(is);
        return parse(parser);
    }

    public JSONObject parseFile(final File file) throws IOException {
        final FileInputStream fis = new FileInputStream(file);
        final AnitaParser parser = createParser(fis);
        return parse(parser);
    }

    private JSONObject parse(final AnitaParser parser) {
        JSONObject n = null;
        try {
            n = parser.program();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e) {
            System.err.println("Parse error: " + e + " : " + e.getClass());
            n = new JSONObject();
	    put(n, KIND, ERROR_KIND);
	    put(n, VALUE, e);
	    return n;
        }
        if (n == null) {
            System.err.println("Parse error");
            n = new JSONObject();
	    put(n, KIND, ERROR_KIND);
	    put(n, VALUE, "Parse error");
        }
        return n;
    }


}