.class public Lcom/youku/phone/mkt/AccsReceiverService;
.super Lcom/taobao/accs/base/TaoBaseService;
.source "AccsReceiverService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/taobao/accs/base/TaoBaseService;-><init>()V

    return-void
.end method


# virtual methods
.method public onAntiBrush(ZLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "ret"    # Z
    .param p2, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 55
    return-void
.end method

.method public onBind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 28
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
    .line 17
    if-nez p1, :cond_0

    .line 24
    :goto_0
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    .local v0, "tag":Ljava/lang/String;
    if-eqz p5, :cond_1

    iget-object v1, p5, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->extHeader:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 20
    iget-object v1, p5, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->extHeader:Ljava/util/Map;

    sget-object v2, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_TAG:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 23
    .restart local v0    # "tag":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lc8/dzk;->getInstance()Lc8/dzk;

    move-result-object v1

    invoke-virtual {v1}, Lc8/dzk;->getConnection()Lc8/azk;

    move-result-object v1

    new-instance v2, Lc8/OIf;

    const/4 v3, 0x1

    invoke-direct {v2, p3, v3, v0, p4}, Lc8/OIf;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lc8/azk;->onReceive(Lc8/OIf;)V

    goto :goto_0
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "response"    # [B
    .param p5, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 43
    return-void
.end method

.method public onSendData(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 2
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 37
    invoke-static {}, Lc8/dzk;->getInstance()Lc8/dzk;

    move-result-object v0

    invoke-virtual {v0}, Lc8/dzk;->getConnection()Lc8/azk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, p3, v1}, Lc8/azk;->onSendData(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 38
    return-void
.end method

.method public onUnbind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 33
    return-void
.end method
