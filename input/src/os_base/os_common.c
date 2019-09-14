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

void INT_DIV(big_int* Quotient, const big_int* Dividend, const big_int* Divisor)
{
   /*Tag: Big Int*/
   /*
   example: 
   Dividend 0x0456
   Divisor  0x32
   Quotient 0x0456 / 0x32
   
   0x0456 : 0x32 = 0x16 R 0x9
  -0x032|
   -----|
    0x136
   -0x12C
    -----|
        9
   */
   uint32 nibble_shift_left_amount = 0u;
   big_int local_zero;
   big_int tmp_Dividend, tmp_Divisor;
   big_int rest;
   uint32  local_cnt = 0;
   
   ASSIGN_NULL(&local_zero);
   ASSIGN(&tmp_Dividend, Dividend);
   ASSIGN(&tmp_Divisor, Divisor);
   
   /* Case 1: Divisor == 0 */
   if(IS_EQUAL(tmp_Divisor,local_zero);
   {
      // Error "N.a.N."      
      OS_SET_SW_BUG(E_OS_BUG_DIVISION_BY_ZERO, E_FUNC_INTDIV);
      return;      
   }      
   while(IS_GREATER_OR_EQUAL(dividend_rest, tmp_Dividend))
   {
      /* 
      Step 1: Divisor um so viele nibble shiften nach links bis der Divisor größer wie der Dividend ist
      Step 2: Die Zahl aus Step 1 um 1 verringern = nibble_shift_left_amount
      Step 3: Dividend - n*(Divisor << nibble_shift_left_amount ) = Rest (e.g. 0x136)
              Dabei n solange vergrößern bis "Rest" kleiner wie Divisor ist  
      Step 4: Teilergebnis = n*(1<<nibble_shift_left_amount)           
      Step 5: Teilergebnisse addieren.
      */
      /* Step 1: Divisor um so viele nibble shiften nach links bis der Divisor größer wie der Dividend ist */
      while(IS_LESS_OR_EQUAL(tmp_Divisor, tmp_Dividend))
      {      
         SHIFT_LEFT(tmp_Divisor, 4u);
         nibble_shift_left_amount++;
      }
      /* Divisor is already shifted at this point by nibble_shift_left_amount */
      /* Step 3: Dabei n = local_cnt solange vergrößern bis "Rest" kleiner wie Divisor ist */
      
      local_cnt = 0u;
      while(IS_LESS_OR_EQUAL(&rest, tmp_Divisor))
      {
         INT_SUB(&rest,&tmp_Dividend,&tmp_Divisor);
         local_cnt++;      
      }
      /* Step 4: Teilergebnis = n*(1<<nibble_shift_left_amount)           */
      big_int tmp;
      uint32 1_shifted_nibble = 1u<<nibble_shift_left_amount;
      uint32 u32_teilergebnis = local_cnt * 1_shifted_nibble;
      big_int teilergebnis;
      ASSIGN_UINT32(&teilergebnis,u32_teilergebnis);
      
      /* Step 5: Teilergebnisse addieren.*/
      INT_ADD(&teilergebnis, &teilergebnis, &rest);         
   }   
}

void INT_MUL(big_int* Produkt, const big_int* Faktor1, const big_int* Faktor2)
{
   /*Tag: Big Int*/
   /*
   example: 
   Faktor1 0x0456
   Faktor2 0x0321
   Produkt 0x0456 * 0x0321
   
   
   */
   big_int result, local_tmp_bigInt;
   
   ASSIGN_NULL(&local_tmp_bigInt);
   ASSIGN_NULL(&result);
   
   /* 
   0x0456 * 0x0321
   => 0x0400 * 0x0300 = 0x04 * 0x03 * 0x100*0x100     = 0xC0000
    + 0x0400 * 0x0021 = 0x04 * 0x21 * 0x100*0x1       = 0x8400 
    + 0x0056 * 0x0300 = 0x56 * 0x03 * 0x1  *0x100*0x1 = 0x10200
    + 0x0056 * 0x0021 = 0x56 * 0x21 * 0x1  *0x1  *0x1 = 0xB16
    ----------------------
    => Summe = 0xD9116
   
   Step 1: 
   Step 2: 
   Step 3: 
   Step 4: 
   Step 5: 
   */
   for(pos1 = BIG_INT_SIZE-1; pos1 >= 0; pos1--)
   {
      for(pos2 = BIG_INT_SIZE-1; pos2 >= 0; pos2--)
      {
         local_tmp16 = ((uint16) *(Faktor1+pos1)) * ((uint16) *(Faktor2+pos2));
         
         ASSIGN_UINT32(&local_tmp_bigInt, (uint32) local_tmp16);
         
         SHIFT_LEFT(&local_tmp_bigInt, pos1+pos2);
         
         INT_ADD(&result, &result, &local_tmp_bigInt);
      }
   }  
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
