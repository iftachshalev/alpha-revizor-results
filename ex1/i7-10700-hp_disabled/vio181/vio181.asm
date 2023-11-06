.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -9 # instrumentation
CMOVZ RDX, RDI 
MOV CL, CL 
XOR RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RCX], EBX 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
OR ECX, EBX 
CMOVNS RSI, RDI 
XOR RAX, -1324811114 
LEA RAX, qword ptr [RDI + RDI + 35046] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RAX] 
OR DI, 74 
CMOVBE ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RAX] 
CMC  
MOVZX RAX, DX 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RBX] 
CMOVLE ECX, EDX 
OR BL, BL 
CMOVNB RSI, RCX 
NOT RDI 
SETL CL 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RSI] 
XCHG RSI, RAX 
AND RDI, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RDI], 4 
LEA EDX, qword ptr [RDI + RCX] 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], AL 
TEST RBX, -640215538 
AND AX, 13599 
CMOVNBE BX, AX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDX 
AND DIL, -86 # instrumentation
SETNBE AL 
AND AX, -19664 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
