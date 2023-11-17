.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RBX, -9 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], 77 
CMOVS EDI, ESI 
MOVZX RSI, DX 
MOVZX RSI, SI 
TEST RCX, -1151795576 
BTS RCX, RDX 
TEST AX, CX 
XCHG RCX, RAX 
AND RDX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDX] 
MOVZX RDI, DI 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DL 
SAHF  
CMOVNBE RDX, RBX 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], BL 
CMOVNBE RDI, RDI 
CMOVZ RSI, RCX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 5 # instrumentation
CMOVL SI, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], -72 
MOV RCX, RAX 
TEST DL, 42 
CMOVB RAX, RSI 
SETB BL 
XADD ESI, EDI 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], 112 
CMOVNP AX, BX 
CMOVNS RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RCX] 
AND DIL, CL 
BTS RDI, 108 
MOV BL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
