.class public Lc8/AC;
.super Lcom/taobao/accs/base/TaoBaseService;
.source "WVACCSService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallbackService"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/taobao/accs/base/TaoBaseService;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/AC;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 2
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 53
    const-string/jumbo v0, "CallbackService"

    const-string/jumbo v1, "onBind"

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onConnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V
    .locals 2
    .param p1, "conninfo"    # Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    .prologue
    .line 109
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    const/16 v1, 0x138a

    invoke-virtual {v0, v1}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 110
    const-string/jumbo v0, "CallbackService"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 15
    invoke-super {p0}, Lcom/taobao/accs/base/TaoBaseService;->onCreate()V

    .line 16
    iput-object p0, p0, Lc8/AC;->mContext:Landroid/content/Context;

    .line 17
    const-string/jumbo v0, "CallbackService"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 4
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "dataId"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 36
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string/jumbo v0, "CallbackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serviceId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dataId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    const/16 v1, 0x1389

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Lc8/qH;->onEvent(I[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 40
    return-void
.end method

.method public onDisconnected(Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;)V
    .locals 2
    .param p1, "conninfo"    # Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    .prologue
    .line 115
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    const/16 v1, 0x138b

    invoke-virtual {v0, v1}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 116
    const-string/jumbo v0, "CallbackService"

    const-string/jumbo v1, "onDisconnected"

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 2
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "response"    # [B
    .param p5, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 104
    const-string/jumbo v0, "CallbackService"

    const-string/jumbo v1, "onResponse"

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public onSendData(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 2
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 85
    const-string/jumbo v0, "CallbackService"

    const-string/jumbo v1, "onSendData"

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onUnbind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 2
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 67
    const-string/jumbo v0, "CallbackService"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
