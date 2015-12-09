package anita.parser;

import java.util.*;

public class Names extends Object {

    public final static Map<String, String> nameMap = new HashMap<String, String>();
    public final static Map<String, String> reverseNameMap = new HashMap<String, String>();

    private static void nameMapPut(final String k, final String v) {
	nameMap.put(k, v);
	reverseNameMap.put(v, k);
    }

    static {
	nameMapPut("+", "add");
	nameMapPut("-", "sub");
	nameMapPut("*", "mul");
	nameMapPut("/", "div");
	nameMapPut("&", "and");
	nameMapPut("&&", "andand");
	nameMapPut("|", "or");
	nameMapPut("||", "oror");
	nameMapPut("!=", "neq");
	nameMapPut("==", "eq");
	nameMapPut("%", "rem");
	nameMapPut("<", "lt");
	nameMapPut(">", "gt");
	nameMapPut("<=", "le");
	nameMapPut(">=", "ge");
	nameMapPut("!", "not");
	nameMapPut("..", "dotdot");
    }

    public static String mangle(final String s1) {
	final String s2 = nameMap.get(s1);
	if (s2 != null) return s2;
	return s1;
    }

    public static String demangle(final String s1) {
	final String s2 = reverseNameMap.get(s1);
	if (s2 != null) return s2;
	return s1;
    }


}