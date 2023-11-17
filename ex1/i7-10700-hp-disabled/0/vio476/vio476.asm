.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AL, 12 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BT dword ptr [R14 + RBX], EAX 
AND SIL, 77 # instrumentation
MOV RDI, RBX 
SETNO CL 
AND RSI, 0b1111111111111 # instrumentation
XOR RDX, qword ptr [R14 + RSI] 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
TEST EDX, -1524206513 
AND AX, -4367 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RBX] 
OR AX, 0b1000000000000000 # instrumentation
BSF BX, AX 
BT EBX, EBX 
BTR RAX, -70 
AND DIL, 123 # instrumentation
SETNLE AL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 53 
JMP .bb_main.2 
.bb_main.2:
XCHG RDI, RBX 
BTS EDX, -79 
OR EDI, EBX 
OR RAX, -1918956536 
OR AX, 5169 
CWDE  
LEA RCX, qword ptr [RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RSI] 
XOR RBX, RSI 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RAX] 
AND RAX, -497931903 
MOVZX BX, BL 
CMOVB BX, DX 
CMOVP RBX, RSI 
NOT ECX 
CWDE  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
