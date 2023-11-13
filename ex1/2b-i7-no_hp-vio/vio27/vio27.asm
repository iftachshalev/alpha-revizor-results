.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -29 # instrumentation
SETNL DIL 
SETNB BL 
AND RDI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDI] 
CMOVB DX, AX 
XCHG EBX, EBX 
TEST SIL, 1 
CMOVNP EAX, EBX 
XOR SIL, 94 
LEA RAX, qword ptr [RAX + RCX + 33036] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RDI] 
CMPXCHG SI, AX 
AND RBX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RBX], RBX 
CMOVB SI, DX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDI 
BTC RSI, RDX 
XOR DL, -24 
AND RCX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RCX] 
SETNLE AL 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], AL 
CWD  
TEST DIL, CL 
NOT AL 
AND RAX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RAX], 1 
AND SIL, -41 # instrumentation
MOVSX RDX, CL 
SETNS CL 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], CL 
XCHG RCX, RAX 
TEST SI, 16981 
AND RAX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
