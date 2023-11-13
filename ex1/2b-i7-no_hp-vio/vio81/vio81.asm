.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RCX, AL 
OR CX, SI 
XOR ESI, -90 
CMOVB SI, CX 
AND AX, -1666 
CMOVL RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDI] 
OR DL, 66 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RDX] 
NOP  
SETL AL 
BTC AX, DI 
XCHG BL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RDI] 
SETNZ BL 
AND RDI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDI] 
SETNLE AL 
MOVSX EAX, CL 
AND AL, -84 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], AL 
CMOVS ESI, EBX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 88 # instrumentation
SETNS BL 
MOV BL, 37 
AND EAX, EAX 
BT BX, -75 
AND DIL, 33 # instrumentation
CMOVNS EBX, ECX 
CMOVNZ RCX, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTR dword ptr [R14 + RCX], EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDX], AX 
AND RAX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RAX] 
SETNLE BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
