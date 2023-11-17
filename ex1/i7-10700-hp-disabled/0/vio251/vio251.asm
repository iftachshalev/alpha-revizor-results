.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -115 # instrumentation
CMOVNLE ECX, EDI 
SETB BL 
BTC EBX, 24 
BTC AX, AX 
XOR CL, BL 
CMOVBE EDX, EDI 
CWD  
CMOVNB AX, DX 
AND RAX, -1280873777 
AND RBX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RBX] 
MOVSX EDI, DL 
STD  
LOOP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDX] 
AND AL, 44 
OR BL, CL 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -93 # instrumentation
CMOVL RCX, RBX 
XADD RDI, RCX 
AND RAX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RAX], EBX 
OR BL, SIL 
CMOVNLE CX, DX 
CMOVLE SI, CX 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], -80 
AND RDX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], CL 
JMP .bb_main.4 
.bb_main.4:
AND SIL, 119 # instrumentation
SETNB AL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], 111 
CMOVNS ESI, EAX 
XOR RAX, 721328763 
SETLE AL 
AND RDI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RDI], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
