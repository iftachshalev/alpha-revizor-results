.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RAX, -499021873 
OR AX, -24414 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], -42 
XCHG DX, AX 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], SI 
SETO BL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST AL, -95 
BTS RDI, 50 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDX], 122 
CMOVS RSI, RAX 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RBX], RAX 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RAX] 
SETB AL 
JMP .bb_main.3 
.bb_main.3:
OR RSI, 52 
BTR RSI, RDI 
AND SIL, -91 # instrumentation
CMOVO RSI, RAX 
TEST ESI, -1120496401 
OR CL, 82 
AND DX, -80 
CMOVNL BX, SI 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], RAX 
SETO BL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDI 
JMP .bb_main.4 
.bb_main.4:
AND DIL, 12 # instrumentation
SETNB CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RSI] 
SETBE DL 
CMOVNZ CX, BX 
BTR ECX, -119 
AND SIL, -41 # instrumentation
MOVZX EDI, AX 
SETNS BL 
MOV AX, -17820 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
