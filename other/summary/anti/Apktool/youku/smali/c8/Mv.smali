.class public abstract Lc8/Mv;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Lv;,
        Lc8/Kv;
    }
.end annotation


# instance fields
.field private mLayoutManager:Lc8/xv;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Lc8/Rv;

.field private final mRecyclingAction:Lc8/Kv;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10918
    const/4 v0, -0x1

    iput v0, p0, Lc8/Mv;->mTargetPosition:I

    .line 10933
    new-instance v0, Lc8/Kv;

    invoke-direct {v0, v1, v1}, Lc8/Kv;-><init>(II)V

    iput-object v0, p0, Lc8/Mv;->mRecyclingAction:Lc8/Kv;

    .line 10934
    return-void
.end method

.method static synthetic access$400(Lc8/Mv;II)V
    .locals 0
    .param p0, "x0"    # Lc8/Mv;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 10916
    invoke-direct {p0, p1, p2}, Lc8/Mv;->onAnimation(II)V

    return-void
.end method

.method private onAnimation(II)V
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 11028
    iget-object v1, p0, Lc8/Mv;->mRecyclerView:Lc8/Rv;

    .line 11029
    .local v1, "recyclerView":Lc8/Rv;
    iget-boolean v2, p0, Lc8/Mv;->mRunning:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lc8/Mv;->mTargetPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-nez v1, :cond_1

    .line 11030
    :cond_0
    invoke-virtual {p0}, Lc8/Mv;->stop()V

    .line 11032
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/Mv;->mPendingInitialRun:Z

    .line 11033
    iget-object v2, p0, Lc8/Mv;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 11035
    iget-object v2, p0, Lc8/Mv;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lc8/Mv;->getChildPosition(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Lc8/Mv;->mTargetPosition:I

    if-ne v2, v3, :cond_4

    .line 11036
    iget-object v2, p0, Lc8/Mv;->mTargetView:Landroid/view/View;

    iget-object v3, v1, Lc8/Rv;->mState:Lc8/Nv;

    iget-object v4, p0, Lc8/Mv;->mRecyclingAction:Lc8/Kv;

    invoke-virtual {p0, v2, v3, v4}, Lc8/Mv;->onTargetFound(Landroid/view/View;Lc8/Nv;Lc8/Kv;)V

    .line 11037
    iget-object v2, p0, Lc8/Mv;->mRecyclingAction:Lc8/Kv;

    invoke-virtual {v2, v1}, Lc8/Kv;->runIfNecessary(Lc8/Rv;)V

    .line 11038
    invoke-virtual {p0}, Lc8/Mv;->stop()V

    .line 11044
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lc8/Mv;->mRunning:Z

    if-eqz v2, :cond_3

    .line 11045
    iget-object v2, v1, Lc8/Rv;->mState:Lc8/Nv;

    iget-object v3, p0, Lc8/Mv;->mRecyclingAction:Lc8/Kv;

    invoke-virtual {p0, p1, p2, v2, v3}, Lc8/Mv;->onSeekTargetStep(IILc8/Nv;Lc8/Kv;)V

    .line 11046
    iget-object v2, p0, Lc8/Mv;->mRecyclingAction:Lc8/Kv;

    invoke-virtual {v2}, Lc8/Kv;->hasJumpTarget()Z

    move-result v0

    .line 11047
    .local v0, "hadJumpTarget":Z
    iget-object v2, p0, Lc8/Mv;->mRecyclingAction:Lc8/Kv;

    invoke-virtual {v2, v1}, Lc8/Kv;->runIfNecessary(Lc8/Rv;)V

    .line 11048
    if-eqz v0, :cond_3

    .line 11050
    iget-boolean v2, p0, Lc8/Mv;->mRunning:Z

    if-eqz v2, :cond_5

    .line 11051
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/Mv;->mPendingInitialRun:Z

    .line 11052
    iget-object v2, v1, Lc8/Rv;->mViewFlinger:Lc8/Pv;

    invoke-virtual {v2}, Lc8/Pv;->postOnAnimation()V

    .line 11058
    .end local v0    # "hadJumpTarget":Z
    :cond_3
    :goto_1
    return-void

    .line 11040
    :cond_4
    const-string/jumbo v2, "RecyclerView"

    const-string/jumbo v3, "Passed over target position while smooth scrolling."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11041
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/Mv;->mTargetView:Landroid/view/View;

    goto :goto_0

    .line 11054
    .restart local v0    # "hadJumpTarget":Z
    :cond_5
    invoke-virtual {p0}, Lc8/Mv;->stop()V

    goto :goto_1
.end method


# virtual methods
.method public findViewByPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 11078
    iget-object v0, p0, Lc8/Mv;->mRecyclerView:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0, p1}, Lc8/xv;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 11071
    iget-object v0, p0, Lc8/Mv;->mRecyclerView:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mLayout:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 11064
    iget-object v0, p0, Lc8/Mv;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v0, p1}, Lc8/Rv;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Lc8/xv;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 10972
    iget-object v0, p0, Lc8/Mv;->mLayoutManager:Lc8/xv;

    return-object v0
.end method

.method public getTargetPosition()I
    .locals 1

    .prologue
    .line 11024
    iget v0, p0, Lc8/Mv;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11087
    iget-object v0, p0, Lc8/Mv;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v0, p1}, Lc8/Rv;->scrollToPosition(I)V

    .line 11088
    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 1

    .prologue
    .line 11006
    iget-boolean v0, p0, Lc8/Mv;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 11014
    iget-boolean v0, p0, Lc8/Mv;->mRunning:Z

    return v0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .locals 5
    .param p1, "scrollVector"    # Landroid/graphics/PointF;

    .prologue
    .line 11104
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 11106
    .local v0, "magnitude":D
    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 11107
    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 11108
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 11091
    invoke-virtual {p0, p1}, Lc8/Mv;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lc8/Mv;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 11092
    iput-object p1, p0, Lc8/Mv;->mTargetView:Landroid/view/View;

    .line 11097
    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILc8/Nv;Lc8/Kv;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Lc8/Nv;Lc8/Kv;)V
.end method

.method public setTargetPosition(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .prologue
    .line 10963
    iput p1, p0, Lc8/Mv;->mTargetPosition:I

    .line 10964
    return-void
.end method

.method start(Lc8/Rv;Lc8/xv;)V
    .locals 3
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "layoutManager"    # Lc8/xv;

    .prologue
    const/4 v2, 0x1

    .line 10949
    iput-object p1, p0, Lc8/Mv;->mRecyclerView:Lc8/Rv;

    .line 10950
    iput-object p2, p0, Lc8/Mv;->mLayoutManager:Lc8/xv;

    .line 10951
    iget v0, p0, Lc8/Mv;->mTargetPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 10952
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10954
    :cond_0
    iget-object v0, p0, Lc8/Mv;->mRecyclerView:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mState:Lc8/Nv;

    iget v1, p0, Lc8/Mv;->mTargetPosition:I

    invoke-static {v0, v1}, Lc8/Nv;->access$1102(Lc8/Nv;I)I

    .line 10955
    iput-boolean v2, p0, Lc8/Mv;->mRunning:Z

    .line 10956
    iput-boolean v2, p0, Lc8/Mv;->mPendingInitialRun:Z

    .line 10957
    invoke-virtual {p0}, Lc8/Mv;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lc8/Mv;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/Mv;->mTargetView:Landroid/view/View;

    .line 10958
    invoke-virtual {p0}, Lc8/Mv;->onStart()V

    .line 10959
    iget-object v0, p0, Lc8/Mv;->mRecyclerView:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mViewFlinger:Lc8/Pv;

    invoke-virtual {v0}, Lc8/Pv;->postOnAnimation()V

    .line 10960
    return-void
.end method

.method protected final stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 10982
    iget-boolean v0, p0, Lc8/Mv;->mRunning:Z

    if-nez v0, :cond_0

    .line 10996
    :goto_0
    return-void

    .line 10985
    :cond_0
    invoke-virtual {p0}, Lc8/Mv;->onStop()V

    .line 10986
    iget-object v0, p0, Lc8/Mv;->mRecyclerView:Lc8/Rv;

    iget-object v0, v0, Lc8/Rv;->mState:Lc8/Nv;

    invoke-static {v0, v2}, Lc8/Nv;->access$1102(Lc8/Nv;I)I

    .line 10987
    iput-object v1, p0, Lc8/Mv;->mTargetView:Landroid/view/View;

    .line 10988
    iput v2, p0, Lc8/Mv;->mTargetPosition:I

    .line 10989
    iput-boolean v3, p0, Lc8/Mv;->mPendingInitialRun:Z

    .line 10990
    iput-boolean v3, p0, Lc8/Mv;->mRunning:Z

    .line 10992
    iget-object v0, p0, Lc8/Mv;->mLayoutManager:Lc8/xv;

    invoke-static {v0, p0}, Lc8/xv;->access$1200(Lc8/xv;Lc8/Mv;)V

    .line 10994
    iput-object v1, p0, Lc8/Mv;->mLayoutManager:Lc8/xv;

    .line 10995
    iput-object v1, p0, Lc8/Mv;->mRecyclerView:Lc8/Rv;

    goto :goto_0
.end method
