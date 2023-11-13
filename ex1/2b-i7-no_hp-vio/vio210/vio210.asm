.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -68 # instrumentation
CMOVNZ CX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RCX] 
CMOVNB BX, BX 
CWDE  
AND BL, 80 
BTR RDI, -73 
AND RSI, 0b1111111111111 # instrumentation
XOR RSI, qword ptr [R14 + RSI] 
XADD EDI, ECX 
XOR DX, CX 
AND AX, 29116 
XOR DI, DX 
SETNO BL 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], BX 
MOV DL, CL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RAX] 
XADD BL, CL 
NOP  
AND RAX, 0b1111111111111 # instrumentation
AND RSI, qword ptr [R14 + RAX] 
BTR RBX, -105 
XOR RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
CMOVS EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], -100 
AND RDI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDI] 
MOVZX RDX, DIL 
AND RDI, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RDI] 
XOR SIL, -48 
CMOVNO DX, CX 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
XCHG AL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
