.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG RBX, RAX 
CMOVNLE RAX, RCX 
CMOVNL EBX, EDX 
XCHG BX, DX 
AND RSI, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RSI], ESI 
AND SIL, 98 # instrumentation
SETB AL 
CMOVO BX, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RSI], 1 
AND AX, -5 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RSI] 
XOR AX, 20190 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDI], RSI 
AND ECX, EDI 
OR RAX, 223341912 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND BL, AL 
OR BX, -121 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDX] 
XADD RCX, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RBX] 
OR DX, 0b1000000000000000 # instrumentation
BSF AX, DX 
AND DL, DL 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], BL 
BSWAP ESI 
CMOVS DX, AX 
AND EAX, -20 
BTR EDX, 112 
AND RAX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RAX] 
XOR DI, CX 
CMOVS ESI, ESI 
BTR EBX, EBX 
AND DIL, 30 # instrumentation
SETNZ AL 
CMOVP RSI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
