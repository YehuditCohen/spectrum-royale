package com.unhurdle.spectrum
{
  COMPILE::JS
  {
    import org.apache.royale.core.WrappedHTMLElement;
    import org.apache.royale.html.util.addElementToWrapper;
  }
  import com.unhurdle.spectrum.const.IconPrefix;
  import com.unhurdle.spectrum.includes.IconInclude;

  public class ImageIcon extends SpectrumBase
  {
    public static function getCSSTypeSelector(type:String):String{
      return IconPrefix.SPECTRUM_CSS_ICON + type;
    }
    public function ImageIcon(src:String = null)
    {
      super();
      size = "S";
      if(src){
        this.src = src;
      }
    }
    override protected function getSelector():String{
      return IconInclude.getSelector();
    }

    private var _size:String;

    public function get size():String
    {
    	return _size;
    }

    public function set size(value:String):void
    {
      if(!value || value == _size){
        return;
      }
      if(!Icon.validateSize(value)){
        throw new Error("invalid size: " + value);
      }
      if(_size){
        toggle(valueToSelector("size" + _size),false);
      }
    	_size = value;
      toggle(valueToSelector("size" + value),true);
    }

    
    private var _src:String;

    public function get src():String
    {
    	return _src;
    }

    public function set src(value:String):void
    {
    	_src = value;
      (element as HTMLImageElement).src = value;
    }
    public function setStyle(attribute:String,value:Object):void{
      (element as HTMLElement).style[attribute] = value;
    }

		COMPILE::JS
		override protected function setClassName(value:String):void
		{
			element.setAttribute('class', value);
		}
    /**
     * @royaleignorecoercion org.apache.royale.core.WrappedHTMLElement
     */
    COMPILE::JS
    override protected function createElement():WrappedHTMLElement{
      var elem:WrappedHTMLElement = addElementToWrapper(this,"img");
      elem.setAttribute("focusable", false);
      elem.setAttribute("aria-hidden",true);
      return elem;
    }


  }
}