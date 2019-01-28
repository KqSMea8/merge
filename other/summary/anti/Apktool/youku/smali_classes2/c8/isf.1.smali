.class public Lc8/isf;
.super Ljava/lang/Object;
.source "OnLineMonitor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/msf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLineMonitorGlobalLayoutListener"
.end annotation


# instance fields
.field mIndex:I

.field final synthetic this$0:Lc8/msf;


# direct methods
.method public constructor <init>(Lc8/msf;I)V
    .locals 0
    .param p2, "index"    # I

    .prologue
    .line 6418
    iput-object p1, p0, Lc8/isf;->this$0:Lc8/msf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6419
    iput p2, p0, Lc8/isf;->mIndex:I

    .line 6420
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 6424
    iget-object v0, p0, Lc8/isf;->this$0:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    if-eqz v0, :cond_0

    iget v0, p0, Lc8/isf;->mIndex:I

    iget-object v1, p0, Lc8/isf;->this$0:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget v1, v1, Lc8/Grf;->mCreateIndex:I

    if-eq v0, v1, :cond_0

    .line 6432
    :goto_0
    return-void

    .line 6427
    :cond_0
    iget-object v0, p0, Lc8/isf;->this$0:Lc8/msf;

    iget-short v1, v0, Lc8/msf;->mLayoutTimes:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, v0, Lc8/msf;->mLayoutTimes:S

    .line 6428
    iget-object v0, p0, Lc8/isf;->this$0:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-eqz v0, :cond_1

    .line 6429
    iget-object v0, p0, Lc8/isf;->this$0:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalLayoutCount:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalLayoutCount:S

    .line 6431
    :cond_1
    iget-object v0, p0, Lc8/isf;->this$0:Lc8/msf;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    iput-wide v2, v0, Lc8/msf;->mCheckAnrTime:J

    goto :goto_0
.end method
