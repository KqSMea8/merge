.class public Lc8/Csb;
.super Lc8/Cv;
.source "ExpressionScrollHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Fsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerScrollListener"
.end annotation


# instance fields
.field private isVertical:Z

.field private mContentOffsetX:I

.field private mContentOffsetY:I

.field private mLastDx:I

.field private mLastDy:I

.field private mTx:I

.field private mTy:I

.field final synthetic this$0:Lc8/Fsb;


# direct methods
.method constructor <init>(Lc8/Fsb;Z)V
    .locals 3
    .param p2, "isVertical"    # Z

    .prologue
    const/4 v1, 0x0

    .line 305
    iput-object p1, p0, Lc8/Csb;->this$0:Lc8/Fsb;

    invoke-direct {p0}, Lc8/Cv;-><init>()V

    .line 297
    iput v1, p0, Lc8/Csb;->mContentOffsetX:I

    .line 298
    iput v1, p0, Lc8/Csb;->mContentOffsetY:I

    .line 300
    iput v1, p0, Lc8/Csb;->mTx:I

    iput v1, p0, Lc8/Csb;->mTy:I

    .line 301
    iput v1, p0, Lc8/Csb;->mLastDx:I

    iput v1, p0, Lc8/Csb;->mLastDy:I

    .line 306
    iput-boolean p2, p0, Lc8/Csb;->isVertical:Z

    .line 307
    invoke-static {p1}, Lc8/Fsb;->access$600(Lc8/Fsb;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lc8/Fsb;->access$700()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 308
    invoke-static {}, Lc8/Fsb;->access$700()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Lc8/Fsb;->access$600(Lc8/Fsb;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Asb;

    .line 309
    .local v0, "holder":Lc8/Asb;
    if-eqz v0, :cond_0

    .line 310
    iget v1, v0, Lc8/Asb;->x:I

    iput v1, p0, Lc8/Csb;->mContentOffsetX:I

    .line 311
    iget v1, v0, Lc8/Asb;->y:I

    iput v1, p0, Lc8/Csb;->mContentOffsetY:I

    .line 314
    .end local v0    # "holder":Lc8/Asb;
    :cond_0
    return-void
.end method

.method static synthetic access$800(Lc8/Csb;)I
    .locals 1
    .param p0, "x0"    # Lc8/Csb;

    .prologue
    .line 296
    iget v0, p0, Lc8/Csb;->mContentOffsetX:I

    return v0
.end method

.method static synthetic access$900(Lc8/Csb;)I
    .locals 1
    .param p0, "x0"    # Lc8/Csb;

    .prologue
    .line 296
    iget v0, p0, Lc8/Csb;->mContentOffsetY:I

    return v0
.end method


# virtual methods
.method public onScrolled(Lc8/Rv;II)V
    .locals 11
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 323
    iget v0, p0, Lc8/Csb;->mContentOffsetX:I

    add-int/2addr v0, p2

    iput v0, p0, Lc8/Csb;->mContentOffsetX:I

    .line 324
    iget v0, p0, Lc8/Csb;->mContentOffsetY:I

    add-int/2addr v0, p3

    iput v0, p0, Lc8/Csb;->mContentOffsetY:I

    .line 326
    const/4 v8, 0x0

    .line 327
    .local v8, "isTurning":Z
    iget-object v0, p0, Lc8/Csb;->this$0:Lc8/Fsb;

    iget v1, p0, Lc8/Csb;->mLastDx:I

    invoke-static {v0, p2, v1}, Lc8/Fsb;->access$100(Lc8/Fsb;II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/Csb;->isVertical:Z

    if-nez v0, :cond_0

    .line 329
    iget v0, p0, Lc8/Csb;->mContentOffsetX:I

    iput v0, p0, Lc8/Csb;->mTx:I

    .line 330
    const/4 v8, 0x1

    .line 333
    :cond_0
    iget-object v0, p0, Lc8/Csb;->this$0:Lc8/Fsb;

    iget v1, p0, Lc8/Csb;->mLastDy:I

    invoke-static {v0, p3, v1}, Lc8/Fsb;->access$100(Lc8/Fsb;II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lc8/Csb;->isVertical:Z

    if-eqz v0, :cond_1

    .line 334
    iget v0, p0, Lc8/Csb;->mContentOffsetY:I

    iput v0, p0, Lc8/Csb;->mTy:I

    .line 335
    const/4 v8, 0x1

    .line 339
    :cond_1
    iget v0, p0, Lc8/Csb;->mContentOffsetX:I

    iget v1, p0, Lc8/Csb;->mTx:I

    sub-int v9, v0, v1

    .line 340
    .local v9, "tdx":I
    iget v0, p0, Lc8/Csb;->mContentOffsetY:I

    iget v1, p0, Lc8/Csb;->mTy:I

    sub-int v10, v0, v1

    .line 342
    .local v10, "tdy":I
    iput p2, p0, Lc8/Csb;->mLastDx:I

    .line 343
    iput p3, p0, Lc8/Csb;->mLastDy:I

    .line 345
    if-eqz v8, :cond_2

    .line 347
    iget-object v0, p0, Lc8/Csb;->this$0:Lc8/Fsb;

    const-string/jumbo v1, "turn"

    iget v2, p0, Lc8/Csb;->mContentOffsetX:I

    int-to-float v2, v2

    iget v3, p0, Lc8/Csb;->mContentOffsetY:I

    int-to-float v3, v3

    int-to-float v4, p2

    int-to-float v5, p3

    int-to-float v6, v9

    int-to-float v7, v10

    invoke-static/range {v0 .. v7}, Lc8/Fsb;->access$300(Lc8/Fsb;Ljava/lang/String;FFFFFF)V

    .line 358
    :goto_0
    return-void

    .line 352
    :cond_2
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v6

    new-instance v0, Lc8/Bsb;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lc8/Bsb;-><init>(Lc8/Csb;IIII)V

    iget-object v1, p0, Lc8/Csb;->this$0:Lc8/Fsb;

    iget-object v1, v1, Lc8/Fsb;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lc8/ZWf;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0
.end method
