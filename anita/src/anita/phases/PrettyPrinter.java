package anita.phases;

import static anita.Constants.*;

import org.json.*;

import java.io.*;

public class PrettyPrinter {

    private BufferedWriter writer;

    public PrettyPrinter(OutputStream os) {
	writer = new BufferedWriter(new OutputStreamWriter(os));
    }

    private void w(String s) {
	try {
	    writer.write(s);
	    writer.flush();
	} catch (IOException ioe) {
	    ioe.printStackTrace();
	}
    }

    private void wl(String s) {
	try {
	    w(s);
	    writer.newLine();
	    writer.flush();
	} catch (IOException ioe) {
	    ioe.printStackTrace();
	}
    }    

    private void kind(JSONObject o) {
	try {
	    w("kind:");
	    w(o.getString(KIND));
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

    private void comma() {
	w(",");
    }

    private void colon() {
	w(":");
    }

    private void top(JSONObject o) {
	w("{");
	kind(o);
    }

    private void bottom() {
	w("}");
    }

    private void printList(JSONArray a) {
	try {
	    w("[");
	    for (int i = 0; i < a.length(); ++i) {
		if (i != 0)
		    comma();
		visit(a.getJSONObject(i));
	    }
	    w("]");
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + a);
	}
    }
    
    public void visit(JSONObject o) {
	try {
	    if (o.get(KIND).equals(ASSIGN_KIND)) {
		printAssign(o);
	    } else if (o.get(KIND).equals(BLOCK_KIND)) {
		printBlock(o);
	    } else if (o.get(KIND).equals(BOOL_KIND)) {
		printBool(o);
	    } else if (o.get(KIND).equals(CLOSURE_KIND)) {
		printClosure(o);
	    } else if (o.get(KIND).equals(ERROR_KIND)) {
		printError(o);
	    } else if (o.get(KIND).equals(FLOAT_KIND)) {
		printFloat(o);
	    } else if (o.get(KIND).equals(IF_KIND)) {
		printIf(o);
	    } else if (o.get(KIND).equals(INT_KIND)) {
		printInt(o);
	    } else if (o.get(KIND).equals(MCALL_KIND)) {
		printMCall(o);
	    } else if (o.get(KIND).equals(NIL_KIND)) {
		printNil(o);
	    } else if (o.get(KIND).equals(NOP_KIND)) {
		printNop(o);
	    } else if (o.get(KIND).equals(OBJECT_KIND)) {
		printObject(o);
	    } else if (o.get(KIND).equals(RETURN_KIND)) {
		printReturn(o);
// 	    } else if (o.get(KIND).equals(SELECT_KIND)) {
// 		printSelect(o);
	    } else if (o.get(KIND).equals(SEND_KIND)) {
		printSend(o);
	    } else if (o.get(KIND).equals(SPAWN_KIND)) {
		printSpawn(o);
	    } else if (o.get(KIND).equals(STRING_KIND)) {
		printString(o);
	    } else if (o.get(KIND).equals(THROW_KIND)) {
		printThrow(o);
	    } else if (o.get(KIND).equals(TRY_KIND)) {
		printTry(o);
	    } else if (o.get(KIND).equals(UNIT_KIND)) {
		printUnit(o);
	    } else if (o.get(KIND).equals(VARDEF_KIND)) {
		printVarDef(o);
	    } else if (o.get(KIND).equals(VAR_KIND)) {
		printVar(o);
	    } else if (o.get(KIND).equals(WHILE_KIND)) {
		printWhile(o);
	    } else {
		System.err.println("Unknown kind: " + o);
	    }
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}

    }

    public void printUnit(JSONObject o) {
	try {
	    top(o);
	    comma();
	    w(MEMBERS);
	    colon();
	    printList(o.getJSONArray(MEMBERS));
	    bottom();
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

    public void printAssign(JSONObject o) {
	try {
	    top(o);
	    comma();
	    w(TARGET);
	    colon();
	    if (o.isNull(TARGET)) {
		w("null");
	    } else {
		visit(o.getJSONObject(TARGET));
	    }
	    comma();
	    w(NAME);
	    colon();
	    w(o.getString(NAME));
	    comma();
	    w(VALUE);
	    colon();
	    visit(o.getJSONObject(VALUE));
	    bottom();
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

    public void printBool(JSONObject o) {
	try {
	    top(o);
	    comma();
	    w(VALUE);
	    colon();
	    w(String.valueOf(o.getBoolean(VALUE)));
	    bottom();
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

    public void printClosure(JSONObject o) {
	try {
	    top(o);
	    comma();
	    w(FORMALS);
	    colon();
	    printList(o.getJSONArray(FORMALS));
	    comma();
	    w(BODY);
	    colon();
	    visit(o.getJSONObject(BODY));
	    bottom();
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

    public void printVarDef(JSONObject o) {
	try {
	    top(o);
	    comma();
	    w(NAME);
	    colon();
	    w(o.getString(NAME));
	    comma();
	    w(IS_VAL);
	    colon();
	    w(String.valueOf(o.getBoolean(IS_VAL)));
	    comma();
	    w(INIT);
	    colon();
	    if (o.isNull(INIT)) {
		w("null");
	    } else {
		visit(o.getJSONObject(INIT));
	    }
	    bottom();
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

    public void printBlock(JSONObject o) {
	try {
	    top(o);
	    comma();
	    w(MEMBERS);
	    colon();
	    printList(o.getJSONArray(MEMBERS));
	    bottom();
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

    public void printError(JSONObject o) {
	
    }

    public void printFloat(JSONObject o) {
	try {
	    top(o);
	    comma();
	    w(VALUE);
	    colon();
	    w(String.valueOf(o.getDouble(VALUE)));
	    bottom();
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

    public void printIf(JSONObject o) {
	try {
	    top(o);
	    comma();
	    w(COND);
	    colon();
	    visit(o.getJSONObject(COND));
	    comma();
	    w(THEN);
	    colon();
	    visit(o.getJSONObject(THEN));
	    comma();
	    w(ELS);
	    colon();
	    visit(o.getJSONObject(ELS));
	    bottom();
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

    public void printInt(JSONObject o) {
	try {
	    top(o);
	    comma();
	    w(VALUE);
	    colon();
	    w(String.valueOf(o.getInt(VALUE)));
	    bottom();
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

    public void printMCall(JSONObject o) {
	try {
	    top(o);
	    comma();
	    w(TARGET);
	    colon();
	    visit(o.getJSONObject(TARGET));
	    comma();
	    w(NAME);
	    colon();
	    w(o.getString(NAME));
	    comma();
	    w(ARGS);
	    colon();
	    printList(o.getJSONArray(ARGS));
	    bottom();
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

    public void printNil(JSONObject o) {
	top(o);
	bottom();	
    }

    public void printNop(JSONObject o) {
	top(o);
	bottom();
    }

    public void printObject(JSONObject o) {
	try {
	    top(o);
	    comma();
	    w(BODY);
	    colon();
	    printList(o.getJSONArray(BODY));
	    bottom();
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

    public void printReturn(JSONObject o) {
	try {
	    top(o);
	    comma();
	    w(VALUE);
	    colon();
	    if (o.isNull(VALUE)) {
		w("null");
	    } else {
		visit(o.getJSONObject(VALUE));
	    }
	    bottom();
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

    public void printSpawn(JSONObject o) {
	try {
	    top(o);
	    comma();
	    w(VALUE);
	    colon();
	    visit(o.getJSONObject(VALUE));
	    bottom();
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

//     public void printSelect(JSONObject o) {
// 	try {
// 	    top(o);
// 	    comma();
// 	    w(TARGET);
// 	    colon();
// 	    visit(o.getJSONObject(TARGET));
// 	    comma();
// 	    w(NAME);
// 	    colon();
// 	    w(o.getString(NAME));
// 	    bottom();
// 	} catch (JSONException e) {
// 	    System.err.println("Attribute error: " + e + " for object: " + o);
// 	}
//     }

    public void printSend(JSONObject o) {
	try {
	    top(o);
	    comma();
	    w(TARGET);
	    colon();
	    visit(o.getJSONObject(TARGET));
	    comma();
	    w(VALUE);
	    colon();
	    visit(o.getJSONObject(VALUE));
	    bottom();
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

    public void printString(JSONObject o) {
	
    }

    public void printThrow(JSONObject o) {
	try {
	    top(o);
	    comma();
	    w(VALUE);
	    colon();
	    visit(o.getJSONObject(VALUE));
	    bottom();
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

    public void printTry(JSONObject o) {
	try {
	    top(o);
	    comma();
	    w(VALUE);
	    colon();
	    visit(o.getJSONObject(VALUE));
	    comma();
	    w(FORMALS);
	    colon();
	    printList(o.getJSONArray(FORMALS));
	    comma();
	    w(ELS);
	    colon();
	    visit(o.getJSONObject(ELS));
	    bottom();
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

    public void printVar(JSONObject o) {
	try {
	    top(o);
	    comma();
	    w(NAME);
	    colon();
	    w(o.getString(NAME));
	    bottom();
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

    public void printWhile(JSONObject o) {
	try {
	    top(o);
	    comma();
	    w(COND);
	    colon();
	    visit(o.getJSONObject(COND));
	    comma();
	    w(BODY);
	    colon();
	    visit(o.getJSONObject(BODY));
	    bottom();
	} catch (JSONException e) {
	    System.err.println("Attribute error: " + e + " for object: " + o);
	}
    }

}