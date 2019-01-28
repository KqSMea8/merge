.class public Lc8/Orf;
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
    name = "MyFrameCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Prf;


# direct methods
.method public constructor <init>(Lc8/Prf;)V
    .locals 0

    .prologue
    .line 1269
    iput-object p1, p0, Lc8/Orf;->this$0:Lc8/Prf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 7
    .param p1, "frameTimeNanos"    # J

    .prologue
    const/4 v6, 0x0

    .line 1273
    iget-object v2, p0, Lc8/Orf;->this$0:Lc8/Prf;

    iget-boolean v2, v2, Lc8/Prf;->mIsLayouted:Z

    if-eqz v2, :cond_1

    .line 1274
    iget-object v2, p0, Lc8/Orf;->this$0:Lc8/Prf;

    iput-boolean v6, v2, Lc8/Prf;->mIsLayouted:Z

    .line 1276
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lc8/Orf;->this$0:Lc8/Prf;

    iget-wide v4, v4, Lc8/Prf;->mLastFrameTimeNanos:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long v0, v2, v4

    .line 1277
    .local v0, "layoutUseTime":J
    iget-object v2, p0, Lc8/Orf;->this$0:Lc8/Prf;

    iget-wide v2, v2, Lc8/Prf;->mMaxLayoutUseTime:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 1278
    iget-object v2, p0, Lc8/Orf;->this$0:Lc8/Prf;

    iput-wide v0, v2, Lc8/Prf;->mMaxLayoutUseTime:J

    .line 1283
    :cond_0
    iget-object v2, p0, Lc8/Orf;->this$0:Lc8/Prf;

    iget-wide v4, v2, Lc8/Prf;->mTotalLayoutUseTime:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Lc8/Prf;->mTotalLayoutUseTime:J

    .line 1284
    sget v2, Lc8/msf;->sApiLevel:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 1285
    iget-object v2, p0, Lc8/Orf;->this$0:Lc8/Prf;

    invoke-virtual {v2, v6}, Lc8/Prf;->doOnEndOfLayout(Z)V

    .line 1288
    .end local v0    # "layoutUseTime":J
    :cond_1
    return-void
.end method
