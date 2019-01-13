package com.unhurdle.spectrum.typography
{

  import com.unhurdle.spectrum.TextNode;

  public class PageTitle extends TypographyBase
  {
    /**
     * PageTitle typography
     * Visually identical to the quiet varient of Heading2
     */
    public function PageTitle()
    {
      super();
    }
    override protected function getSelector():String{
      return "spectrum-Heading--pageTitle";
    }

    override protected function getTag():String{
      return "h2";
    }

  }
}