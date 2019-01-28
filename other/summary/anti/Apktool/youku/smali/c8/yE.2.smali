.class public Lc8/yE;
.super Ljava/lang/Object;
.source "WVBluetooth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/BE;->requestAuthorization(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/BE;

.field final synthetic val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method constructor <init>(Lc8/BE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lc8/yE;->this$0:Lc8/BE;

    iput-object p2, p0, Lc8/yE;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 102
    new-instance v1, Lc8/kE;

    invoke-direct {v1}, Lc8/kE;-><init>()V

    .line 103
    .local v1, "result":Lc8/kE;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 105
    .local v2, "ret":Lorg/json/JSONObject;
    iget-object v3, p0, Lc8/yE;->this$0:Lc8/BE;

    invoke-static {v3}, Lc8/BE;->access$000(Lc8/BE;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-nez v3, :cond_0

    .line 106
    const-string/jumbo v3, "msg"

    const-string/jumbo v4, "DEVICE_NOT_SUPPORT"

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lc8/yE;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 124
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v3, p0, Lc8/yE;->this$0:Lc8/BE;

    invoke-static {v3}, Lc8/BE;->access$000(Lc8/BE;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 110
    iget-object v3, p0, Lc8/yE;->this$0:Lc8/BE;

    invoke-static {v3}, Lc8/BE;->access$000(Lc8/BE;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    .line 111
    .local v0, "enableSuccess":Z
    if-nez v0, :cond_1

    .line 112
    const-string/jumbo v3, "msg"

    const-string/jumbo v4, "BLUETOOTH_POWERED_OFF"

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lc8/yE;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 118
    .end local v0    # "enableSuccess":Z
    :cond_1
    :try_start_0
    const-string/jumbo v3, "state"

    const-string/jumbo v4, "poweredOn"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3, v2}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 120
    iget-object v3, p0, Lc8/yE;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v3

    iget-object v3, p0, Lc8/yE;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0
.end method
