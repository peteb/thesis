grammar Anita;

options {
language=Java;
backtrack=true;
memoize=true;
}

@header {
package anita.parser;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.Collections;
import java.util.Arrays;

import org.json.*;

import static anita.Constants.*;
}

@lexer::header{
package anita.parser;
}

@members {

    Token lastToken() {
        return input.LT(-1);
    }

    final double parseDouble(String s) {
        // if (s.startsWith("0x") || s.startsWith("0X"))
            // s = s.substring(2, s.length());
        if (s.endsWith("D") || s.endsWith("d"))
            return Double.parseDouble(s.substring(0, s.length()-1));
        if (s.endsWith("F") || s.endsWith("f"))
            return Float.parseFloat(s.substring(0, s.length()-1));
        if (s.endsWith("D") || s.endsWith("d"))
            return Double.parseDouble(s.substring(0, s.length()-1));
        return Double.parseDouble(s);
    }

    final long parseLong(String s, int radix, int bits) {
        long v = 0;
        for (int i = 0; i < s.length(); i++) {
            char ch = s.charAt(i);
            
            if (bits == 32 && (v & 0x80000000L) != 0)
                throw new NumberFormatException(s);
            if (bits == 64 && (v & 0x8000000000000000L) != 0)
                throw new NumberFormatException(s);

            v *= radix;

            int w = 0;
            if ('0' <= ch && ch <= '9') 
                w = ch - '0';
            if ('a' <= ch && ch <= 'z') 
                w = ch - 'a' + 10;
            if ('A' <= ch && ch <= 'Z') 
                w = ch - 'A' + 10;

            if (0 <= w && w < radix)
                v += w;
            else 
                throw new NumberFormatException(s);
        }

        // If base 10, don't let the MSB be set except for the boundary case.
        if (radix == 10) {
            if (bits == 32 && (v & 0x80000000L) != 0 && v != 0x80000000L)
                throw new NumberFormatException(s);
            if (bits == 64 && (v & 0x8000000000000000L) != 0 && v != 0x8000000000000000L)
                throw new NumberFormatException(s);
        }

        return v;
    }

    final long parseLong(String s) {
        s = s.replace("_", "");
        if (s.endsWith("L") || s.endsWith("l"))
            s = s.substring(0, s.length()-1);
        if (s.startsWith("0O") || s.startsWith("0o"))
            return parseLong(s.substring(2, s.length()), 8, 64);
        if (s.startsWith("0X") || s.startsWith("0x"))
            return parseLong(s.substring(2, s.length()), 16, 64);
        if (s.startsWith("0B") || s.startsWith("0b"))
            return parseLong(s.substring(2, s.length()), 2, 64);
        if (s.startsWith("0"))
            return parseLong(s, 8, 64);
        return parseLong(s, 10, 64);
    }

    final int parseInt(String s) {
        s = s.replace("_", "");
        if (s.startsWith("0O") || s.startsWith("0o"))
            return (int) parseLong(s.substring(2, s.length()), 8, 32);
        if (s.startsWith("0X") || s.startsWith("0x"))
            return (int) parseLong(s.substring(2, s.length()), 16, 32);
        if (s.startsWith("0B") || s.startsWith("0b"))
            return (int) parseLong(s.substring(2, s.length()), 2, 32);
        if (s.startsWith("0"))
            return (int) parseLong(s, 8, 32);
        return (int) parseLong(s, 10, 32);
    }

    // Returns the object for convenience.
    final JSONObject put(JSONObject o, String key, Object value) {
        try {
            o.put(key, value);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return o;
    }

    final JSONObject mkObj(final String kind) {
        JSONObject o = new JSONObject();
        put(o, KIND, kind);
        return o;
    }

    final JSONObject mkNOP() {
        JSONObject o = new JSONObject();
        put(o, KIND, NOP_KIND);
        return o;
    }

    final JSONObject mkMCall(final JSONObject receiver, final String name, final JSONObject arg) {
        JSONObject o = new JSONObject();
        put(o, KIND, MCALL_KIND);
        put(o, TARGET, receiver);
        put(o, NAME, Names.mangle(name));
        put(o, ARGS, singletonArray(arg));
        return o;
    }

    final JSONObject mkMCall(final JSONObject receiver, final String name, final JSONArray args) {
        JSONObject o = new JSONObject();
        put(o, KIND, MCALL_KIND);
        put(o, TARGET, receiver);
        put(o, NAME, Names.mangle(name));
        put(o, ARGS, args);
        return o;
    }

    final JSONArray singletonArray(final JSONObject o) {
        JSONArray a = new JSONArray();
        a.put(o);
        return a;
    }

    final JSONArray emptyArr = new JSONArray();
    
    final JSONArray emptyArray() {
        return emptyArr;
    }

    final JSONArray selfOrEmpty(final JSONArray self) {
        if (self == null)
            return emptyArr;
        else
            return self;
    }

} 

/* *** Lexer Stuff *** */

/* Keywords */
VAL         :   'val';
VAR         :   'var';
FUN         :   'fun';
OBJECT      :   'object';
THIS        :   'this';
NULL        :   'null';
IF          :   'if';
ELSE        :   'else';
RETURN      :   'return';
THROW       :   'throw';
TRY         :   'try';
CATCH       :   'catch';
FINALLY     :   'finally';
WHILE       :   'while';
SPAWN       :   'spawn';

TRUE        :   'true';
FALSE       :   'false';

LONGLITERAL
    :   INTEGER LONGSUFFIX
    ;
    
INTLITERAL
    :   (INTEGER DOTDOT) => INTEGER 
    |   INTEGER 
    ;
    
fragment
INTEGER
    :   '0' 
    |   '1'..'9' ('0'..'9')* ('_' ('0'..'9')+)*
    |   '0' ('0'..'7')+ ('_' ('0'..'7')+)* 
    |   HEXPREFIX HEXIT+ ('_' HEXIT+)*
    |   BINPREFIX ('0'..'1')+ ('_' ('0'..'1')+)*
    |   OCTPREFIX ('0'..'7')+ ('_' ('0'..'7')+)*
    ;

fragment
OCTPREFIX
    :   '0o' | '0O'
    ;

fragment
BINPREFIX
    :   '0b' | '0B'
    ;
        
fragment
HEXPREFIX
    :   '0x' | '0X'
    ;
        
fragment
HEXIT
    :   ('0'..'9'|'a'..'f'|'A'..'F')
    ;

fragment
LONGSUFFIX
    :   'l' | 'L'
    ;

fragment
FLOAT
    :   ('0' .. '9')+ '.' ('0' .. '9')* EXPONENT?  
    |   '.' ( '0' .. '9' )+ EXPONENT?  
    |   ('0' .. '9')+ EXPONENT  
    |   ('0' .. '9')+ 
    |   
        HEXPREFIX (HEXIT )* 
        (    () 
        |    ('.' (HEXIT )* ) 
        ) 
        ( 'p' | 'P' ) 
        ( '+' | '-' )? 
        ( '0' .. '9' )+
        ;
        
fragment 
EXPONENT    
    :   ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+ 
    ;
    
fragment 
FLOATSUFFIX
    :   'f' | 'F' 
    ;     

fragment
DOUBLESUFFIX
    :   'd' | 'D'
    ;
        
FLOATLITERAL
    :   (('0' .. '9')+ '..') => INTLITERAL { $type = INTLITERAL; }
    |   (HEXPREFIX HEXIT+ '..') => INTLITERAL { $type = INTLITERAL; }
    |   FLOAT FLOATSUFFIX
    ;
    
DOUBLELITERAL
    :   (('0' .. '9')+ '..') => INTLITERAL { $type = INTLITERAL; }
    |   (HEXPREFIX HEXIT+ '..') => INTLITERAL { $type = INTLITERAL; }
    |   FLOAT DOUBLESUFFIX?
    ;

SQLITERAL
    :   SQUOTE ( ESCAPE | ~( '\'' | '\\' | '\r' | '\n' ) )* SQUOTE
    ; 

DQLITERAL
    :   DQUOTE ( ESCAPE | ~( '\\' | '"' | '\r' | '\n' ) )* DQUOTE
    ;

/* Operators */

PLUS        :   '+';
MINUS       :   '-';
DIV         :   '/';
MULT        :   '*';
REMAINDER   :   '%';

PLUSEQ      :   '+=';
MINUSEQ     :   '-=';
DIVEQ       :   '/=';
MULTMULTEQ  :   '**=';
MULTEQ      :   '*=';
REMAINDEREQ :   '%=';
PLUSPLUS    :   '++';
MINUSMINUS  :   '--';
BANG        :   '!';
BANGBANG    :   '!!';
BANGEQ      :   '!=';
LSHIFTLSHIFTEQ : '<<=';
RSHIFTRSHIFTEQ : '>>=';
RSHIFT3EQ   :   '>>>=';
ANDEQ       :   '&=';
ROOFEQ      :   '^=';
OREQ        :   '|=';
POW         :   '**';


/* Misc */
ROOF        :   '^';
TILDE       :   '~';
AT          :   '@';
SEMI        :   ';';
EQUAL       :   '==';
EQGT        :   '=>';
EQ          :   '=';
COMMA       :   ',';
LPAREN      :   '(';
RPAREN      :   ')';
LBRACK      :   '[';
RBRACK      :   ']';
LBRACE      :   '{';
RBRACE      :   '}';
COLONCOLON  :   '::';
COLONEQ     :   ':=';
COLON       :   ':';
DOT         :   '.';
QUESTION    :   '?';
DOTDOT      :   '..';
ANDAND      :   '&&';
AND         :   '&';
OROR        :   '||';
OR          :   '|';
LTLT        :   '<<';
GTGT        :   '>>';
GTGTGT      :   '>>>';
TAKE        :   '<-';
COMPARE     :   '<=>';
IMPLIES     :   '==>';
LESSEQ      :   '<=';
GREATEREQ   :   '>=';
LESS        :   '<';
GREATER     :   '>';
UNDERSCORE  :   '_';
DOLLAR      :   '$';

SQUOTE      :   '\'';
DQUOTE      :   '"';
BQUOTE      :   '`';

fragment
ESCAPE 
    :   '\\' ( 'b' 
             | 't' 
             | 'n' 
             | 'f' 
             | 'r' 
             | '\"' 
             | '\'' 
             | '\$' 
             | '\\' 
             | ('0'..'3') ('0'..'7') ('0'..'7')
             | ('0'..'7') ('0'..'7') 
             | ('0'..'7')
             | 'u' HEXIT HEXIT HEXIT HEXIT
             | 'x' HEXIT HEXIT
             )          
;     

WS  
    :   ( ' '
        | '\r'
        | '\t'
        | '\f'
        | '\n'
        ) 
            {
                skip();
            }          
    ;
    
COMMENT
    :   '(#' (options {greedy=false;} : . )* '#)'
            {
                skip();
            }
    ;

LINE_COMMENT
    :   '#' ~('\n'|'\r')*  ('\r\n' | '\r' | '\n') 
            {
                skip();
            }
    |   '#' ~('\n'|'\r')*     // comment might end with EOF
            {
                skip();
            }
    ;   
              
IDENTIFIER
    :   IDSTART IDREST* IDEND?
    |   BQUOTE ( ~( BQUOTE | '\r' | '\n' ) )* BQUOTE
    ;

// Note: not the same as Java--doesn't allow $
fragment
IDSTART
    : (LETTER | UNDERSCORE)
    ;

fragment
IDREST
    : (LETTER | UNDERSCORE | DIGIT)
    ;

fragment
IDEND
    : ('?' | '!' | '\''+)
    ;

fragment
LETTER : (
       '\u0041'..'\u005a' |
       '\u0061'..'\u007a' |
       '\u00c0'..'\u00d6' |
       '\u00d8'..'\u00f6' |
       '\u00f8'..'\u00ff' |
       '\u0100'..'\u1fff' |
       '\u3040'..'\u318f' |
       '\u3300'..'\u337f' |
       '\u3400'..'\u3d2d' |
       '\u4e00'..'\u9fff' |
       '\uf900'..'\ufaff'
      )
    ;

fragment
DIGIT : (
       '\u0030'..'\u0039' |
       '\u0660'..'\u0669' |
       '\u06f0'..'\u06f9' |
       '\u0966'..'\u096f' |
       '\u09e6'..'\u09ef' |
       '\u0a66'..'\u0a6f' |
       '\u0ae6'..'\u0aef' |
       '\u0b66'..'\u0b6f' |
       '\u0be7'..'\u0bef' |
       '\u0c66'..'\u0c6f' |
       '\u0ce6'..'\u0cef' |
       '\u0d66'..'\u0d6f' |
       '\u0e50'..'\u0e59' |
       '\u0ed0'..'\u0ed9' |
       '\u1040'..'\u1049'
      )
    ;

/* *** Parser Stuff *** */

literal returns [JSONObject result]
    : integerLit { $result = $integerLit.result; }
    | arrayLit   { $result = $arrayLit.result; }
    | floatLit   { $result = $floatLit.result; }
    | stringLit  { $result = $stringLit.result; }
    | boolLit    { $result = $boolLit.result; }
    | NULL       { $result = mkObj(NIL_KIND); }
    ;

arrayLit returns [JSONObject result]
    : LBRACK exprList? RBRACK
        {
            JSONObject o = mkObj(ARRAY_KIND);
            put(o, MEMBERS, selfOrEmpty($exprList.result));
            $result = o;
        }
    ;

stringLit returns [JSONObject result]
@init {
    JSONObject o = new JSONObject();
    put(o, KIND, STRING_KIND);
    String val = null;
}
@after {
    put(o, VALUE, val);
    $result = o;
}
    : DQLITERAL
        {
            final String s = $DQLITERAL.text;
            if (s.length() == 2) // Empty string
                val = "";
            else
                val = s.substring(1, s.length()-1);
        }
    | SQLITERAL
        {
            final String s = $SQLITERAL.text;
            if (s.length() == 2) // Empty string
                val = "";
            else
                val = s.substring(1, s.length()-1);
        }
    ;

longToken returns [long result]
    : LONGLITERAL
        { $result = parseLong($LONGLITERAL.text); }
    | INTLITERAL
        { $result = parseInt($INTLITERAL.text); }
    ;

doubleToken returns [double result]
    : FLOATLITERAL
        { $result = parseDouble($FLOATLITERAL.text); }
    | DOUBLELITERAL
        { $result = parseDouble($DOUBLELITERAL.text); }
    ;

integerLit returns [JSONObject result]
@init {
    boolean positive = true;
    JSONObject o = new JSONObject();
    put(o, KIND, INT_KIND);
    long val = -1;
}
@after {
    put(o, VALUE, val);
    $result = o;
}
        :       (MINUS { positive = false; } | PLUS)? longToken
        { if ($longToken.text.toUpperCase().equals("9223372036854775808L")) {
             if (positive)
                throw new NumberFormatException($longToken.text);
             else
                val = -9223372036854775808L;
          }
          else if ($longToken.text.equals("2147483648")) {
             if (positive)
                throw new NumberFormatException($longToken.text);
             else
                val = -2147483648;
          }
          else
              val = $longToken.result * (positive ? 1 : -1);
        }
    ;

floatLit returns [JSONObject result]
@init {
    boolean positive = true;
    JSONObject o = new JSONObject();
    put(o, KIND, FLOAT_KIND);
    double val = -1;
}
@after {
    put(o, VALUE, val);
    $result = o;
}
    :       (MINUS { positive = false; } | PLUS)? doubleToken 
        {
            val = $doubleToken.result * (positive ? 1 : -1);
        }
    ;

boolLit returns [JSONObject result]
@init {
    JSONObject o = new JSONObject();
    put(o, KIND, BOOL_KIND);
    boolean val = false;
}
@after {
    put(o, VALUE, val);
    $result = o;
}
    : TRUE { val = true; }
    | FALSE { val = false; }
    ;

identifier returns [String result]
    : IDENTIFIER
        { String s = $IDENTIFIER.text;
          if (s.startsWith("`") && s.endsWith("`"))
              s = s.substring(1, s.length()-1);
          $result = s; }
    ;

program returns [JSONObject result]
    : objectMembers SEMI? EOF
        {
            $result = mkObj(UNIT_KIND);
            put($result, MEMBERS, $objectMembers.result);
        }
    ;

objectMembers returns [JSONArray result]
@init {
    $result = new JSONArray();
}
    : m=objectMember { result.put($m.result); } (SEMI m=objectMember { result.put($m.result); } )*
    ;

objectMember returns [JSONObject result]
    : slotDef { $result = $slotDef.result; }
    ;

slotDef returns [JSONObject result]
    : varDef { $result = $varDef.result; }
    ;

varDef returns [JSONObject result]
@init {
    boolean isVal = true;
    JSONObject o = mkObj(VARDEF_KIND);
}
@after {
    put(o, IS_VAL, isVal);
    $result = o;
}
    : v=(VAR { isVal = false; } | VAL) identifier EQ exp
        {
            put(o, NAME, $identifier.result);
            put(o, INIT, $exp.result);
        }
    | v=(VAR { isVal = false; } | VAL) identifier
        {
            put(o, NAME, $identifier.result);
            put(o, INIT, JSONObject.NULL);
        }
    ;

exp returns [JSONObject result]
    : keywordExp      { $result = $keywordExp.result; }
    | (lhs (EQ | COLONEQ)) => assignment
                      { $result = $assignment.result; }
//     | assignment      { $result = $assignment.result; }
    | simpleExp       { $result = $simpleExp.result; }
    ;

keywordExp returns [JSONObject result]
    : ifExp           { $result = $ifExp.result; }
    | whileLoop       { $result = $whileLoop.result; }
    | throwExp        { $result = $throwExp.result; }
    | tryExp          { $result = $tryExp.result; }
    | returnExp       { $result = $returnExp.result; }
    | spawnExp        { $result = $spawnExp.result; }
    | objectExp       { $result = $objectExp.result; }
    | closureExp      { $result = $closureExp.result; }
    ;

assignment returns [JSONObject result]
@init {
    $result = mkObj(ASSIGN_KIND);
}
    : lhs EQ rhs
        {
            // lhs is a select object. We extract the fields and
            // inline them in the assign node. This should be
            // refactored later.
            try {
                if ($lhs.result.isNull(TARGET)) {
                    put($result, TARGET, JSONObject.NULL);
                } else {
                    JSONObject target = $lhs.result.getJSONObject(TARGET);
                    put($result, TARGET, target);
                }
                String name = $lhs.result.getString(NAME);
                put($result, NAME, name);
                
                put($result, VALUE, $rhs.result);
            } catch (JSONException e) {
                
            }
        }
    ;

lhs returns [JSONObject result]
    : select { $result = $select.result; }
    ;

rhs returns [JSONObject result]
    : exp { $result = $exp.result; }
    ;

select returns [JSONObject result]
@init {
    $result = mkObj(SELECT_KIND);
}
    : var DOT identifier
        {
            put($result, TARGET, $var.result);
            put($result, NAME, $identifier.result);
        }
    | identifier
        {
            put($result, NAME, $identifier.result);
        }
    ;

simpleExp returns [JSONObject result]
    : e1=conditionalOrExp { $result = $e1.result; }
    ;

conditionalOrExp returns [JSONObject result]
@init {
    JSONObject exp = null;
}
@after {
    $result = exp;
}
    : e1=conditionalAndExp { exp = $e1.result; } (
            OROR e2=conditionalAndExp
            {
                exp = mkMCall(exp, "||", $e2.result);
            }
        )*
    ;

conditionalAndExp returns [JSONObject result]
@init {
    JSONObject exp = null;
}
@after {
    $result = exp;
}
    :   e1=inclusiveOrExp { exp = $e1.result; } (
            ANDAND e2=inclusiveOrExp
            {
                exp = mkMCall(exp, "&&", $e2.result);
            }
        )*
    ;

inclusiveOrExp returns [JSONObject result]
@init {
    JSONObject exp = null;
}
@after {
    $result = exp;
}
    : e1=andExp { exp = $e1.result; } (
            OR e2=andExp
            {
                exp = mkMCall(exp, "|", singletonArray($e2.result));
            }
        )*
    ;

andExp returns [JSONObject result]
@init {
    JSONObject exp = null;
}
@after {
    $result = exp;
}
    :   e1=equalityExp { exp = $e1.result; } (
            AND e2=equalityExp
            {
                exp = mkMCall(exp, "&", singletonArray($e2.result));
            }
        )*
    ;

equalityExp returns [JSONObject result]
@init {
    JSONObject exp = null;
}
@after {
    $result = exp;
}
    :   e1=relationalExp { exp = $e1.result; } (
            ( d=EQUAL | d=BANGEQ)
            e2=relationalExp
            {
                exp = mkMCall(exp, $d.text, singletonArray($e2.result));
            }
        )*
    ;

relationalExp returns [JSONObject result]
@init {
    JSONObject exp = null;
}
@after {
    $result = exp;
}
    :   e1=additiveExp { exp = $e1.result; } (
            ( d=LESSEQ | d=GREATEREQ | d=LESS | d=GREATER )
            e2=additiveExp
            {
                exp = mkMCall(exp, $d.text, singletonArray($e2.result));
            }
        )*
    ;

additiveExp returns [JSONObject result]
@init {
    JSONObject exp = null;
}
@after {
    $result = exp;
}
    :   e1=multiplicativeExp { exp = $e1.result; } (
            (d=PLUS | d=MINUS | d=DOTDOT)
            e2=multiplicativeExp
            {
                exp = mkMCall(exp, $d.text, singletonArray($e2.result));
            }
        )*
    ;

multiplicativeExp returns [JSONObject result]
@init {
    JSONObject exp = null;
}
@after {
    $result = exp;
}
    : e1=unaryExp { exp = $e1.result; } (
            ( d=MULT | d=DIV | d=REMAINDER ) 
            e2=unaryExp
            {
                exp = mkMCall(exp, $d.text, singletonArray($e2.result));
            }
        )*
    ;

unaryExp returns [JSONObject result]
    : BANG primary
        {
            $result = mkMCall($primary.result, "!", emptyArray());
        }
    | primary { $result = $primary.result; }
    ;

primary returns [JSONObject result]
    : msgSend         { $result = $msgSend.result; }
    | methodCall      { $result = $methodCall.result; }
    | call            { $result = $call.result; }
    | block           { $result = $block.result; }
    | parExp          { $result = $parExp.result; }
    | literal         { $result = $literal.result; }
    | var             { $result = $var.result; }
    ;

var returns [JSONObject result]
@init {
    $result = mkObj(VAR_KIND);
}
    : THIS       { put($result, NAME, "THIS"); }
    | identifier { put($result, NAME, $identifier.result); }
    ;

parExp returns [JSONObject result]
    : LPAREN exp RPAREN { $result = $exp.result; }
    ;

msgSend returns [JSONObject result]
    : var BANG exp
        {
            $result = mkObj(SEND_KIND);
            put($result, TARGET, $var.result);
            put($result, VALUE, $exp.result);
        }
    ;

closureExp returns [JSONObject result]
    : FUN LPAREN formals? RPAREN EQGT exp
        {
            JSONObject o = mkObj(CLOSURE_KIND);
            put(o, FORMALS, selfOrEmpty($formals.result));
            put(o, BODY, $exp.result);
            $result = o;
        }
    ;

objectExp returns [JSONObject result]
    : OBJECT objectBody?
        {
            $result = mkObj(OBJECT_KIND);
            put($result, BODY, selfOrEmpty($objectBody.result));
        }
    ;

objectBody returns [JSONArray result]
    : LBRACE SEMI* ( objectMembers SEMI* )? RBRACE
        {
            $result = selfOrEmpty($objectMembers.result);
        }
   ;

formals returns [JSONArray result]
@init {
    $result = new JSONArray();
}
    : f=formal { $result.put($f.result); } (COMMA f=formal { $result.put($f.result); })*
;

formal returns [JSONObject result]
@init {
    boolean isVal = true;
}
    : v=(VAR { isVal = false; } | VAL)? identifier
        {
            JSONObject o = mkObj(VARDEF_KIND);
            put(o, NAME, $identifier.result);
            put(o, IS_VAL, isVal);
            put(o, INIT, JSONObject.NULL);
            $result = o;
        }
    ;

block returns [JSONObject result]
@init {
    $result = mkObj(BLOCK_KIND);
}
    : LBRACE SEMI* ( blockMembers SEMI? )? RBRACE
        {
            if ($blockMembers.result == null) {
                put($result, MEMBERS, singletonArray(mkNOP()));
            } else {
                put($result, MEMBERS, $blockMembers.result);
            }
        }
    ;

blockMembers returns [JSONArray result]
@init {
    $result = new JSONArray();
}
//     : b=blockMember { $result.add($b.result); }
//         ( SEMI*
//           b=blockMember { $result.add($b.result); } )* SEMI?
    : b=blockMember { $result.put($b.result); }
        ( semiExceptAfterBlock SEMI*
          b=blockMember { $result.put($b.result); } )* SEMI?
    ;

blockMember returns [JSONObject result]
    : varDef      { $result = $varDef.result; }
    | exp         { $result = $exp.result; }
    ;

methodCallChain returns [JSONObject result]
@init {
    JSONObject exp = null;
}
@after {
    $result = exp;
}
    : parExp { exp = $parExp.result; }
        DOT i1=identifier ((LPAREN RPAREN)? | LPAREN c1=argList RPAREN)
        {
            exp = mkMCall(exp, $i1.result, selfOrEmpty($c1.result));
        }
            ( DOT i2=identifier ((LPAREN RPAREN)? | LPAREN c2=argList RPAREN)
            {
                exp = mkMCall(exp, $i2.result, selfOrEmpty($c2.result)); 
            }
            )*
    | call { exp = $call.result; }
        DOT i1=identifier ((LPAREN RPAREN)? | LPAREN c1=argList RPAREN)
        {
            exp = mkMCall(exp, $i1.result, selfOrEmpty($c1.result));
        }
            ( DOT i2=identifier ((LPAREN RPAREN)? | LPAREN c2=argList RPAREN)
            {
                exp = mkMCall(exp, $i2.result, selfOrEmpty($c2.result)); 
            }
            )*
    | literal { exp = $literal.result; }
        DOT i1=identifier ((LPAREN RPAREN)? | LPAREN c1=argList RPAREN)
        {
            exp = mkMCall(exp, $i1.result, selfOrEmpty($c1.result));
        }
            ( DOT i2=identifier ((LPAREN RPAREN)? | LPAREN c2=argList RPAREN)
            {
                exp = mkMCall(exp, $i2.result, selfOrEmpty($c2.result)); 
            }
            )*
    | THIS
        {
            exp = new JSONObject();
            put(exp, KIND, VAR_KIND);
            put(exp, NAME, "THIS");
        }
        DOT i1=identifier ((LPAREN RPAREN)? | LPAREN c1=argList RPAREN)
        {
            exp = mkMCall(exp, $i1.result, selfOrEmpty($c1.result));
        }
            ( DOT i2=identifier ((LPAREN RPAREN)? | LPAREN c2=argList RPAREN)
            {
                exp = mkMCall(exp, $i2.result, selfOrEmpty($c2.result)); 
            }
            )*
    | var { exp = $var.result; }
        DOT i1=identifier ((LPAREN RPAREN)? | LPAREN c1=argList RPAREN)
        {
            exp = mkMCall(exp, $i1.result, selfOrEmpty($c1.result));
        }
            ( DOT i2=identifier ((LPAREN RPAREN)? | LPAREN c2=argList RPAREN)
            {
                exp = mkMCall(exp, $i2.result, selfOrEmpty($c2.result)); 
            }
            )*
    ;

methodCall returns [JSONObject result]
    : methodCallChain
        {
            $result = $methodCallChain.result;
        }
    ;

call returns [JSONObject result]
    : var c1=callSuffix
        {
            $result = mkMCall($var.result, "apply", $c1.result);
        }
        ( c2=callSuffix
        {
            $result = mkMCall($result, "apply", $c2.result);
        } )*
//     | THIS c1=callSuffix
//         {
//             $result = F($THIS).Call(Fpos($THIS).Var(Fpos($THIS).Id(Name.THIS)), Collections.<ITypeNode>emptyList(), $c1.result);
//         }
//         ( c2=callSuffix
//         {
//             $result = F().Call($result, Collections.<ITypeNode>emptyList(), $c2.result);
//         } )*
    ;

callSuffix returns [JSONArray result]
    : LPAREN argList? RPAREN
        {
            $result = selfOrEmpty($argList.result);
        }
    ;

argList returns [JSONArray result]
    : exprList { $result = $exprList.result; }
    ;

exprList returns [JSONArray result]
@init {
    $result = new JSONArray();
}
    : e=exp { $result.put($e.result); } (COMMA e=exp { $result.put($e.result); } )*
    ;

throwExp returns [JSONObject result]
    : THROW exp
        {
            $result = mkObj(THROW_KIND);
            put($result, VALUE, $exp.result);
        }
    ;

whileLoop returns [JSONObject result]
    : WHILE parExp exp
        {
            $result = mkObj(WHILE_KIND);
            put($result, COND, $parExp.result);
            put($result, BODY, $exp.result);
        }
    ;

tryExp returns [JSONObject result]
    : TRY e=exp semiExceptAfterBlock? CATCH LPAREN formal RPAREN elseex=exp
        {
            $result = mkObj(TRY_KIND);
            put($result, VALUE, $e.result);
            put($result, FORMALS, singletonArray($formal.result));
            put($result, ELS, $elseex.result);
        }
    ;

spawnExp returns [JSONObject result]
    : SPAWN closureExp
        {
            $result = mkObj(SPAWN_KIND);
            put($result, VALUE, $closureExp.result);
        }
    ;

returnExp returns [JSONObject result]
    : RETURN exp
        {
            $result = mkObj(RETURN_KIND);
            put($result, VALUE, $exp.result);
        }
    | RETURN
        {
            $result = mkObj(RETURN_KIND);
            put($result, VALUE, JSONObject.NULL);
        }
    ;

ifExp returns [JSONObject result]
    : IF parExp thenex=exp semiExceptAfterBlock? ELSE elseex=exp
        {
            $result = mkObj(IF_KIND);
            put($result, COND, $parExp.result);
            put($result, THEN, $thenex.result);
            put($result, ELS, $elseex.result);
        }
    | IF parExp thenex=exp
        {
            $result = mkObj(IF_KIND);
            put($result, COND, $parExp.result);
            put($result, THEN, $thenex.result);
            put($result, ELS, mkNOP());
        }
    ;

semiExceptAfterBlock
    : {
        lastToken().getText().equals("}") ||
        lastToken().getText().equals(";")
      }? => /* empty */
    | SEMI
    ;
