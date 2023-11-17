.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG DL, BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], AX 
AND RDI, 0b1111111111111 # instrumentation
XOR RDX, qword ptr [R14 + RDI] 
CMPXCHG DX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND DIL, -127 # instrumentation
CMOVNL RAX, RDX 
TEST AX, -9824 
SAHF  
CLD  
CMOVS EAX, EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], AL 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR EAX, 1255186851 
BTS EDI, -102 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], CL 
NOT RDI 
AND RSI, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RSI] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ECX 
AND DIL, 96 # instrumentation
CMOVNP RBX, RCX 
MOV DL, -121 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RBX] 
MOVZX RSI, AL 
BTC EDI, 18 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RCX 
AND SIL, -20 # instrumentation
CMOVNLE RBX, RSI 
CMOVL EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RBX], CX 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RDX 
BTS EAX, EDX 
BTR BX, 110 
AND SIL, 55 # instrumentation
CMOVNZ BX, DX 
SETNLE BL 
XOR ECX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
