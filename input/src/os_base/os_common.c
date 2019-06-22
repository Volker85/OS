#include "os_firstinc.h"
#include "os_task_common.h"

void OS_SetSwBug(os_sw_bugs_t bug_nr, os_sw_bugs_function_t task_func_nr)
{
   OS_SW_BUG[task_func_nr] = bug_nr;
}
#define DWT_CTRL   ((volatile uint32*)0xE0001000)
#define DWT_CYCCNT ((volatile uint32*)0xE0001004)

#define DWT_LAR     ((volatile uint32*)0xE0001FB0)
#define SCB_DEMCR   ((volatile uint32*)0xE000EDFC)
static timebig_t GLOBAL_TIMER1;

timebig_t OS_GetCurrentTime(void)
{
   /* the only free running counter on STM32F4 is the DWT counter DWT_CYCCNT
   The counter will overflow every 25sec -> provide function OS_ClearCurrentTime to reset the value to 0, and !!! do not use the absolute value for calculations but use the difference between start and stop of timer
   */
   #if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   return *DWT_CYCCNT;
   #else
   static uint32 time = 0;
   return time++;
   #endif

}

void OS_ResetCurrentTime(void)
{
   /* unlock the CoreSight (CM4) */
   *DWT_LAR = 0xC5ACCE55;

   /* enable trace/debug block TRCENA */
   *SCB_DEMCR |= 0x01000000;

   /* reset the counter to 0 cycle */
   *DWT_CYCCNT = 0;

   /* enable the counter */
   *DWT_CTRL |= 1;
   
   /* clear the global time variable */
   AssignNull(&GLOBAL_TIMER1);
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
   for (pos = 0; pos < BigIntSize; pos++)
   {
      leftOperand->Number[pos] = 0x00;
   }   
   //TODO
}