.class public Lc8/Xrf;
.super Ljava/lang/Object;
.source "OnLineMonitor.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/msf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/msf;


# direct methods
.method public constructor <init>(Lc8/msf;)V
    .locals 0

    .prologue
    .line 7143
    iput-object p1, p0, Lc8/Xrf;->this$0:Lc8/msf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 7148
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 7153
    iget-object v0, p0, Lc8/Xrf;->this$0:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->isLowMemroy:Z

    .line 7154
    iget-object v0, p0, Lc8/Xrf;->this$0:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7155
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 7
    .param p1, "lev"    # I

    .prologue
    const/16 v6, 0x8

    .line 7159
    iget-object v0, p0, Lc8/Xrf;->this$0:Lc8/msf;

    iput p1, v0, Lc8/msf;->mTrimMemoryLevel:I

    .line 7160
    iget-object v0, p0, Lc8/Xrf;->this$0:Lc8/msf;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    iput-wide v2, v0, Lc8/msf;->mCheckAnrTime:J

    .line 7161
    sget-boolean v0, Lc8/msf;->sIsDetailDebug:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_1

    .line 7162
    :cond_0
    const-string/jumbo v0, "OnLineMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrimMemory. Level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7164
    :cond_1
    iget-object v0, p0, Lc8/Xrf;->this$0:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    iput p1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->trimMemoryLevel:I

    .line 7165
    const/16 v0, 0x14

    if-eq p1, v0, :cond_3

    .line 7169
    const/16 v0, 0x28

    if-eq p1, v0, :cond_2

    const/16 v0, 0x50

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_4

    .line 7172
    :cond_2
    iget-object v0, p0, Lc8/Xrf;->this$0:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7173
    iget-object v0, p0, Lc8/Xrf;->this$0:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7180
    :cond_3
    :goto_0
    iget-object v0, p0, Lc8/Xrf;->this$0:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7182
    return-void

    .line 7177
    :cond_4
    iget-object v0, p0, Lc8/Xrf;->this$0:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7178
    iget-object v0, p0, Lc8/Xrf;->this$0:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
