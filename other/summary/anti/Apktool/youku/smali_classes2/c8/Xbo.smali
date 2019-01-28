.class public Lc8/Xbo;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bco;->zoomTo(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bco;

.field final synthetic val$deltaScale:F

.field final synthetic val$destX:F

.field final synthetic val$destY:F

.field final synthetic val$durationMs:F

.field final synthetic val$oldScale:F

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lc8/bco;FJFFFF)V
    .locals 1
    .param p1, "this$0"    # Lc8/bco;

    .prologue
    .line 930
    iput-object p1, p0, Lc8/Xbo;->this$0:Lc8/bco;

    iput p2, p0, Lc8/Xbo;->val$durationMs:F

    iput-wide p3, p0, Lc8/Xbo;->val$startTime:J

    iput p5, p0, Lc8/Xbo;->val$deltaScale:F

    iput p6, p0, Lc8/Xbo;->val$oldScale:F

    iput p7, p0, Lc8/Xbo;->val$destX:F

    iput p8, p0, Lc8/Xbo;->val$destY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    .line 934
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 935
    .local v12, "now":J
    iget v1, p0, Lc8/Xbo;->val$durationMs:F

    iget-wide v2, p0, Lc8/Xbo;->val$startTime:J

    sub-long v2, v12, v2

    long-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 936
    .local v0, "currentMs":F
    iget-object v1, p0, Lc8/Xbo;->this$0:Lc8/bco;

    iget-object v1, v1, Lc8/bco;->mEasing:Lc8/gco;

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    iget v6, p0, Lc8/Xbo;->val$deltaScale:F

    float-to-double v6, v6

    iget v8, p0, Lc8/Xbo;->val$durationMs:F

    float-to-double v8, v8

    invoke-interface/range {v1 .. v9}, Lc8/gco;->easeInOut(DDDD)D

    move-result-wide v2

    double-to-float v10, v2

    .line 938
    .local v10, "newScale":F
    iget-object v1, p0, Lc8/Xbo;->this$0:Lc8/bco;

    iget v2, p0, Lc8/Xbo;->val$oldScale:F

    add-float/2addr v2, v10

    iget v3, p0, Lc8/Xbo;->val$destX:F

    iget v4, p0, Lc8/Xbo;->val$destY:F

    invoke-virtual {v1, v2, v3, v4}, Lc8/bco;->zoomTo(FFF)V

    .line 939
    iget v1, p0, Lc8/Xbo;->val$durationMs:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 940
    iget-object v1, p0, Lc8/Xbo;->this$0:Lc8/bco;

    iget-object v1, v1, Lc8/bco;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 945
    :goto_0
    return-void

    .line 942
    :cond_0
    iget-object v1, p0, Lc8/Xbo;->this$0:Lc8/bco;

    iget-object v2, p0, Lc8/Xbo;->this$0:Lc8/bco;

    invoke-virtual {v2}, Lc8/bco;->getScale()F

    move-result v2

    invoke-virtual {v1, v2}, Lc8/bco;->onZoomAnimationCompleted(F)V

    .line 943
    iget-object v1, p0, Lc8/Xbo;->this$0:Lc8/bco;

    invoke-virtual {v1, v11, v11}, Lc8/bco;->center(ZZ)V

    goto :goto_0
.end method
