package cmodule.oggvorbisencoder
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM___lshldi3 extends Machine
   {
       
      
      public function FSM___lshldi3()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         FSM___lshldi3.esp = FSM___lshldi3.esp - 4;
         si32(FSM___lshldi3.ebp,FSM___lshldi3.esp);
         FSM___lshldi3.ebp = FSM___lshldi3.esp;
         FSM___lshldi3.esp = FSM___lshldi3.esp - 0;
         _loc1_ = int(li32(FSM___lshldi3.ebp + 16));
         _loc2_ = int(li32(FSM___lshldi3.ebp + 20));
         _loc3_ = li32(FSM___lshldi3.ebp + 8);
         _loc4_ = int(li32(FSM___lshldi3.ebp + 12));
         _loc5_ = uint(_loc1_) < uint(32)?1:0;
         _loc6_ = _loc2_ == 0?1:0;
         _loc5_ = _loc6_ != 0?int(_loc5_):0;
         if(_loc5_ == 0)
         {
            _loc4_ = int(uint(_loc1_) < uint(64)?1:0);
            _loc2_ = int(_loc2_ == 0?1:0);
            _loc2_ = int(_loc2_ != 0?int(_loc4_):0);
            if(_loc2_ == 0)
            {
               _loc1_ = 0;
               _loc2_ = int(_loc1_);
            }
            else
            {
               _loc2_ = 0;
               _loc1_ = int(_loc1_ + -32);
               _loc1_ = _loc3_ << _loc1_;
               FSM___lshldi3.edx = _loc1_;
               FSM___lshldi3.eax = _loc2_;
            }
            addr216:
            FSM___lshldi3.esp = FSM___lshldi3.ebp;
            FSM___lshldi3.ebp = li32(FSM___lshldi3.esp);
            FSM___lshldi3.esp = FSM___lshldi3.esp + 4;
            FSM___lshldi3.esp = FSM___lshldi3.esp + 4;
            return;
         }
         _loc2_ = _loc1_ | _loc2_;
         if(_loc2_ == 0)
         {
            _loc1_ = int(_loc3_);
            _loc2_ = int(_loc4_);
         }
         else
         {
            _loc2_ = int(32 - _loc1_);
            _loc2_ = int(_loc3_ >>> _loc2_);
            _loc4_ = _loc4_ << _loc1_;
            _loc1_ = _loc3_ << _loc1_;
            _loc2_ = _loc2_ | _loc4_;
         }
         FSM___lshldi3.edx = _loc2_;
         FSM___lshldi3.eax = _loc1_;
         §§goto(addr216);
      }
   }
}
