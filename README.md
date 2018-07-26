# ButtonWithLoader


![Alt Loader](https://github.com/sourov2008/ButtonWithLoader/blob/develop/ButtonWithLoader/Loader.gif)


Simply add UIActivityIndicator in your UIButton.
Add SHLoaderButton .h .m file  into your project

set your button class 
        
        SHLoaderButton
        
Decelar property   
      
           @property (weak, nonatomic) IBOutlet SHLoaderButton *btnActionLoader;

        
When you click button loader will automatically start animation .

To stop loader 

            self.btnActionLoader.stopLoader = YES;


You can change size of loader by 

              self.btnActionLoader.indicatorViewStyle = UIActivityIndicatorViewStyleGray;
              
You can change size of loader color from interface builder 
