#include "os_firstinc.h"
#include "os_task_common.h"

void OS_SET_SW_BUG(os_sw_bugs_t bug_nr, os_sw_bugs_function_t task_func_nr)
{
   OS_SW_BUG[task_func_nr] = bug_nr;
}



void OS_GET_CURRENT_TIME(timebig_t* time)
{
   /* update the current time info */
   OS_UpdateCurrentTime();
   /* output the time to the caller */
   ASSIGN(time, &LOCAL_SYSTEM_TIME);

}
void OS_UpdateCurrentTime(void)
{
   /* the only free running counter on STM32F4 is the DWT counter DWT_CYCCNT
   The counter will overflow every 25sec -> provide function OS_ClearCurrentTime to reset the value to 0, and !!! do not use the absolute value for calculations but use the difference between start and stop of timer
   */
   timebig_t tmp_time;
   OS_READ_AND_RESET_CURRENT_TIME(&tmp_time);

   /* increment the global time value by the new increment received by the hardware register */
   INT_ADD(&LOCAL_SYSTEM_TIME, &LOCAL_SYSTEM_TIME, &tmp_time);
}

void OS_READ_AND_RESET_CURRENT_TIME(timebig_t* timebig)
{
#if(CFG_PROCESSOR == MCU_CORTEX_M4)
   volatile uint32 time = 0u;

   /* unlock the CoreSight (CM4) */
   *DWT_LAR = 0xC5ACCE55u;

   /* enable trace/debug block TRCENA */
   *SCB_DEMCR |= 0x01000000u;

   /* save the current delta time */
   time = *DWT_CYCCNT;

   /* reset the counter to 0 cycle */
   *DWT_CYCCNT = 0u;

   /* enable the counter */
   *DWT_CTRL |= 1u;

   /* store the read time at the pointer pointer buffer */
   ASSIGN_UINT32(timebig, time);
#else
   ASSIGN_UINT32(timebig, 5u);/* assume a fixed step .... */
#endif
}

void INT_DIV(big_int* Quotient, big_int* Dividend, big_int* Divisor)
{
   /*TODO*/
}

void INT_MUL(big_int* Produkt, big_int* Faktor1, big_int* Faktor2)
{
   /*TODO*/
}

void INT_ADD(big_int* Summe, big_int* ErsterSummand, big_int* ZweiterSummand)
{
   sint8 pos;
   uint16 carry  = 0u;

   for(pos = BIG_INT_SIZE-1; pos >= 0; pos--)
   {
      uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
      Summe->number[pos] = tmp_sum & 0xFFu;
      carry = tmp_sum & 0xFF00u;
   }
}
void INT_SUB(big_int* Differenz, big_int* Minuend, big_int* Subtrahend)
{
   sint8 pos;
   uint16 carry  = 0;

   for(pos = BIG_INT_SIZE-1; pos >= 0; pos--)
   {
      uint16 tmp_diff = 0u;
      if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
      {
         tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
      }
      else if((Minuend->number[pos]+0x100u)  >= (Subtrahend->number[pos] + carry))
      {
         tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
      }
      else
      {
         /* not possible */
      }
      Differenz->number[pos] = tmp_diff;
   }
}
boolean_t IS_LESS(big_int* Operand1, big_int* Operand2)
{
   uint8 pos;
   boolean_t is_less = FALSE;/* in case no if was entered, the numbers are equal -> return FALSE */
   for(pos = 0; pos < BIG_INT_SIZE; pos++)
   {
      if(Operand1->number[pos] < Operand2->number[pos])
      {
         is_less = TRUE;
         break;
      }
      else if (Operand1->number[pos] > Operand2->number[pos])
      {
         is_less = FALSE;
         break;
      }
      else
      {
         /* don't break, but continue with next position */
      }
   }
   return is_less;
}
boolean_t IS_LESS_OR_EQUAL(big_int* Operand1, big_int* Operand2)
{
   return IS_LESS(Operand1,Operand2) || IS_EQUAL(Operand1,Operand2);
}
boolean_t IS_EQUAL(big_int* Operand1, big_int* Operand2)
{
   uint8 pos;
   boolean_t is_equal = TRUE;/* in case no if/elseif) was entered, the numbers are equal -> return TRUE */
   for(pos = 0u; pos < BIG_INT_SIZE; pos++)
   {
      if(Operand1->number[pos] != Operand2->number[pos])
      {
         is_equal = FALSE;
         break;
      }
      else
      {
         /* don't break, but continue with next position */
      }
   }
   return is_equal;
}
boolean_t IS_GREATER(big_int* Operand1, big_int* Operand2)
{
   uint8 pos;
   boolean_t is_greater = FALSE;/* in case no if was entered, the numbers are equal -> return FALSE */
   for(pos = 0u; pos < BIG_INT_SIZE; pos++)
   {
      if(Operand1->number[pos] < Operand2->number[pos])
      {
         is_greater = FALSE;
         break;
      }
      else if (Operand1->number[pos] > Operand2->number[pos])
      {
         is_greater = TRUE;
         break;
      }
      else
      {
         /* don't break, but continue with next position */
      }
   }
   return is_greater;
}
boolean_t IS_GREATER_OR_EQUAL(big_int* Operand1, big_int* Operand2)
{
   return IS_GREATER(Operand1,Operand2) || IS_EQUAL(Operand1,Operand2);
}
void ASSIGN(big_int* leftOperand, big_int* rightOperand)
{
   uint8 pos;
   for (pos = 0u; pos < BIG_INT_SIZE; pos++)
   {
      leftOperand->number[pos] = rightOperand->number[pos];
   }
}
void ASSIGN_NULL(big_int* leftOperand)
{
   uint8 pos;
   for (pos = 0u; pos < BIG_INT_SIZE; pos++)
   {
      leftOperand->number[pos] = 0x00u;
   }
}

void ASSIGN_UINT32(big_int* leftOperand, uint32 rightOperand)
{
   uint8 pos;
   uint8 i;
   for (pos = 0u; pos < BIG_INT_SIZE; pos++)
   {
      leftOperand->number[pos] = 0x00u;
   }
   for (pos = BIG_INT_SIZE-1u, i = 0u; pos >= (BIG_INT_SIZE-sizeof(uint32)); pos--, i++)
   {
      leftOperand->number[pos] = (rightOperand>>i)&0xFFu;
   }
}

uint32 get_uint32_of_4_uint8(uint8* ptr)
{
   uint32 ret_val = 0u;

   ret_val += ((uint32) *ptr)<< 24u;
   ptr++;
   ret_val += ((uint32) *ptr)<< 16u;
   ptr++;
   ret_val += ((uint32) *ptr)<< 8u;
   ptr++;
   ret_val += ((uint32) *ptr)<< 0u;

   return ret_val;
}
void set_4_uint8_to_uint32(uint8* ptr, uint32 value)
{
   *ptr = (value >>24u)&0xFFu;
   ptr++;
   *ptr = (value >>16u)&0xFFu;
   ptr++;
   *ptr = (value >>8u)&0xFFu;
   ptr++;
   *ptr = (value >>0u)&0xFFu;
}
