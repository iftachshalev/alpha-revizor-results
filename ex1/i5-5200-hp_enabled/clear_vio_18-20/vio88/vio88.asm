.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT AL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RCX] 
AND SIL, 71 # instrumentation
CMOVNBE EBX, ECX 
LOOPNE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
BSWAP RAX 
AND RAX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RAX] 
MOVSX SI, SIL 
CMOVNZ ESI, EBX 
BT EDI, EDX 
AND RDX, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RCX] 
XCHG BL, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], 121 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND SIL, 81 # instrumentation
SETNBE BL 
BTC ECX, -45 
XCHG RDX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDX] 
CMOVS CX, CX 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
TEST AL, 22 
SETB CL 
SETP AL 
SETS BL 
CMOVNBE RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RDX], 1 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RAX] 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -115 # instrumentation
CMOVNS RDI, RAX 
OR DX, BX 
XCHG DX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RAX] 
CMOVB RDX, RDI 
CMOVNP SI, SI 
CMPXCHG BL, AL 
XOR AX, -7 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
