.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -124 # instrumentation
SETNZ CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDI] 
CDQ  
NOP  
SETBE CL 
MOVZX RSI, CX 
CMOVNBE EAX, EAX 
SETO BL 
MOV AX, BX 
TEST DIL, 35 
XOR DI, -46 
AND RBX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTR dword ptr [R14 + RBX], EDX 
MOVZX BX, DL 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RDI] 
BTC EDI, EDI 
OR RAX, 2115348616 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], SIL 
CMPXCHG DIL, CL 
SETNZ BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDI] 
MOV RBX, -8912195249267979963 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], 892570540 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], -850543202 
AND EAX, 1998164722 
CMOVNP ESI, EBX 
CMOVLE RDI, RAX 
SETO DL 
TEST CL, 109 
CMOVNS EDI, EDX 
XOR DIL, 79 
AND AX, -4742 
CMOVNB ECX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
