.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
MOVZX ECX, CL 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
CMOVO EAX, ECX 
JMP .bb_main.1 
.bb_main.1:
XCHG EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], -119 
MOV SI, SI 
CMOVBE DI, DI 
SETNL AL 
OR RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RCX] 
MOV DL, DL 
CMOVO EAX, EDX 
CMOVNO ECX, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDI] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BT RDX, 51 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], EBX 
SETNO DIL 
BTS RSI, -75 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RSI] 
CMOVNS RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RCX] 
MOVZX ECX, AX 
CMOVL CX, DX 
CMOVL EAX, EDX 
MOVZX EDX, DIL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EAX 
AND DIL, -39 # instrumentation
SETL CL 
AND RAX, 0b1111111111111 # instrumentation
XOR DIL, byte ptr [R14 + RAX] 
AND EAX, EDI 
NOT RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
