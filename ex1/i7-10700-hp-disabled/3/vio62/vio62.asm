.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX ECX, BL 
OR EBX, -106 
CMOVL EBX, EBX 
MOV RDX, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RDX], 3 
AND RBX, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], AL 
XOR AX, 13163 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RCX] 
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMPXCHG SI, CX 
CMOVNZ EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 32 
SETNZ SIL 
AND AL, -96 
XOR RAX, 900985660 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RDX 
CMOVLE ESI, EDI 
SETL DL 
CMOVS BX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RBX] 
AND EAX, EBX 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR DL, -44 
AND RDI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RDI], RCX 
SETB CL 
MOVZX EAX, DIL 
CMOVBE EDX, EDX 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RSI], 3 
AND RSI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RCX], 1 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 122 
AND RCX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
