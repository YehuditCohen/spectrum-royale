package com.unhurdle.spectrum
{
    import org.apache.royale.core.UIBase;

    public class TextArea extends UIBase
    {
        public function TextArea()
        {
            super();
            typeNames = "spectrum-Textfield";
        }
        private var _placeholder:String;

        public function get placeholder():String
        {
        	return _placeholder;
        }

        public function set placeholder(value:String):void
        {
            //set the content in the textArea
        	_placeholder = value;
        }
        private var _multiline:Boolean;
        public function get multiline():Boolean
        {
            return _multiline;
        }
        public function set multiline(value:Boolean):void
        {
            if(value != !!_multiline){
                toggle(this,"spectrum-ButtonGroup--multiline",value);
            }
            _multiline = value;
        }
        private var _isValid:Boolean;
        public function get isValid():Boolean
        {
            return _isValid;
        }
        public function set isValid(value:Boolean):void
        {
            var newIsValid:String;
            if(value){
                newIsValid = "is-valid";
            }
            else{
                newIsValid = "is-invalid";
            }
            toggle(this,newIsValid, true);
            if(_isValid != "undefined"){
                var oldIsValid:String;
                if(_isValid){
                    oldIsValid = "is-valid";
                }
                else{
                    oldIsValid = "is-invalid";
                }
                toggle(this,oldIsValid, false);
            }
            _isValid = value;
        }
        private var _quiet:Boolean;
        public function get quiet():Boolean
        {
            return _quiet;
        }
        public function set quiet(value:Boolean):void
        {
            if(value != !!_quiet){
                toggle(this,"spectrum-ButtonGroup--quiet",value);
            }
            _quiet = value;
        }
        //name???
        //lang?????
    }
}