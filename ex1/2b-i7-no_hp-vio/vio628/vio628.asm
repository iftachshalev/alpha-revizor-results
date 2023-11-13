.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX ECX, AL 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], 66 
SETZ SIL 
SETNBE BL 
CMOVNZ EDI, ESI 
SETS AL 
XCHG SIL, SIL 
XCHG RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RBX] 
SETZ BL 
NOP  
BSWAP EDI 
MOV DL, 107 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST AX, -14839 
MOVSX ESI, SI 
AND RDX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDX] 
XCHG RBX, RAX 
CMOVNL BX, DI 
CMOVNBE CX, SI 
MOVZX BX, BL 
MOVZX EBX, CX 
CMOVZ RAX, RAX 
CMOVP RDX, RSI 
SETNS DIL 
NOT CX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RAX] 
CMOVS SI, DX 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], 68 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], ECX 
AND RBX, 69 
NOT BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
