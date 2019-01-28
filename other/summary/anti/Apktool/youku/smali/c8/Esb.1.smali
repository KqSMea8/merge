.class public Lc8/Esb;
.super Ljava/lang/Object;
.source "ExpressionScrollHandler.java"

# interfaces
.implements Lc8/weg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Fsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerScrollViewListener"
.end annotation


# instance fields
.field private mContentOffsetX:I

.field private mContentOffsetY:I

.field private mLastDx:I

.field private mLastDy:I

.field private mTx:I

.field private mTy:I

.field final synthetic this$0:Lc8/Fsb;


# direct methods
.method private constructor <init>(Lc8/Fsb;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 229
    iput-object p1, p0, Lc8/Esb;->this$0:Lc8/Fsb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput v0, p0, Lc8/Esb;->mContentOffsetX:I

    .line 231
    iput v0, p0, Lc8/Esb;->mContentOffsetY:I

    .line 233
    iput v0, p0, Lc8/Esb;->mTx:I

    iput v0, p0, Lc8/Esb;->mTy:I

    .line 234
    iput v0, p0, Lc8/Esb;->mLastDx:I

    iput v0, p0, Lc8/Esb;->mLastDy:I

    return-void
.end method

.method synthetic constructor <init>(Lc8/Fsb;Lc8/zsb;)V
    .locals 0
    .param p1, "x0"    # Lc8/Fsb;
    .param p2, "x1"    # Lc8/zsb;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lc8/Esb;-><init>(Lc8/Fsb;)V

    return-void
.end method

.method static synthetic access$400(Lc8/Esb;)I
    .locals 1
    .param p0, "x0"    # Lc8/Esb;

    .prologue
    .line 229
    iget v0, p0, Lc8/Esb;->mContentOffsetX:I

    return v0
.end method

.method static synthetic access$500(Lc8/Esb;)I
    .locals 1
    .param p0, "x0"    # Lc8/Esb;

    .prologue
    .line 229
    iget v0, p0, Lc8/Esb;->mContentOffsetY:I

    return v0
.end method


# virtual methods
.method public onScroll(Lc8/xeg;II)V
    .locals 18
    .param p1, "wxScrollView"    # Lc8/xeg;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget v2, v0, Lc8/Esb;->mContentOffsetX:I

    sub-int v5, p2, v2

    .line 241
    .local v5, "dx":I
    move-object/from16 v0, p0

    iget v2, v0, Lc8/Esb;->mContentOffsetY:I

    sub-int v6, p3, v2

    .line 243
    .local v6, "dy":I
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Esb;->mContentOffsetX:I

    .line 244
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Esb;->mContentOffsetY:I

    .line 246
    if-nez v5, :cond_0

    if-nez v6, :cond_0

    .line 278
    :goto_0
    return-void

    .line 250
    :cond_0
    const/16 v17, 0x0

    .line 251
    .local v17, "isTurning":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Esb;->this$0:Lc8/Fsb;

    move-object/from16 v0, p0

    iget v3, v0, Lc8/Esb;->mLastDy:I

    invoke-static {v2, v6, v3}, Lc8/Fsb;->access$100(Lc8/Fsb;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 252
    move-object/from16 v0, p0

    iget v2, v0, Lc8/Esb;->mContentOffsetY:I

    move-object/from16 v0, p0

    iput v2, v0, Lc8/Esb;->mTy:I

    .line 253
    const/16 v17, 0x1

    .line 257
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lc8/Esb;->mContentOffsetX:I

    move-object/from16 v0, p0

    iget v3, v0, Lc8/Esb;->mTx:I

    sub-int v7, v2, v3

    .line 258
    .local v7, "tdx":I
    move-object/from16 v0, p0

    iget v2, v0, Lc8/Esb;->mContentOffsetY:I

    move-object/from16 v0, p0

    iget v3, v0, Lc8/Esb;->mTy:I

    sub-int v8, v2, v3

    .line 260
    .local v8, "tdy":I
    move-object/from16 v0, p0

    iput v5, v0, Lc8/Esb;->mLastDx:I

    .line 261
    move-object/from16 v0, p0

    iput v6, v0, Lc8/Esb;->mLastDy:I

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Esb;->this$0:Lc8/Fsb;

    move-object/from16 v0, p0

    iget v3, v0, Lc8/Esb;->mContentOffsetX:I

    move-object/from16 v0, p0

    iget v4, v0, Lc8/Esb;->mContentOffsetY:I

    invoke-static/range {v2 .. v8}, Lc8/Fsb;->access$200(Lc8/Fsb;IIIIII)V

    .line 265
    if-eqz v17, :cond_2

    .line 267
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/Esb;->this$0:Lc8/Fsb;

    const-string/jumbo v10, "turn"

    move-object/from16 v0, p0

    iget v2, v0, Lc8/Esb;->mContentOffsetX:I

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v2, v0, Lc8/Esb;->mContentOffsetY:I

    int-to-float v12, v2

    int-to-float v13, v5

    int-to-float v14, v6

    int-to-float v15, v7

    int-to-float v0, v8

    move/from16 v16, v0

    invoke-static/range {v9 .. v16}, Lc8/Fsb;->access$300(Lc8/Fsb;Ljava/lang/String;FFFFFF)V

    goto :goto_0

    .line 272
    :cond_2
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v2

    new-instance v3, Lc8/Dsb;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lc8/Dsb;-><init>(Lc8/Esb;IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Esb;->this$0:Lc8/Fsb;

    iget-object v4, v4, Lc8/Fsb;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lc8/ZWf;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onScrollChanged(Lc8/xeg;IIII)V
    .locals 0
    .param p1, "wxScrollView"    # Lc8/xeg;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I
    .param p5, "i3"    # I

    .prologue
    .line 283
    return-void
.end method

.method public onScrollStopped(Lc8/xeg;II)V
    .locals 0
    .param p1, "wxScrollView"    # Lc8/xeg;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 293
    return-void
.end method

.method public onScrollToBottom(Lc8/xeg;II)V
    .locals 0
    .param p1, "wxScrollView"    # Lc8/xeg;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 288
    return-void
.end method
