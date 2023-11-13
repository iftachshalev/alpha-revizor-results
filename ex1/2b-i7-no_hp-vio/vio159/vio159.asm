.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DL, AL 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], -65 
OR AL, CL 
BT AX, DI 
SETB CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RDI] 
CMPXCHG DL, BL 
NOT AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], -103 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], -17235 
CMOVZ EDI, EAX 
MOV EAX, -591364532 
MOVZX EAX, BL 
XOR SIL, 72 
SETBE BL 
CMOVNLE RBX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RBX] 
XADD AL, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], 116 
SETO AL 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RBX, -3 
MOVSX CX, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], BL 
MOVSX ESI, CL 
TEST EAX, -2101581311 
AND RSI, 31 
SETBE AL 
MOVZX RCX, BL 
AND RDX, 0b1111111111111 # instrumentation
XOR DIL, byte ptr [R14 + RDX] 
SETNLE AL 
AND RBX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RBX] 
AND RAX, 438630456 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
