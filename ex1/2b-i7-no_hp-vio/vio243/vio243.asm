.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RDX], SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDX] 
SETNBE DIL 
AND AX, -27191 
AND RDX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BT dword ptr [R14 + RDX], EBX 
AND DIL, -81 # instrumentation
XCHG RSI, RAX 
CMOVLE RAX, RDX 
CMOVNZ BX, DI 
BT RBX, -24 
AND SIL, 34 # instrumentation
CMOVNB RBX, RDI 
CMOVNBE CX, DI 
SETP SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], AL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -31 # instrumentation
CMOVNL EDI, EBX 
CMOVO EDI, ECX 
SETNS SIL 
MOV BL, SIL 
XOR RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
TEST EDX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RDI] 
CMOVNBE RDX, RCX 
AND RCX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RCX] 
CMOVL DX, SI 
SAHF  
CMOVNBE RDI, RBX 
AND RSI, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RSI] 
MOVZX BX, CL 
CMOVS ECX, EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], CL 
XCHG ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
