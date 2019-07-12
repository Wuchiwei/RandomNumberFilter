# RandomNumberFilter

1. 打開 App, 會看到 `按下 Run 按鈕來隨機產生亂數吧` 的 UILabel 與 `Run` 的 UIButton。

<img src="https://github.com/Wuchiwei/RandomNumberFilter/blob/master/images/Default_snapshot.png" alt="image" width="200"/>

2. 按下 Run 按鈕後，產生 10 個亂數，並會出現一個 `UISegmentedControl` 的元件，有三個選項 `2 的倍數`, `3 的倍數`, `5 的倍數`
3. 出現一個 UILabel，顯示目前 `UISegmentedControl` 所選的**倍數內容。**
4. 切換 `UISegmentedControl`，內容會跟著變動
<div>
<img src="https://github.com/Wuchiwei/RandomNumberFilter/blob/master/images/Produce_random_number.png" alt="image" hspace="20" width="200"/>
<img src="https://github.com/Wuchiwei/RandomNumberFilter/blob/master/images/Switch_to_three.png" alt="image" hspace="20" width="200"/>
<img src="https://github.com/Wuchiwei/RandomNumberFilter/blob/master/images/Switch_to_five.png" alt="image" hspace="20" width="200"/>
</div>

5. 再按下 Run 按鈕後，重新出現亂數結果，並根據 `UISegmentedControl` 的選項，同步更新下方的 `UILabel` 內容
<img src="https://github.com/Wuchiwei/RandomNumberFilter/blob/master/images/Produce_random_number_again.png" alt="image" width="200"/>