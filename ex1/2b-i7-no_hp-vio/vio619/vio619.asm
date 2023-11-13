.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT RSI, RCX 
STC  
XOR AL, 126 
SETNLE BL 
BTC CX, -112 
NOT AL 
CMPXCHG EBX, EDX 
MOV SIL, DIL 
CMOVL EDX, EBX 
XCHG EDI, EAX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDI 
AND SIL, -66 # instrumentation
CMOVP RDX, RAX 
CMOVP ECX, EDX 
TEST SIL, SIL 
OR EAX, 2147262413 
NOT CL 
MOV RSI, 3985419562232540776 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTS AX, -68 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], -74 
OR RBX, RDX 
SETP BL 
CMOVS RAX, RSI 
STD  
BTS RDX, -19 
XCHG DIL, BL 
TEST EDI, ECX 
BTR DX, DI 
XOR AL, 40 
AND RDI, RSI 
XOR AL, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
