.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT SI, DX 
NOT ESI 
AND AX, -11061 
CMOVNL RBX, RSI 
TEST AL, -102 
NOT DIL 
BTR DX, 38 
AND DIL, -79 # instrumentation
CMOVNP ESI, EBX 
OR BL, 12 
SETZ BL 
CMOVO RAX, RDI 
CMOVLE RCX, RDX 
MOVZX RAX, DIL 
CMOVLE RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], 51 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOP  
XADD AL, CL 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RCX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ECX 
CMOVZ AX, SI 
MOVZX RSI, SI 
OR RAX, 1792366451 
CLD  
CMOVNBE RBX, RBX 
BT ECX, -48 
OR RAX, -113 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RDI] 
BTR RAX, -53 
BTC RSI, RDX 
CMOVNB EDX, EDI 
AND RDX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
