#include "os_firstinc.h"
#include "os_task_common.h"

void OS_SetSwBug(os_sw_bugs_t bug_nr, os_sw_bugs_function_t task_func_nr)
{
   OS_SW_BUG[task_func_nr] = bug_nr;
}

static timebig_t LOCAL_SYSTEM_TIME;

void OS_GetCurrentTime(timebig_t* time)
{
   /* update the current time info */
   OS_UpdateCurrentTime();
   /* output the time to the caller */
   Assign(time, &LOCAL_SYSTEM_TIME);
   
}
void OS_UpdateCurrentTime(void)
{
   /* the only free running counter on STM32F4 is the DWT counter DWT_CYCCNT
   The counter will overflow every 25sec -> provide function OS_ClearCurrentTime to reset the value to 0, and !!! do not use the absolute value for calculations but use the difference between start and stop of timer
   */
   timebig_t tmp_time;
   OS_ReadAndResetCurrentTime(&tmp_time);
   
   /* increment the global time value by the new increment received by the hardware register */
   IntAdd(LOCAL_SYSTEM_TIME, LOCAL_SYSTEM_TIME, &tmp_time);  
}

void OS_ReadAndResetCurrentTime(timebig_t* timebig)
{
   #if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   volatile uint32 time = 0u;
   
   /* unlock the CoreSight (CM4) */
   *DWT_LAR = 0xC5ACCE55;

   /* enable trace/debug block TRCENA */
   *SCB_DEMCR |= 0x01000000;
   
   /* save the current delta time */
   time = *DWT_CYCCNT;
   
   /* reset the counter to 0 cycle */
   *DWT_CYCCNT = 0;

   /* enable the counter */
   *DWT_CTRL |= 1;
    
   /* store the read time at the pointer pointer buffer */
   AssignUint32(timebig, time);
   #else
   timebig_t local_time;
   AssignUint32(timebig, 5u);/* assume a fixed step .... */
   #endif   
}



void IntAdd(BigInt* Summe, BigInt* ErsterSummand, BigInt* ZweiterSummand)
{
   sint8 pos;
   uint16 carry  = 0;

   for(pos = BigIntSize-1; pos >= 0; pos--)
   {
      uint16 tmpSum = (uint16)ErsterSummand->Number[pos] +(uint16)ZweiterSummand->Number[pos] + carry;
      Summe->Number[pos] = tmpSum & 0xFFu;
      carry = tmpSum & 0xFF00u;
   }
}
void IntSub(BigInt* Differenz, BigInt* Minuend, BigInt* Subtrahend)
{
   sint8 pos;
   uint16 carry  = 0;

   for(pos = BigIntSize-1; pos >= 0; pos--)
   {
      uint16 tmpDiff = 0u;
      if(Minuend->Number[pos]  >= (Subtrahend->Number[pos] + carry))
      {
         tmpDiff = (uint16)Minuend->Number[pos] - (uint16)Subtrahend->Number[pos] - carry;
      }
      else if((Minuend->Number[pos]+0x100)  >= (Subtrahend->Number[pos] + carry))
      {
         tmpDiff = 0x100+(uint16)Minuend->Number[pos] - (uint16)Subtrahend->Number[pos] - (uint16)carry;
      }
      else
      {
         /* not possible */
      }
      Differenz->Number[pos] = tmpDiff;
   }
}
boolean_t IsLess(BigInt* Operand1, BigInt* Operand2)
{
   uint8 pos;
   boolean_t IsLess = False;/* in case no if was entered, the numbers are equal -> return False */
   for(pos = 0; pos < BigIntSize; pos++)
   {
      if(Operand1->Number[pos] < Operand2->Number[pos])
      {
         IsLess = True;
         break;
      }
      else if (Operand1->Number[pos] > Operand2->Number[pos])
      {
         IsLess = False;
         break;
      }
      else
      {
         /* don't break, but continue with next position */
      }
   }
   return IsLess;
}
boolean_t IsLessOrEqual(BigInt* Operand1, BigInt* Operand2)
{
   return IsLess(Operand1,Operand2) || IsEqual(Operand1,Operand2);
}
boolean_t IsEqual(BigInt* Operand1, BigInt* Operand2)
{
   uint8 pos;
   boolean_t IsEqual = True;/* in case no if/elseif) was entered, the numbers are equal -> return True */
   for(pos = 0; pos < BigIntSize; pos++)
   {
      if(Operand1->Number[pos] != Operand2->Number[pos])
      {
         IsEqual = False;
         break;
      }
      else
      {
         /* don't break, but continue with next position */
      }
   }
   return IsEqual;
}
boolean_t IsGreater(BigInt* Operand1, BigInt* Operand2)
{
   uint8 pos;
   boolean_t IsGreater = False;/* in case no if was entered, the numbers are equal -> return False */
   for(pos = 0; pos < BigIntSize; pos++)
   {
      if(Operand1->Number[pos] < Operand2->Number[pos])
      {
         IsGreater = False;
         break;
      }
      else if (Operand1->Number[pos] > Operand2->Number[pos])
      {
         IsGreater = True;
         break;
      }
      else
      {
         /* don't break, but continue with next position */
      }
   }
   return IsGreater;
}
boolean_t IsGreaterOrEqual(BigInt* Operand1, BigInt* Operand2)
{
   return IsGreater(Operand1,Operand2) || IsEqual(Operand1,Operand2);
}
void Assign(BigInt* leftOperand, BigInt* rightOperand)
{
   uint8 pos;
   for (pos = 0; pos < BigIntSize; pos++)
   {
      leftOperand->Number[pos] = rightOperand->Number[pos];
   }
}
void AssignNull(BigInt* leftOperand)
{
   uint8 pos;
   for (pos = 0; pos < BigIntSize; pos++)
   {
      leftOperand->Number[pos] = 0x00;
   }
}

void AssignUint32(BigInt* leftOperand, uint32 rightOperand)
{
   uint8 pos;
   uint8 i;
   for (pos = 0; pos < BigIntSize; pos++)
   {
      leftOperand->Number[pos] = 0x00;
   }
   for (pos = BigIntSize-1, i = 0; pos >= (BigIntSize-sizeof(uint32)); pos--, i++)
   {
      leftOperand->Number[pos] = (rightOperand>>i)&0xFFu;
   }
}
