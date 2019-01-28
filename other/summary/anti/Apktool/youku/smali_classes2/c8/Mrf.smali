.class public Lc8/Mrf;
.super Ljava/lang/Object;
.source "LoadTimeCalculate.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Prf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetFrameTimeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Prf;


# direct methods
.method public constructor <init>(Lc8/Prf;)V
    .locals 0

    .prologue
    .line 1293
    iput-object p1, p0, Lc8/Mrf;->this$0:Lc8/Prf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 8
    .param p1, "frameTimeNanos"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 1297
    iget-object v3, p0, Lc8/Mrf;->this$0:Lc8/Prf;

    iget-object v3, v3, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc8/Mrf;->this$0:Lc8/Prf;

    iget-object v3, v3, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    if-eqz v3, :cond_2

    .line 1298
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1299
    .local v0, "frameTimeNanosCur":J
    iget-object v3, p0, Lc8/Mrf;->this$0:Lc8/Prf;

    iget v4, v3, Lc8/Prf;->mTotalSmCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lc8/Prf;->mTotalSmCount:I

    .line 1300
    iget-object v3, p0, Lc8/Mrf;->this$0:Lc8/Prf;

    iget-wide v4, v3, Lc8/Prf;->mFrameStartTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1301
    iget-object v3, p0, Lc8/Mrf;->this$0:Lc8/Prf;

    iput-wide v0, v3, Lc8/Prf;->mFrameStartTime:J

    .line 1303
    :cond_0
    iget-object v3, p0, Lc8/Mrf;->this$0:Lc8/Prf;

    iget-wide v4, v3, Lc8/Prf;->mFrameEndTime:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 1304
    iget-object v3, p0, Lc8/Mrf;->this$0:Lc8/Prf;

    iget-wide v4, v3, Lc8/Prf;->mFrameEndTime:J

    sub-long v4, v0, v4

    long-to-float v3, v4

    const v4, 0x49742400    # 1000000.0f

    div-float v2, v3, v4

    .line 1319
    .local v2, "interval":F
    iget-object v3, p0, Lc8/Mrf;->this$0:Lc8/Prf;

    iget-object v3, v3, Lc8/Prf;->mFrameTimeByteArray:[S

    if-eqz v3, :cond_1

    iget-object v3, p0, Lc8/Mrf;->this$0:Lc8/Prf;

    iget-short v3, v3, Lc8/Prf;->mFrameTimeIndex:S

    iget-object v4, p0, Lc8/Mrf;->this$0:Lc8/Prf;

    iget-object v4, v4, Lc8/Prf;->mFrameTimeByteArray:[S

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 1320
    iget-object v3, p0, Lc8/Mrf;->this$0:Lc8/Prf;

    iget-object v3, v3, Lc8/Prf;->mFrameTimeByteArray:[S

    iget-object v4, p0, Lc8/Mrf;->this$0:Lc8/Prf;

    iget-short v4, v4, Lc8/Prf;->mFrameTimeIndex:S

    float-to-int v5, v2

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 1321
    iget-object v3, p0, Lc8/Mrf;->this$0:Lc8/Prf;

    iget-short v4, v3, Lc8/Prf;->mFrameTimeIndex:S

    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    iput-short v4, v3, Lc8/Prf;->mFrameTimeIndex:S

    .line 1325
    .end local v2    # "interval":F
    :cond_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    iget-object v4, p0, Lc8/Mrf;->this$0:Lc8/Prf;

    iget-object v4, v4, Lc8/Prf;->mTimeFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v3, v4}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1326
    iget-object v3, p0, Lc8/Mrf;->this$0:Lc8/Prf;

    iput-wide v0, v3, Lc8/Prf;->mFrameEndTime:J

    .line 1328
    .end local v0    # "frameTimeNanosCur":J
    :cond_2
    return-void
.end method
