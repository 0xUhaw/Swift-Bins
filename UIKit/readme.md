## UIKit

### Construct
#### The UIKit overview from this [blog](https://finalize.com/2012/12/14/uikit-class-hierarchy-chart/).
![](./png/1.png)

* UISwitch
	*  Using `sender.isOn` determine whether to switch
* UISegmentControl
	* Using `sender.selectedSegmentIndex` to confirm which one the user clicked
* UISlider 
	* Using `sender.value` to confirm which value the user adjusts.

------
* TableView
	* `didSelectRowAt` 
		* 取消透過Cell進到另一個畫面後，返回時留在tableView上的痕跡 ![](./png/2.png)
	
