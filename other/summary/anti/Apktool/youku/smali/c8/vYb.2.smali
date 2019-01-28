.class public final Lc8/vYb;
.super Ljava/lang/Object;
.source "AutoCloseMgr.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final KEY_CONFIG_UUID:Ljava/lang/String; = "config_uuid"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mService:Lc8/uYb;


# direct methods
.method public constructor <init>(Lc8/uYb;)V
    .locals 2
    .param p1, "service"    # Lc8/uYb;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lc8/vYb;->mService:Lc8/uYb;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/vYb;->mHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 52
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "config_uuid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "uuid":Ljava/lang/String;
    const-string/jumbo v4, "AutoCloseMgr.cmtTimeMarkStop config uuid:{%s}."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v4, p0, Lc8/vYb;->mService:Lc8/uYb;

    invoke-virtual {v4, v1}, Lc8/uYb;->removeRequestByConfigUUID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "uuid":Ljava/lang/String;
    :goto_0
    return v2

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "DispatchManager.handleMessage.error."

    invoke-static {v2, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 57
    goto :goto_0
.end method

.method public installCloseTimer(Lc8/rYb;)V
    .locals 13
    .param p1, "configItem"    # Lc8/rYb;

    .prologue
    const-wide/16 v10, 0x0

    .line 32
    :try_start_0
    invoke-virtual {p1}, Lc8/rYb;->getEndTimeStamp()J

    move-result-wide v4

    .line 33
    .local v4, "endTimeStamp":J
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/poplayer/PopLayer;->getCurrentTimeStamp()J

    move-result-wide v8

    .line 34
    .local v8, "systemTimeStamp":J
    sub-long v2, v4, v8

    .line 35
    .local v2, "delayMillis":J
    cmp-long v7, v2, v10

    if-ltz v7, :cond_0

    .line 36
    :goto_0
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 37
    .local v6, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "config_uuid"

    iget-object v10, p1, Lc8/rYb;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v6, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 42
    const-string/jumbo v7, "AutoCloseMgr.installCloseTimer:config:{%s},delay:{%s}."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Lc8/rYb;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v7, p0, Lc8/vYb;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "delayMillis":J
    .end local v4    # "endTimeStamp":J
    .end local v6    # "message":Landroid/os/Message;
    .end local v8    # "systemTimeStamp":J
    :goto_1
    return-void

    .restart local v2    # "delayMillis":J
    .restart local v4    # "endTimeStamp":J
    .restart local v8    # "systemTimeStamp":J
    :cond_0
    move-wide v2, v10

    .line 35
    goto :goto_0

    .line 44
    .end local v2    # "delayMillis":J
    .end local v4    # "endTimeStamp":J
    .end local v8    # "systemTimeStamp":J
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "AutoCloseMgr.installCloseTimer.error."

    invoke-static {v7, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
