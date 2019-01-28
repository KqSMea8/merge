.class public Lc8/asf;
.super Landroid/os/HandlerThread;
.source "OnLineMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/msf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandlerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/msf;


# direct methods
.method public constructor <init>(Lc8/msf;Ljava/lang/String;I)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .prologue
    .line 6525
    iput-object p1, p0, Lc8/asf;->this$0:Lc8/msf;

    .line 6526
    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 6527
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 6531
    iget-object v0, p0, Lc8/asf;->this$0:Lc8/msf;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    iput v1, v0, Lc8/msf;->mHandlerThreadTid:I

    .line 6532
    iget-object v0, p0, Lc8/asf;->this$0:Lc8/msf;

    new-instance v1, Lc8/Zrf;

    invoke-direct {v1, p0}, Lc8/Zrf;-><init>(Lc8/asf;)V

    iput-object v1, v0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    .line 7107
    iget-object v0, p0, Lc8/asf;->this$0:Lc8/msf;

    invoke-virtual {v0}, Lc8/msf;->onHandlerThreadPrepared()V

    .line 7108
    iget-object v0, p0, Lc8/asf;->this$0:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7109
    iget-object v0, p0, Lc8/asf;->this$0:Lc8/msf;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    iput-wide v2, v0, Lc8/msf;->mCheckAnrTime:J

    .line 7110
    iget-object v0, p0, Lc8/asf;->this$0:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7112
    :cond_0
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_1

    .line 7113
    iget-object v0, p0, Lc8/asf;->this$0:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    sget-short v2, Lc8/Asf;->sTraceThreadInterval:S

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7116
    :cond_1
    iget-object v0, p0, Lc8/asf;->this$0:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7117
    iget-object v0, p0, Lc8/asf;->this$0:Lc8/msf;

    iget-short v0, v0, Lc8/msf;->mDevicesScore:S

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_2

    .line 7119
    sget v0, Lc8/msf;->sThreadPriorty:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 7121
    :cond_2
    return-void
.end method
