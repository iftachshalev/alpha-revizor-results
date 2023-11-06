.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 17 # instrumentation
SETNO DL 
MOVSX RDI, DX 
BT RDX, -123 
MOV AL, -8 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], AL 
XADD CL, DL 
SETL DL 
BT AX, 76 
BTS RDI, RAX 
CMOVNBE ECX, EDX 
NOT RDI 
AND RBX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RBX] 
CMOVB RAX, RDX 
CMOVBE ECX, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDX] 
BT BX, -98 
AND RDX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDX] 
BTS EBX, 87 
AND RAX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RAX], 1 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -93 # instrumentation
NOT AL 
CMOVS EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RBX] 
SETNBE DL 
CDQ  
CMOVS EDI, ECX 
AND AL, -30 
AND RDI, 0b1111111111111 # instrumentation
XOR EBX, dword ptr [R14 + RDI] 
CMOVNZ CX, AX 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RSI], RBX 
CLD  
CMOVNL RBX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
