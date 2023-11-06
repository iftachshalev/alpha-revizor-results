.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RAX 
XOR RDX, 4 
AND RCX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTC dword ptr [R14 + RCX], EAX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RCX] 
MOVZX EDX, DL 
CMOVNBE EDX, EDI 
MOV AL, CL 
JZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], AX 
CMOVLE EAX, ECX 
OR CL, BL 
XADD RDI, RSI 
CMOVNP EAX, EDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDX], DX 
CMOVNZ ECX, EAX 
SETS SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RAX] 
BTS EDI, -14 
AND SIL, -83 # instrumentation
SETO DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RDI], 7 
SETBE BL 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -57 # instrumentation
CMOVB RBX, RSI 
AND EDX, -50 
NOT AL 
MOVZX EBX, CL 
AND RAX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RAX], 7 
JMP .bb_main.4 
.bb_main.4:
AND SIL, -54 # instrumentation
CMOVB EDX, EAX 
XOR SI, SI 
BT RBX, 5 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], EAX 
CMOVL BX, DX 
XOR RCX, -74 
SETBE CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
