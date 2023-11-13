.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 1 # instrumentation
SETL SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], -24 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], RAX 
CMOVL DX, AX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RCX] 
CMOVZ RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RBX], 3 
AND DIL, 45 # instrumentation
SETS DIL 
MOVSX RDI, CL 
CMOVP ECX, ESI 
XADD BX, AX 
CWD  
AND RDI, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RDI] 
CLC  
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RBX] 
MOV AX, BX 
CMOVS RAX, RSI 
OR CX, 0b1000000000000000 # instrumentation
BSR CX, CX 
AND RDX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RDX], 2 
SETZ CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RDI] 
CMOVNO EDI, ESI 
CBW  
SETBE CL 
BTC BX, -16 
AND SIL, 0 # instrumentation
MOV RDI, RAX 
NOT CL 
SETO DL 
AND DX, -24 
STD  
SETNZ CL 
SETNL DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
