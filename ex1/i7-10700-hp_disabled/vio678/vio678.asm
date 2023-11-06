.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
BTR dword ptr [R14 + RBX], 5 
SETBE AL 
CMPXCHG EAX, EAX 
AND RBX, -95 
AND RCX, RSI 
AND SI, DX 
AND RAX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RAX], ECX 
AND DIL, 93 # instrumentation
CMOVNZ EDI, EDX 
CMOVL ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], ECX 
SETZ CL 
CBW  
AND DX, 5 
AND AX, -10690 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RCX] 
CMOVNLE EBX, EDI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST RDI, RSI 
LEA RBX, qword ptr [RAX + RCX] 
CMPXCHG AL, DL 
AND CL, CL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RDI] 
MOVSX AX, CL 
SETNB SIL 
SETNO CL 
CBW  
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], -2093292039 
MOV SIL, SIL 
CMOVNBE DI, AX 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], DL 
AND RSI, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RCX], 7 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
