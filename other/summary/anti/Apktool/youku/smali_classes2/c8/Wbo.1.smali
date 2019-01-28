.class public Lc8/Wbo;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bco;->scrollBy(FFD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field old_x:D

.field old_y:D

.field final synthetic this$0:Lc8/bco;

.field final synthetic val$durationMs:D

.field final synthetic val$dx:D

.field final synthetic val$dy:D

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lc8/bco;DJDD)V
    .locals 2
    .param p1, "this$0"    # Lc8/bco;

    .prologue
    const-wide/16 v0, 0x0

    .line 891
    iput-object p1, p0, Lc8/Wbo;->this$0:Lc8/bco;

    iput-wide p2, p0, Lc8/Wbo;->val$durationMs:D

    iput-wide p4, p0, Lc8/Wbo;->val$startTime:J

    iput-wide p6, p0, Lc8/Wbo;->val$dx:D

    iput-wide p8, p0, Lc8/Wbo;->val$dy:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput-wide v0, p0, Lc8/Wbo;->old_x:D

    .line 894
    iput-wide v0, p0, Lc8/Wbo;->old_y:D

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 898
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 899
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lc8/Wbo;->val$durationMs:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lc8/Wbo;->val$startTime:J

    sub-long v10, v14, v10

    long-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 900
    .local v6, "currentMs":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wbo;->this$0:Lc8/bco;

    iget-object v5, v5, Lc8/bco;->mEasing:Lc8/gco;

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lc8/Wbo;->val$dx:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lc8/Wbo;->val$durationMs:D

    invoke-interface/range {v5 .. v13}, Lc8/gco;->easeOut(DDDD)D

    move-result-wide v16

    .line 901
    .local v16, "x":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wbo;->this$0:Lc8/bco;

    iget-object v5, v5, Lc8/bco;->mEasing:Lc8/gco;

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lc8/Wbo;->val$dy:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lc8/Wbo;->val$durationMs:D

    invoke-interface/range {v5 .. v13}, Lc8/gco;->easeOut(DDDD)D

    move-result-wide v18

    .line 902
    .local v18, "y":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wbo;->this$0:Lc8/bco;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lc8/Wbo;->old_x:D

    sub-double v8, v16, v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lc8/Wbo;->old_y:D

    sub-double v10, v18, v10

    invoke-virtual {v5, v8, v9, v10, v11}, Lc8/bco;->panBy(DD)V

    .line 903
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/Wbo;->old_x:D

    .line 904
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/Wbo;->old_y:D

    .line 905
    move-object/from16 v0, p0

    iget-wide v8, v0, Lc8/Wbo;->val$durationMs:D

    cmpg-double v5, v6, v8

    if-gez v5, :cond_1

    .line 906
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wbo;->this$0:Lc8/bco;

    iget-object v5, v5, Lc8/bco;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wbo;->this$0:Lc8/bco;

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Wbo;->this$0:Lc8/bco;

    iget-object v8, v8, Lc8/bco;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v5, v8, v9, v10}, Lc8/bco;->getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object v4

    .line 909
    .local v4, "centerRect":Landroid/graphics/RectF;
    iget v5, v4, Landroid/graphics/RectF;->left:F

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-nez v5, :cond_2

    iget v5, v4, Landroid/graphics/RectF;->top:F

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_0

    .line 910
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Wbo;->this$0:Lc8/bco;

    iget v8, v4, Landroid/graphics/RectF;->left:F

    iget v9, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v8, v9}, Lc8/bco;->scrollBy(FF)V

    goto :goto_0
.end method
