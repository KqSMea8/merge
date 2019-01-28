.class public abstract Lc8/mPf;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qPf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemClickGestureListener"
.end annotation


# instance fields
.field private final mHostView:Lc8/qPf;

.field private mTargetChild:Landroid/view/View;


# direct methods
.method public constructor <init>(Lc8/qPf;)V
    .locals 0
    .param p1, "hostView"    # Lc8/qPf;

    .prologue
    .line 1225
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 1226
    iput-object p1, p0, Lc8/mPf;->mHostView:Lc8/qPf;

    .line 1227
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 1233
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 1235
    .local v1, "y":I
    iget-object v2, p0, Lc8/mPf;->mHostView:Lc8/qPf;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Lc8/qPf;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lc8/mPf;->mTargetChild:Landroid/view/View;

    .line 1236
    iget-object v2, p0, Lc8/mPf;->mTargetChild:Landroid/view/View;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1287
    iget-object v0, p0, Lc8/mPf;->mTargetChild:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1305
    :cond_0
    :goto_0
    return-void

    .line 1291
    :cond_1
    const/4 v6, 0x0

    .line 1292
    .local v6, "handled":Z
    iget-object v0, p0, Lc8/mPf;->mHostView:Lc8/qPf;

    iget-object v1, p0, Lc8/mPf;->mTargetChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Lc8/qPf;->getChildPosition(Landroid/view/View;)I

    move-result v7

    .line 1293
    .local v7, "position":I
    iget-object v0, p0, Lc8/mPf;->mHostView:Lc8/qPf;

    invoke-virtual {v0}, Lc8/qPf;->getAdapter()Lc8/iv;

    move-result-object v0

    invoke-virtual {v0, v7}, Lc8/iv;->getItemId(I)J

    move-result-wide v4

    .line 1294
    .local v4, "id":J
    iget-object v0, p0, Lc8/mPf;->mHostView:Lc8/qPf;

    invoke-virtual {v0}, Lc8/qPf;->getHeaderViewsCount()I

    move-result v0

    sub-int v3, v7, v0

    .line 1295
    .local v3, "adjPos":I
    iget-object v0, p0, Lc8/mPf;->mHostView:Lc8/qPf;

    invoke-static {v0, v7}, Lc8/qPf;->access$200(Lc8/qPf;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1297
    iget-object v1, p0, Lc8/mPf;->mHostView:Lc8/qPf;

    iget-object v2, p0, Lc8/mPf;->mTargetChild:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/mPf;->performItemLongClick(Lc8/qPf;Landroid/view/View;IJ)Z

    move-result v6

    .line 1300
    :cond_2
    if-eqz v6, :cond_0

    .line 1302
    iget-object v0, p0, Lc8/mPf;->mTargetChild:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1303
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/mPf;->mTargetChild:Landroid/view/View;

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "v"    # F
    .param p4, "v2"    # F

    .prologue
    const/4 v0, 0x0

    .line 1274
    iget-object v1, p0, Lc8/mPf;->mTargetChild:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1276
    iget-object v1, p0, Lc8/mPf;->mTargetChild:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1277
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/mPf;->mTargetChild:Landroid/view/View;

    .line 1278
    const/4 v0, 0x1

    .line 1281
    :cond_0
    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1242
    iget-object v0, p0, Lc8/mPf;->mTargetChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lc8/mPf;->mTargetChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1246
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1251
    const/4 v6, 0x0

    .line 1253
    .local v6, "handled":Z
    iget-object v0, p0, Lc8/mPf;->mTargetChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1255
    iget-object v0, p0, Lc8/mPf;->mTargetChild:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1257
    iget-object v0, p0, Lc8/mPf;->mHostView:Lc8/qPf;

    iget-object v1, p0, Lc8/mPf;->mTargetChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Lc8/qPf;->getChildPosition(Landroid/view/View;)I

    move-result v7

    .line 1258
    .local v7, "position":I
    iget-object v0, p0, Lc8/mPf;->mHostView:Lc8/qPf;

    invoke-virtual {v0}, Lc8/qPf;->getAdapter()Lc8/iv;

    move-result-object v0

    invoke-virtual {v0, v7}, Lc8/iv;->getItemId(I)J

    move-result-wide v4

    .line 1259
    .local v4, "id":J
    iget-object v0, p0, Lc8/mPf;->mHostView:Lc8/qPf;

    invoke-virtual {v0}, Lc8/qPf;->getHeaderViewsCount()I

    move-result v0

    sub-int v3, v7, v0

    .line 1260
    .local v3, "adjPos":I
    iget-object v0, p0, Lc8/mPf;->mHostView:Lc8/qPf;

    invoke-static {v0, v7}, Lc8/qPf;->access$200(Lc8/qPf;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1262
    iget-object v1, p0, Lc8/mPf;->mHostView:Lc8/qPf;

    iget-object v2, p0, Lc8/mPf;->mTargetChild:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/mPf;->performItemClick(Lc8/qPf;Landroid/view/View;IJ)Z

    move-result v6

    .line 1265
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/mPf;->mTargetChild:Landroid/view/View;

    .line 1268
    .end local v3    # "adjPos":I
    .end local v4    # "id":J
    .end local v7    # "position":I
    :cond_1
    return v6
.end method

.method abstract performItemClick(Lc8/qPf;Landroid/view/View;IJ)Z
.end method

.method abstract performItemLongClick(Lc8/qPf;Landroid/view/View;IJ)Z
.end method
