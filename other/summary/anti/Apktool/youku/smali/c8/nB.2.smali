.class public final Lc8/nB;
.super Ljava/lang/Object;
.source "WindVaneSDKForTB.java"

# interfaces
.implements Lc8/jsf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oB;->init(Landroid/content/Context;Ljava/lang/String;ILc8/BB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLineMonitorNotify(ILcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "onLineStat"    # Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    .prologue
    .line 108
    iget-boolean v1, p2, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isInBackGround:Z

    invoke-static {v1}, Lc8/oB;->access$002(Z)Z

    .line 109
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    move-result-object v1

    invoke-static {}, Lc8/oB;->access$000()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->setAppBackground(Z)V

    .line 110
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 111
    .local v0, "isMonitoInit":Z
    :goto_0
    const/16 v1, 0x33

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 113
    .local v2, "time":J
    const-string/jumbo v1, "WindVaneSDKForTB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "app active at time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v1

    sget-object v4, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeAppActive:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {v1, v4}, Lc8/KB;->updateConfig(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    .line 115
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Lc8/aG;->uploadStartAppTime(J)V

    .line 116
    .end local v2    # "time":J
    :cond_0
    const/16 v1, 0x32

    if-ne p1, v1, :cond_3

    if-eqz v0, :cond_3

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 118
    .restart local v2    # "time":J
    const-string/jumbo v1, "WindVaneSDKForTB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "app background at time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Lc8/aG;->uploadBackgroundTime(J)V

    .line 123
    .end local v2    # "time":J
    :cond_1
    :goto_1
    return-void

    .line 110
    .end local v0    # "isMonitoInit":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 120
    .restart local v0    # "isMonitoInit":Z
    :cond_3
    const/16 v1, 0x46

    if-ne p1, v1, :cond_1

    .line 121
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v1

    const/16 v4, 0xbc6

    invoke-virtual {v1, v4}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    goto :goto_1
.end method
