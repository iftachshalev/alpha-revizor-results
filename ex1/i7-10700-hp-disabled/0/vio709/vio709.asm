.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RSI] 
OR EBX, -32 
OR SIL, 73 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RSI] 
OR RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDX], EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RDI] 
MOV CL, 108 
MOVSX DX, AL 
TEST ECX, 64038539 
SETZ CL 
CMOVP RBX, RSI 
TEST EDX, EDI 
BT BX, AX 
AND SIL, -66 # instrumentation
SETNL CL 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EDX 
CMOVNBE RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], BL 
MOVZX EDI, BX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR AL, BL 
OR DI, AX 
LEA BX, qword ptr [RCX + RAX + 4979] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RSI] 
AND RAX, -925960861 
CMOVNL EDX, ECX 
MOVSX ESI, AL 
CMOVO DI, BX 
MOV CL, -5 
MOV RDX, RSI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
