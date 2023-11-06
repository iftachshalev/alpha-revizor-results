.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 112 # instrumentation
CMOVS AX, SI 
AND RAX, -2117921714 
XCHG EDX, EAX 
CMPXCHG RAX, RAX 
CMOVZ RDX, RAX 
NOT EBX 
AND AL, -79 
SETB BL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, ESI 
AND SIL, 39 # instrumentation
SETNP BL 
XOR EDX, 7 
SETNZ DIL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RBX] 
SETNO BL 
AND DI, 57 
SETS BL 
CMOVZ EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RBX] 
SETNLE BL 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], EDX 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BT dword ptr [R14 + RCX], ESI 
AND DIL, 24 # instrumentation
CMOVS ECX, ECX 
AND RCX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RCX] 
OR RAX, 1429825119 
TEST SIL, 34 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], CL 
NOT EBX 
SETP CL 
AND BL, 62 
TEST DI, SI 
NOT RDX 
SETB SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
