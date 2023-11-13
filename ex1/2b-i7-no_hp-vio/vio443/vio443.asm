.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RDX] 
BTS EDX, -108 
XOR EDI, 29 
CMOVNP RDX, RBX 
BTS RDX, -103 
CMPXCHG CL, AL 
OR AX, BX 
CMOVNZ RAX, RDI 
TEST DIL, -101 
XOR RAX, -227346035 
SETNS DIL 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], DL 
BT EDX, -7 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BT word ptr [R14 + RCX], BX 
BTS EAX, EDX 
CBW  
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], EDI 
AND RSI, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RDI] 
SETNB AL 
BTR BX, -104 
TEST RAX, -2115071785 
CMOVLE RDI, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RBX] 
CMOVZ EAX, EBX 
OR CX, -72 
AND RDI, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RDI] 
MOV CX, SI 
XOR SI, -51 
BTS CX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
