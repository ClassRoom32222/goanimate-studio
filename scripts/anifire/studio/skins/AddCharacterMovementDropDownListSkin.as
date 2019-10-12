package anifire.studio.skins
{
   import anifire.studio.components.PopUpAnchor;
   import anifire.studio.components.SwapAssetDropDownListItemRenderer;
   import anifire.util.UtilDict;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.SolidColor;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import spark.components.Button;
   import spark.components.DataGroup;
   import spark.components.DropDownList;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class AddCharacterMovementDropDownListSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _AddCharacterMovementDropDownListSkin_Button1:Button;
      
      public var _AddCharacterMovementDropDownListSkin_Label1:Label;
      
      private var _385593099dataGroup:DataGroup;
      
      private var _433014735dropDown:Group;
      
      private var _137111012openButton:Button;
      
      private var _106851532popUp:PopUpAnchor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:DropDownList;
      
      public function AddCharacterMovementDropDownListSkin()
      {
         var bindings:Array = null;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._AddCharacterMovementDropDownListSkin_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_anifire_studio_skins_AddCharacterMovementDropDownListSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return AddCharacterMovementDropDownListSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 46;
         this.height = 35;
         this.mxmlContent = [this._AddCharacterMovementDropDownListSkin_Button2_i()];
         this.currentState = "normal";
         var _AddCharacterMovementDropDownListSkin_PopUpAnchor1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._AddCharacterMovementDropDownListSkin_PopUpAnchor1_i,this._AddCharacterMovementDropDownListSkin_PopUpAnchor1_r);
         states = [new State({
            "name":"normal",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"popUp",
               "name":"displayPopUp",
               "value":false
            })]
         }),new State({
            "name":"open",
            "overrides":[new AddItems().initializeFromObject({
               "destructionPolicy":"auto",
               "itemsFactory":_AddCharacterMovementDropDownListSkin_PopUpAnchor1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new SetProperty().initializeFromObject({
               "target":"popUp",
               "name":"displayPopUp",
               "value":true
            })]
         }),new State({
            "name":"disabled",
            "overrides":[]
         })];
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         AddCharacterMovementDropDownListSkin._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function _AddCharacterMovementDropDownListSkin_PopUpAnchor1_i() : PopUpAnchor
      {
         var _loc1_:PopUpAnchor = new PopUpAnchor();
         _loc1_.left = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.autoClose = false;
         _loc1_.popUpPosition = "below";
         _loc1_.popUpWidthMatchesAnchorWidth = false;
         _loc1_.popUp = this._AddCharacterMovementDropDownListSkin_Group1_i();
         _loc1_.id = "popUp";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.popUp = _loc1_;
         BindingManager.executeBindings(this,"popUp",this.popUp);
         return _loc1_;
      }
      
      private function _AddCharacterMovementDropDownListSkin_PopUpAnchor1_r() : void
      {
      }
      
      private function _AddCharacterMovementDropDownListSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._AddCharacterMovementDropDownListSkin_Rect1_c(),this._AddCharacterMovementDropDownListSkin_VGroup1_c()];
         _loc1_.id = "dropDown";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dropDown = _loc1_;
         BindingManager.executeBindings(this,"dropDown",this.dropDown);
         return _loc1_;
      }
      
      private function _AddCharacterMovementDropDownListSkin_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.fill = this._AddCharacterMovementDropDownListSkin_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _AddCharacterMovementDropDownListSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 3619402;
         return _loc1_;
      }
      
      private function _AddCharacterMovementDropDownListSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 3;
         _loc1_.bottom = 3;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._AddCharacterMovementDropDownListSkin_HGroup1_c(),this._AddCharacterMovementDropDownListSkin_DataGroup1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _AddCharacterMovementDropDownListSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 12;
         _loc1_.paddingRight = 12;
         _loc1_.verticalAlign = "middle";
         _loc1_.gap = 12;
         _loc1_.mxmlContent = [this._AddCharacterMovementDropDownListSkin_Label1_i(),this._AddCharacterMovementDropDownListSkin_Button1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _AddCharacterMovementDropDownListSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.setStyle("paddingTop",6);
         _loc1_.setStyle("paddingBottom",6);
         _loc1_.setStyle("textAlign","left");
         _loc1_.setStyle("color",10068398);
         _loc1_.id = "_AddCharacterMovementDropDownListSkin_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AddCharacterMovementDropDownListSkin_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_AddCharacterMovementDropDownListSkin_Label1",this._AddCharacterMovementDropDownListSkin_Label1);
         return _loc1_;
      }
      
      private function _AddCharacterMovementDropDownListSkin_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.setStyle("skinClass",CharacterMovementTipButtonSkin);
         _loc1_.id = "_AddCharacterMovementDropDownListSkin_Button1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AddCharacterMovementDropDownListSkin_Button1 = _loc1_;
         BindingManager.executeBindings(this,"_AddCharacterMovementDropDownListSkin_Button1",this._AddCharacterMovementDropDownListSkin_Button1);
         return _loc1_;
      }
      
      private function _AddCharacterMovementDropDownListSkin_DataGroup1_i() : DataGroup
      {
         var _loc1_:DataGroup = new DataGroup();
         _loc1_.percentWidth = 100;
         _loc1_.itemRenderer = this._AddCharacterMovementDropDownListSkin_ClassFactory1_c();
         _loc1_.layout = this._AddCharacterMovementDropDownListSkin_VerticalLayout1_c();
         _loc1_.id = "dataGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dataGroup = _loc1_;
         BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
         return _loc1_;
      }
      
      private function _AddCharacterMovementDropDownListSkin_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = SwapAssetDropDownListItemRenderer;
         return _loc1_;
      }
      
      private function _AddCharacterMovementDropDownListSkin_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "contentJustify";
         _loc1_.useVirtualLayout = false;
         _loc1_.requestedMinRowCount = 1;
         _loc1_.requestedMaxRowCount = 10;
         return _loc1_;
      }
      
      private function _AddCharacterMovementDropDownListSkin_Button2_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.width = 46;
         _loc1_.height = 35;
         _loc1_.buttonMode = true;
         _loc1_.focusEnabled = false;
         _loc1_.tabEnabled = false;
         _loc1_.setStyle("skinClass",AddCharacterMovementDropDownOpenButtonSkin);
         _loc1_.id = "openButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.openButton = _loc1_;
         BindingManager.executeBindings(this,"openButton",this.openButton);
         return _loc1_;
      }
      
      private function _AddCharacterMovementDropDownListSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Number
         {
            return popUp.width;
         },null,"dropDown.minWidth");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = UtilDict.translate("Add Movement:");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_AddCharacterMovementDropDownListSkin_Label1.text");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = UtilDict.translate("You can change action under the ACTIONS tab.");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_AddCharacterMovementDropDownListSkin_Button1.label");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : DataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:DataGroup) : void
      {
         var _loc2_:Object = this._385593099dataGroup;
         if(_loc2_ !== param1)
         {
            this._385593099dataGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dropDown() : Group
      {
         return this._433014735dropDown;
      }
      
      public function set dropDown(param1:Group) : void
      {
         var _loc2_:Object = this._433014735dropDown;
         if(_loc2_ !== param1)
         {
            this._433014735dropDown = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dropDown",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get openButton() : Button
      {
         return this._137111012openButton;
      }
      
      public function set openButton(param1:Button) : void
      {
         var _loc2_:Object = this._137111012openButton;
         if(_loc2_ !== param1)
         {
            this._137111012openButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get popUp() : PopUpAnchor
      {
         return this._106851532popUp;
      }
      
      public function set popUp(param1:PopUpAnchor) : void
      {
         var _loc2_:Object = this._106851532popUp;
         if(_loc2_ !== param1)
         {
            this._106851532popUp = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"popUp",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : DropDownList
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:DropDownList) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}
