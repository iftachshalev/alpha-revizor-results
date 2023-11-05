.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 43 
SETBE CL 
BTR EBX, ECX 
AND DIL, 93 # instrumentation
SETBE AL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RCX] 
SETNB CL 
AND RDX, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RDX] 
STC  
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -26 # instrumentation
SETP DL 
TEST SIL, -81 
JMP .bb_main.3 
.bb_main.3:
OR SI, CX 
CMOVB BX, SI 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
MOVSX BX, AL 
CMOVNP RAX, RAX 
OR EBX, 32 
SETS CL 
OR DL, AL 
AND RDI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BT qword ptr [R14 + RDI], RCX 
MOV BL, AL 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], CX 
AND DIL, -65 
CMOVL EAX, EAX 
AND RDI, -98 
CMOVLE RDI, RSI 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], SIL 
BT ESI, EDI 
AND DIL, -116 # instrumentation
CMC  
CMOVNL EBX, EBX 
OR AL, -59 
BTC SI, -38 
CLC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
