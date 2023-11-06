.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC AX, -85 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], -78 
AND RDI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDI] 
SETNS CL 
NOT AL 
BTC AX, 21 
AND DIL, -96 # instrumentation
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RBX] 
CMOVNO DX, BX 
NOT EBX 
SETZ BL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], -3 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RAX] 
XADD DL, BL 
NOT CL 
MOVSX RDI, DIL 
CMOVS ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RCX] 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, 0 # instrumentation
CMOVP AX, CX 
MOVZX BX, BL 
XOR DL, AL 
XCHG CL, CL 
XOR CX, CX 
AND RDX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDX], 4 
BTC RSI, 5 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RDI] 
BT ESI, EDX 
BTR ECX, ESI 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND CL, CL 
OR AL, CL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RCX] 
CMOVNP EBX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
