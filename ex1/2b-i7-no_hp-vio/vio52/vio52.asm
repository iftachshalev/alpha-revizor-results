.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RSI 
BTS RDI, RDX 
AND RBX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RBX], 7 
BTC RSI, RBX 
AND DIL, 71 # instrumentation
MOVZX ESI, DX 
CMOVNO RDI, RBX 
CMOVBE RDX, RAX 
SETZ BL 
AND RAX, 892604431 
SETB BL 
OR RBX, RBX 
SETZ AL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XADD AX, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], DIL 
MOVZX ECX, DL 
CMOVNB ESI, EDI 
XADD EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], EBX 
AND RBX, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RBX] 
CMOVLE EDX, EDX 
BTS RBX, -20 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], SIL 
MOVZX DX, SIL 
CMOVNO RDI, RAX 
CMOVBE ESI, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RBX] 
TEST EBX, ESI 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], -93 
CMOVBE SI, DX 
CMOVNZ AX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
