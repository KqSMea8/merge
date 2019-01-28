.class public Lc8/BE;
.super Lc8/RD;
.source "WVBluetooth.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVBluetooth"


# instance fields
.field private mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mConnectCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private mCurrentConnectionState:I

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mGetServiceCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private mKnownDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mReadValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private mWriteValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lc8/RD;-><init>()V

    .line 38
    iput-object v1, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 39
    iput-object v1, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 40
    iput-object v1, p0, Lc8/BE;->mConnectCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 41
    iput-object v1, p0, Lc8/BE;->mReadValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 42
    iput-object v1, p0, Lc8/BE;->mWriteValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 43
    iput-object v1, p0, Lc8/BE;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/BE;->mKnownDevices:Ljava/util/Set;

    .line 46
    iput-object v1, p0, Lc8/BE;->mGetServiceCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lc8/BE;->mCurrentConnectionState:I

    .line 485
    new-instance v0, Lc8/AE;

    invoke-direct {v0, p0}, Lc8/AE;-><init>(Lc8/BE;)V

    iput-object v0, p0, Lc8/BE;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-void
.end method

.method static synthetic access$000(Lc8/BE;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lc8/BE;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lc8/BE;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lc8/BE;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/BE;->mKnownDevices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1000(Lc8/BE;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 1
    .param p0, "x0"    # Lc8/BE;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/BE;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-object v0
.end method

.method static synthetic access$200(Lc8/BE;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 1
    .param p0, "x0"    # Lc8/BE;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/BE;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-object v0
.end method

.method static synthetic access$302(Lc8/BE;I)I
    .locals 0
    .param p0, "x0"    # Lc8/BE;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lc8/BE;->mCurrentConnectionState:I

    return p1
.end method

.method static synthetic access$400(Lc8/BE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 1
    .param p0, "x0"    # Lc8/BE;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/BE;->mConnectCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object v0
.end method

.method static synthetic access$402(Lc8/BE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0
    .param p0, "x0"    # Lc8/BE;
    .param p1, "x1"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 36
    iput-object p1, p0, Lc8/BE;->mConnectCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p1
.end method

.method static synthetic access$500(Lc8/BE;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p0, "x0"    # Lc8/BE;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$600(Lc8/BE;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 1
    .param p0, "x0"    # Lc8/BE;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/BE;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-object v0
.end method

.method static synthetic access$700(Lc8/BE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 1
    .param p0, "x0"    # Lc8/BE;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/BE;->mGetServiceCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object v0
.end method

.method static synthetic access$702(Lc8/BE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0
    .param p0, "x0"    # Lc8/BE;
    .param p1, "x1"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 36
    iput-object p1, p0, Lc8/BE;->mGetServiceCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p1
.end method

.method static synthetic access$800(Lc8/BE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 1
    .param p0, "x0"    # Lc8/BE;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/BE;->mReadValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object v0
.end method

.method static synthetic access$802(Lc8/BE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0
    .param p0, "x0"    # Lc8/BE;
    .param p1, "x1"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 36
    iput-object p1, p0, Lc8/BE;->mReadValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p1
.end method

.method static synthetic access$900(Lc8/BE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 1
    .param p0, "x0"    # Lc8/BE;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/BE;->mWriteValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object v0
.end method

.method static synthetic access$902(Lc8/BE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0
    .param p0, "x0"    # Lc8/BE;
    .param p1, "x1"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 36
    iput-object p1, p0, Lc8/BE;->mWriteValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p1
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 415
    iget-object v2, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 416
    :cond_0
    const-string/jumbo v2, "WVBluetooth"

    const-string/jumbo v3, "BluetoothAdapter not initialized or unspecified address."

    invoke-static {v2, v3}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :goto_0
    return v1

    .line 420
    :cond_1
    iget-object v2, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 421
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 422
    const-string/jumbo v2, "WVBluetooth"

    const-string/jumbo v3, "Device not found.  Unable to connect."

    invoke-static {v2, v3}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_2
    iget-object v2, p0, Lc8/BE;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lc8/BE;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, v2, v1, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iput-object v1, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 429
    const-string/jumbo v1, "WVBluetooth"

    const-string/jumbo v2, "Trying to create a new connection."

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public connectDevice(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 6
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 267
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 268
    .local v3, "result":Lc8/kE;
    iget-object v4, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v4, :cond_0

    .line 269
    const-string/jumbo v4, "msg"

    const-string/jumbo v5, "DEVICE_NOT_SUPPORT"

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 292
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v4, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 272
    const-string/jumbo v4, "msg"

    const-string/jumbo v5, "BLUETOOTH_DISABLED"

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 276
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "datas":Lorg/json/JSONObject;
    const-string/jumbo v4, "deviceId"

    const-string/jumbo v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 280
    invoke-virtual {p0, v0}, Lc8/BE;->connect(Ljava/lang/String;)Z

    .line 281
    iput-object p2, p0, Lc8/BE;->mConnectCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "datas":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 286
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 287
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    .line 289
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    const-string/jumbo v4, "msg"

    const-string/jumbo v5, "FAILED_TO_CONNECT"

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method

.method public disconnect(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 4
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 392
    new-instance v1, Lc8/kE;

    invoke-direct {v1}, Lc8/kE;-><init>()V

    .line 393
    .local v1, "result":Lc8/kE;
    iget-object v2, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 394
    const-string/jumbo v2, "msg"

    const-string/jumbo v3, "DEVICE_NOT_SUPPORT"

    invoke-virtual {v1, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 412
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v2, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 397
    const-string/jumbo v2, "msg"

    const-string/jumbo v3, "BLUETOOTH_DISABLED"

    invoke-virtual {v1, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 401
    :cond_1
    :try_start_0
    iget-object v2, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 402
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 403
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 407
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    .line 409
    const-string/jumbo v2, "msg"

    const-string/jumbo v3, "FAILED_TO_CONNECT"

    invoke-virtual {v1, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 57
    const-string/jumbo v2, "requestAuthorization"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {p0, p2, p3}, Lc8/BE;->requestAuthorization(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 90
    :goto_0
    return v0

    .line 60
    :cond_0
    const-string/jumbo v2, "scan"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {p0, p2, p3}, Lc8/BE;->findDevices(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 63
    :cond_1
    const-string/jumbo v2, "stopScan"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    invoke-virtual {p0, p2, p3}, Lc8/BE;->stopScan(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    :cond_2
    move v0, v1

    .line 90
    goto :goto_0

    .line 65
    :cond_3
    const-string/jumbo v2, "connect"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 66
    invoke-virtual {p0, p2, p3}, Lc8/BE;->connectDevice(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 68
    :cond_4
    const-string/jumbo v2, "disconnect"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 69
    invoke-virtual {p0, p2, p3}, Lc8/BE;->disconnect(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 71
    :cond_5
    const-string/jumbo v2, "getServices"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 72
    invoke-virtual {p0, p2, p3}, Lc8/BE;->getServices(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 74
    :cond_6
    const-string/jumbo v2, "getCharacteristics"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 75
    invoke-virtual {p0, p2, p3}, Lc8/BE;->getCharacteristics(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 77
    :cond_7
    const-string/jumbo v2, "writeValue"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 78
    invoke-virtual {p0, p2, p3}, Lc8/BE;->writeValue(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 80
    :cond_8
    const-string/jumbo v2, "readValue"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 81
    invoke-virtual {p0, p2, p3}, Lc8/BE;->readValue(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 83
    :cond_9
    const-string/jumbo v2, "startNotifications"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 84
    invoke-virtual {p0, p2, v0, p3}, Lc8/BE;->setNotifications(Ljava/lang/String;ZLandroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto/16 :goto_0

    .line 86
    :cond_a
    const-string/jumbo v2, "stopNotifications"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    invoke-virtual {p0, p2, v1, p3}, Lc8/BE;->setNotifications(Ljava/lang/String;ZLandroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto/16 :goto_0
.end method

.method public findDevices(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 211
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 212
    .local v0, "result":Lc8/kE;
    iget-object v1, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 213
    const-string/jumbo v1, "msg"

    const-string/jumbo v2, "DEVICE_NOT_SUPPORT"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 244
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    const-string/jumbo v1, "msg"

    const-string/jumbo v2, "BLUETOOTH_DISABLED"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v1, p0, Lc8/BE;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    if-nez v1, :cond_2

    .line 220
    new-instance v1, Lc8/zE;

    invoke-direct {v1, p0}, Lc8/zE;-><init>(Lc8/BE;)V

    iput-object v1, p0, Lc8/BE;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 240
    :cond_2
    iget-object v1, p0, Lc8/BE;->mKnownDevices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 241
    iget-object v1, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lc8/BE;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 242
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto :goto_0
.end method

.method public getCharacteristics(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 12
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 177
    new-instance v6, Lc8/kE;

    invoke-direct {v6}, Lc8/kE;-><init>()V

    .line 178
    .local v6, "result":Lc8/kE;
    iget-object v9, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v9, :cond_0

    .line 179
    const-string/jumbo v9, "msg"

    const-string/jumbo v10, "DEVICE_NOT_SUPPORT"

    invoke-virtual {v6, v9, v10}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 205
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v9, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 184
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    .local v2, "datas":Lorg/json/JSONObject;
    const-string/jumbo v9, "deviceId"

    const-string/jumbo v10, ""

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "deviceId":Ljava/lang/String;
    const-string/jumbo v9, "serviceId"

    const-string/jumbo v10, ""

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 187
    .local v8, "serviceId":Ljava/lang/String;
    iget-object v9, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 188
    :cond_1
    const-string/jumbo v9, "msg"

    const-string/jumbo v10, "DEVICE_NOT_CONNECT"

    invoke-virtual {v6, v9, v10}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    .end local v2    # "datas":Lorg/json/JSONObject;
    .end local v3    # "deviceId":Ljava/lang/String;
    .end local v8    # "serviceId":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 200
    .local v4, "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 201
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 204
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0

    .line 192
    .restart local v2    # "datas":Lorg/json/JSONObject;
    .restart local v3    # "deviceId":Ljava/lang/String;
    .restart local v8    # "serviceId":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v9, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v7

    .line 193
    .local v7, "service":Landroid/bluetooth/BluetoothGattService;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 194
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 195
    .local v1, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v10, "characteristicId"

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 197
    .end local v1    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_4
    const-string/jumbo v9, "characteristics"

    invoke-virtual {v6, v9, v0}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 198
    invoke-virtual {p2, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getServices(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 6
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 144
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 145
    .local v3, "result":Lc8/kE;
    iget-object v4, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v4, :cond_1

    .line 146
    const-string/jumbo v4, "msg"

    const-string/jumbo v5, "DEVICE_NOT_SUPPORT"

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v4, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 151
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "datas":Lorg/json/JSONObject;
    const-string/jumbo v4, "deviceId"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "deviceId":Ljava/lang/String;
    iget-object v4, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 154
    :cond_2
    const-string/jumbo v4, "msg"

    const-string/jumbo v5, "DEVICE_NOT_CONNECT"

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v0    # "datas":Lorg/json/JSONObject;
    .end local v1    # "deviceId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 159
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "msg"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    invoke-virtual {p2, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 163
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_3
    iget-object v4, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v4, :cond_0

    .line 164
    iput-object p2, p0, Lc8/BE;->mGetServiceCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 165
    iget-object v4, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 166
    const-string/jumbo v4, "WVBluetooth"

    const-string/jumbo v5, "Attempting to start service discovery"

    invoke-static {v4, v5}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_4
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;

    .prologue
    .line 51
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 52
    invoke-super {p0, p1, p2}, Lc8/RD;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    .line 53
    return-void
.end method

.method public readValue(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 12
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 347
    new-instance v6, Lc8/kE;

    invoke-direct {v6}, Lc8/kE;-><init>()V

    .line 348
    .local v6, "result":Lc8/kE;
    iget-object v9, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v9, :cond_0

    .line 349
    const-string/jumbo v9, "msg"

    const-string/jumbo v10, "DEVICE_NOT_SUPPORT"

    invoke-virtual {v6, v9, v10}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 386
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v9, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 352
    const-string/jumbo v9, "msg"

    const-string/jumbo v10, "BLUETOOTH_DISABLED"

    invoke-virtual {v6, v9, v10}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 354
    :cond_1
    iget v9, p0, Lc8/BE;->mCurrentConnectionState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    .line 355
    const-string/jumbo v9, "msg"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BLUETOOTH_NOT_ACTIVE: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lc8/BE;->mCurrentConnectionState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 359
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 360
    .local v2, "datas":Lorg/json/JSONObject;
    const-string/jumbo v9, "deviceId"

    const-string/jumbo v10, ""

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, "deviceId":Ljava/lang/String;
    const-string/jumbo v9, "serviceId"

    const-string/jumbo v10, ""

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 362
    .local v8, "serviceId":Ljava/lang/String;
    const-string/jumbo v9, "characteristicId"

    const-string/jumbo v10, ""

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "characteristicId":Ljava/lang/String;
    const-string/jumbo v9, "value"

    const-string/jumbo v10, ""

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    iget-object v9, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 365
    :cond_3
    const-string/jumbo v9, "msg"

    const-string/jumbo v10, "DEVICE_NOT_CONNECT"

    invoke-virtual {v6, v9, v10}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 380
    .end local v1    # "characteristicId":Ljava/lang/String;
    .end local v2    # "datas":Lorg/json/JSONObject;
    .end local v3    # "deviceId":Ljava/lang/String;
    .end local v8    # "serviceId":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 381
    .local v4, "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 383
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    const-string/jumbo v9, "msg"

    const-string/jumbo v10, "FAILED_TO_READ"

    invoke-virtual {v6, v9, v10}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto/16 :goto_0

    .line 369
    .restart local v1    # "characteristicId":Ljava/lang/String;
    .restart local v2    # "datas":Lorg/json/JSONObject;
    .restart local v3    # "deviceId":Ljava/lang/String;
    .restart local v8    # "serviceId":Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-object v9, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v7

    .line 370
    .local v7, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 371
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v0, :cond_4

    .line 372
    iget-object v9, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v9, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v5

    .line 373
    .local v5, "readResult":Z
    if-eqz v5, :cond_6

    .line 374
    iput-object p2, p0, Lc8/BE;->mReadValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    goto :goto_1

    .line 376
    :cond_6
    const-string/jumbo v9, "msg"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "FAILED_TO_READ_CHARACTERISTIC: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public requestAuthorization(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 5
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Lc8/BE;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "android.permission.BLUETOOTH"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "android.permission.BLUETOOTH_ADMIN"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/jH;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Lc8/iH;

    move-result-object v1

    new-instance v2, Lc8/yE;

    invoke-direct {v2, p0, p2}, Lc8/yE;-><init>(Lc8/BE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-virtual {v1, v2}, Lc8/iH;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v1

    new-instance v2, Lc8/xE;

    invoke-direct {v2, p0, p2}, Lc8/xE;-><init>(Lc8/BE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-virtual {v1, v2}, Lc8/iH;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v1

    invoke-virtual {v1}, Lc8/iH;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNotifications(Ljava/lang/String;ZLandroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 16
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 435
    new-instance v8, Lc8/kE;

    invoke-direct {v8}, Lc8/kE;-><init>()V

    .line 436
    .local v8, "result":Lc8/kE;
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v13, :cond_1

    .line 437
    const-string/jumbo v13, "msg"

    const-string/jumbo v14, "DEVICE_NOT_SUPPORT"

    invoke-virtual {v8, v13, v14}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_2

    .line 440
    const-string/jumbo v13, "msg"

    const-string/jumbo v14, "BLUETOOTH_DISABLED"

    invoke-virtual {v8, v13, v14}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 442
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lc8/BE;->mCurrentConnectionState:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_3

    .line 443
    const-string/jumbo v13, "msg"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "BLUETOOTH_NOT_ACTIVE: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lc8/BE;->mCurrentConnectionState:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 447
    :cond_3
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 448
    .local v3, "datas":Lorg/json/JSONObject;
    const-string/jumbo v13, "deviceId"

    const-string/jumbo v14, ""

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 449
    .local v6, "deviceId":Ljava/lang/String;
    const-string/jumbo v13, "serviceId"

    const-string/jumbo v14, ""

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 450
    .local v11, "serviceId":Ljava/lang/String;
    const-string/jumbo v13, "characteristicId"

    const-string/jumbo v14, ""

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "characteristicId":Ljava/lang/String;
    const-string/jumbo v13, "value"

    const-string/jumbo v14, ""

    invoke-virtual {v3, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v13

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 453
    :cond_4
    const-string/jumbo v13, "msg"

    const-string/jumbo v14, "DEVICE_NOT_CONNECT"

    invoke-virtual {v8, v13, v14}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 479
    .end local v2    # "characteristicId":Ljava/lang/String;
    .end local v3    # "datas":Lorg/json/JSONObject;
    .end local v6    # "deviceId":Ljava/lang/String;
    .end local v11    # "serviceId":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 480
    .local v12, "t":Ljava/lang/Throwable;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 457
    .end local v12    # "t":Ljava/lang/Throwable;
    .restart local v2    # "characteristicId":Ljava/lang/String;
    .restart local v3    # "datas":Lorg/json/JSONObject;
    .restart local v6    # "deviceId":Ljava/lang/String;
    .restart local v11    # "serviceId":Ljava/lang/String;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v11}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v10

    .line 458
    .local v10, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 459
    .local v1, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v1, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    move/from16 v0, p2

    invoke-virtual {v13, v1, v0}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v9

    .line 461
    .local v9, "ret":Z
    if-eqz v9, :cond_8

    .line 462
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v5

    .line 463
    .local v5, "descriptorList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 464
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 465
    .local v4, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz p2, :cond_6

    .line 466
    sget-object v13, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v4, v13}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 470
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v13, v4}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_1

    .line 468
    :cond_6
    sget-object v13, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v4, v13}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    goto :goto_2

    .line 473
    .end local v4    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto/16 :goto_0

    .line 475
    .end local v5    # "descriptorList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    :cond_8
    const-string/jumbo v13, "msg"

    const-string/jumbo v14, "FAILED_TO_SET_NOTIFICATION"

    invoke-virtual {v8, v13, v14}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public stopScan(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 250
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 251
    .local v0, "result":Lc8/kE;
    iget-object v1, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 252
    const-string/jumbo v1, "msg"

    const-string/jumbo v2, "DEVICE_NOT_SUPPORT"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 261
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v1, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    const-string/jumbo v1, "msg"

    const-string/jumbo v2, "BLUETOOTH_DISABLED"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v1, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lc8/BE;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 259
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto :goto_0
.end method

.method public writeValue(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 13
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v11, 0x2

    .line 298
    new-instance v6, Lc8/kE;

    invoke-direct {v6}, Lc8/kE;-><init>()V

    .line 299
    .local v6, "result":Lc8/kE;
    iget-object v10, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v10, :cond_0

    .line 300
    const-string/jumbo v10, "msg"

    const-string/jumbo v11, "DEVICE_NOT_SUPPORT"

    invoke-virtual {v6, v10, v11}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 341
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v10, p0, Lc8/BE;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 303
    const-string/jumbo v10, "msg"

    const-string/jumbo v11, "BLUETOOTH_DISABLED"

    invoke-virtual {v6, v10, v11}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 305
    :cond_1
    iget v10, p0, Lc8/BE;->mCurrentConnectionState:I

    if-eq v10, v11, :cond_2

    .line 306
    const-string/jumbo v10, "msg"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "BLUETOOTH_NOT_ACTIVE: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lc8/BE;->mCurrentConnectionState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 310
    :cond_2
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 311
    .local v3, "datas":Lorg/json/JSONObject;
    const-string/jumbo v10, "deviceId"

    const-string/jumbo v11, ""

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, "deviceId":Ljava/lang/String;
    const-string/jumbo v10, "serviceId"

    const-string/jumbo v11, ""

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 313
    .local v8, "serviceId":Ljava/lang/String;
    const-string/jumbo v10, "characteristicId"

    const-string/jumbo v11, ""

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "characteristicId":Ljava/lang/String;
    const-string/jumbo v10, "value"

    const-string/jumbo v11, ""

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "base64Value":Ljava/lang/String;
    iget-object v10, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 316
    :cond_3
    const-string/jumbo v10, "msg"

    const-string/jumbo v11, "DEVICE_NOT_CONNECT"

    invoke-virtual {v6, v10, v11}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 334
    .end local v0    # "base64Value":Ljava/lang/String;
    .end local v2    # "characteristicId":Ljava/lang/String;
    .end local v3    # "datas":Lorg/json/JSONObject;
    .end local v4    # "deviceId":Ljava/lang/String;
    .end local v8    # "serviceId":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 335
    .local v5, "e":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 336
    const-string/jumbo v10, "msg"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_4
    const-string/jumbo v10, "msg"

    const-string/jumbo v11, "FAILED_TO_WRITE"

    invoke-virtual {v6, v10, v11}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto/16 :goto_0

    .line 320
    .restart local v0    # "base64Value":Ljava/lang/String;
    .restart local v2    # "characteristicId":Ljava/lang/String;
    .restart local v3    # "datas":Lorg/json/JSONObject;
    .restart local v4    # "deviceId":Ljava/lang/String;
    .restart local v8    # "serviceId":Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-object v10, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v7

    .line 321
    .local v7, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 322
    .local v1, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    const-string/jumbo v10, "WVBluetooth"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "get characteristic: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    if-eqz v1, :cond_4

    .line 324
    const/4 v10, 0x2

    invoke-static {v0, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 325
    iget-object v10, p0, Lc8/BE;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v10, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v9

    .line 326
    .local v9, "writeResult":Z
    if-eqz v9, :cond_6

    .line 327
    iput-object p2, p0, Lc8/BE;->mWriteValueCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    goto/16 :goto_0

    .line 329
    :cond_6
    const-string/jumbo v10, "msg"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "FAILED_TO_WRITE_CHARACTERISTIC: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
