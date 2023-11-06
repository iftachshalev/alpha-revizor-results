.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD DL, AL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDI] 
AND SIL, -78 # instrumentation
SETB DL 
XOR AX, -23956 
OR AL, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], AL 
JNBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
XOR AL, -119 
BTC SI, -25 
AND CX, SI 
OR BL, -67 
XCHG DIL, DIL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RCX] 
MOVSX BX, AL 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTC dword ptr [R14 + RBX], EBX 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], EBX 
JNBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND DIL, 74 # instrumentation
CMOVNLE RSI, RBX 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], BL 
AND BX, BX 
SETNLE CL 
XOR DIL, -93 
JMP .bb_main.3 
.bb_main.3:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ECX 
TEST RDX, 1147583776 
MOVZX EBX, BL 
BTS RCX, 119 
AND SIL, 71 # instrumentation
LEA BX, qword ptr [RBX + RAX] 
SETNB AL 
MOVZX BX, DIL 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], -105 
BT SI, 86 
AND RAX, 0b1111111111111 # instrumentation
OR ESI, dword ptr [R14 + RAX] 
CLD  
CMOVO RAX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
