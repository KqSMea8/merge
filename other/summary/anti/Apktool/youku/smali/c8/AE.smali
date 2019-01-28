.class public Lc8/AE;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "WVBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/BE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/BE;


# direct methods
.method constructor <init>(Lc8/BE;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 582
    const-string/jumbo v2, "WVBluetooth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCharacteristicChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 585
    .local v1, "eventObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "deviceId"

    iget-object v3, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v3}, Lc8/BE;->access$500(Lc8/BE;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 586
    const-string/jumbo v2, "serviceId"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 587
    const-string/jumbo v2, "characteristicId"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 588
    const-string/jumbo v2, "value"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 589
    iget-object v2, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v2}, Lc8/BE;->access$1000(Lc8/BE;)Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v2

    const-string/jumbo v3, "WV.Event.WVBluetooth.characteristicValueChanged"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    .end local v1    # "eventObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 535
    const-string/jumbo v3, "WVBluetooth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCharacteristicRead : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v3, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v3}, Lc8/BE;->access$800(Lc8/BE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 537
    new-instance v1, Lc8/kE;

    invoke-direct {v1}, Lc8/kE;-><init>()V

    .line 538
    .local v1, "result":Lc8/kE;
    if-nez p3, :cond_1

    .line 540
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 541
    .local v2, "value":Lorg/json/JSONObject;
    const-string/jumbo v3, "value"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3, v2}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 543
    iget-object v3, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v3}, Lc8/BE;->access$800(Lc8/BE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v2    # "value":Lorg/json/JSONObject;
    :goto_0
    iget-object v3, p0, Lc8/AE;->this$0:Lc8/BE;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lc8/BE;->access$802(Lc8/BE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 554
    .end local v1    # "result":Lc8/kE;
    :cond_0
    return-void

    .line 544
    .restart local v1    # "result":Lc8/kE;
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 546
    iget-object v3, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v3}, Lc8/BE;->access$800(Lc8/BE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0

    .line 549
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    const-string/jumbo v3, "msg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FAILED_TO_READ: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v3, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v3}, Lc8/BE;->access$800(Lc8/BE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 559
    const-string/jumbo v3, "WVBluetooth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCharacteristicWrite : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v3, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v3}, Lc8/BE;->access$900(Lc8/BE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 561
    new-instance v1, Lc8/kE;

    invoke-direct {v1}, Lc8/kE;-><init>()V

    .line 562
    .local v1, "result":Lc8/kE;
    if-nez p3, :cond_1

    .line 564
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 565
    .local v2, "value":Lorg/json/JSONObject;
    const-string/jumbo v3, "value"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3, v2}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 567
    iget-object v3, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v3}, Lc8/BE;->access$900(Lc8/BE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .end local v1    # "result":Lc8/kE;
    .end local v2    # "value":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v3, p0, Lc8/AE;->this$0:Lc8/BE;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lc8/BE;->access$902(Lc8/BE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 578
    return-void

    .line 568
    .restart local v1    # "result":Lc8/kE;
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 570
    iget-object v3, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v3}, Lc8/BE;->access$900(Lc8/BE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 573
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    const-string/jumbo v3, "msg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FAILED_TO_WRITE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v3, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v3}, Lc8/BE;->access$900(Lc8/BE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 488
    iget-object v2, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v2, p3}, Lc8/BE;->access$302(Lc8/BE;I)I

    .line 489
    const-string/jumbo v2, "WVBluetooth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onConnectionStateChange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v2, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v2}, Lc8/BE;->access$400(Lc8/BE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 491
    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    .line 492
    iget-object v2, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v2}, Lc8/BE;->access$400(Lc8/BE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 496
    :goto_0
    iget-object v2, p0, Lc8/AE;->this$0:Lc8/BE;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lc8/BE;->access$402(Lc8/BE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 499
    :cond_0
    iget-object v2, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v2}, Lc8/BE;->access$500(Lc8/BE;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    if-eqz v2, :cond_1

    if-nez p3, :cond_1

    .line 501
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 502
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "deviceId"

    iget-object v3, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v3}, Lc8/BE;->access$500(Lc8/BE;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    iget-object v2, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v2}, Lc8/BE;->access$600(Lc8/BE;)Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v2

    const-string/jumbo v3, "WV.Event.WVBluetooth.GATTServerDisconnected"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/taobao/windvane/webview/IWVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-void

    .line 494
    :cond_2
    iget-object v2, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v2}, Lc8/BE;->access$400(Lc8/BE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 597
    const-string/jumbo v0, "WVBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDescriptorWrite : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    .line 602
    const-string/jumbo v0, "WVBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReadRemoteRssi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 9
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 512
    const-string/jumbo v6, "WVBluetooth"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onServicesDiscovered : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v6, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v6}, Lc8/BE;->access$700(Lc8/BE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 514
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v4

    .line 515
    .local v4, "serverList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 516
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothGattService;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 517
    .local v0, "array":Lorg/json/JSONArray;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 518
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGattService;

    .line 520
    .local v5, "service":Landroid/bluetooth/BluetoothGattService;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v7, "serviceId"

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 525
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v5    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_0
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 526
    .local v3, "result":Lc8/kE;
    const-string/jumbo v6, "services"

    invoke-virtual {v3, v6, v0}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 527
    iget-object v6, p0, Lc8/AE;->this$0:Lc8/BE;

    invoke-static {v6}, Lc8/BE;->access$700(Lc8/BE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 528
    iget-object v6, p0, Lc8/AE;->this$0:Lc8/BE;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lc8/BE;->access$702(Lc8/BE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 530
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothGattService;>;"
    .end local v3    # "result":Lc8/kE;
    .end local v4    # "serverList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_1
    return-void
.end method
