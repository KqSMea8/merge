.class public Lc8/Hx;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Mx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Mx;


# direct methods
.method constructor <init>(Lc8/Mx;)V
    .locals 0

    .prologue
    .line 2259
    iput-object p1, p0, Lc8/Hx;->this$0:Lc8/Mx;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2260
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2264
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2269
    iget-object v6, p0, Lc8/Hx;->this$0:Lc8/Mx;

    invoke-virtual {v6, p1}, Lc8/Mx;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 2270
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2271
    iget-object v6, p0, Lc8/Hx;->this$0:Lc8/Mx;

    iget-object v6, v6, Lc8/Mx;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v6, v0}, Lc8/Rv;->getChildViewHolder(Landroid/view/View;)Lc8/Qv;

    move-result-object v3

    .line 2272
    .local v3, "vh":Lc8/Qv;
    if-eqz v3, :cond_0

    .line 2273
    iget-object v6, p0, Lc8/Hx;->this$0:Lc8/Mx;

    iget-object v6, v6, Lc8/Mx;->mCallback:Lc8/Gx;

    iget-object v7, p0, Lc8/Hx;->this$0:Lc8/Mx;

    iget-object v7, v7, Lc8/Mx;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v6, v7, v3}, Lc8/Gx;->hasDragFlag(Lc8/Rv;Lc8/Qv;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2297
    .end local v3    # "vh":Lc8/Qv;
    :cond_0
    :goto_0
    return-void

    .line 2276
    .restart local v3    # "vh":Lc8/Qv;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2280
    .local v2, "pointerId":I
    iget-object v6, p0, Lc8/Hx;->this$0:Lc8/Mx;

    iget v6, v6, Lc8/Mx;->mActivePointerId:I

    if-ne v2, v6, :cond_0

    .line 2281
    iget-object v6, p0, Lc8/Hx;->this$0:Lc8/Mx;

    iget v6, v6, Lc8/Mx;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2282
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 2283
    .local v4, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 2284
    .local v5, "y":F
    iget-object v6, p0, Lc8/Hx;->this$0:Lc8/Mx;

    iput v4, v6, Lc8/Mx;->mInitialTouchX:F

    .line 2285
    iget-object v6, p0, Lc8/Hx;->this$0:Lc8/Mx;

    iput v5, v6, Lc8/Mx;->mInitialTouchY:F

    .line 2286
    iget-object v6, p0, Lc8/Hx;->this$0:Lc8/Mx;

    iget-object v7, p0, Lc8/Hx;->this$0:Lc8/Mx;

    const/4 v8, 0x0

    iput v8, v7, Lc8/Mx;->mDy:F

    iput v8, v6, Lc8/Mx;->mDx:F

    .line 2291
    iget-object v6, p0, Lc8/Hx;->this$0:Lc8/Mx;

    iget-object v6, v6, Lc8/Mx;->mCallback:Lc8/Gx;

    invoke-virtual {v6}, Lc8/Gx;->isLongPressDragEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2292
    iget-object v6, p0, Lc8/Hx;->this$0:Lc8/Mx;

    const/4 v7, 0x2

    invoke-virtual {v6, v3, v7}, Lc8/Mx;->select(Lc8/Qv;I)V

    goto :goto_0
.end method
