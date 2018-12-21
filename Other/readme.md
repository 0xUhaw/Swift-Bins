
## Other

### View Life Cycle
#### 程式碼載入的順序
* viewDidLoad
	* 載入畫面後立即執行
* viewWillAppear
`override func viewWillAppear(_ animated: Bool){
super.viewWillAppear(animated)}`
	* 畫面即將顯示到螢幕時執行
* viewDidAppear
	* 畫面已經顯示到螢幕時執行
* viewWillDisappear
	* 畫面即將離開時執行
* viewDidDisappear
	* 畫面已經離開時執行
