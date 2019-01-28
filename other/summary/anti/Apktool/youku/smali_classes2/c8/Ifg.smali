.class public Lc8/Ifg;
.super Lc8/Hfg;
.source "BounceRecyclerView.java"

# interfaces
.implements Lc8/Ueg;
.implements Lc8/ddg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Hfg",
        "<",
        "Lc8/efg;",
        ">;",
        "Lc8/ddg;",
        "Lc8/Ueg;"
    }
.end annotation


# static fields
.field public static final DEFAULT_COLUMN_COUNT:I = 0x1

.field public static final DEFAULT_COLUMN_GAP:I = 0x1


# instance fields
.field private adapter:Lc8/ifg;

.field private mColumnCount:I

.field private mColumnGap:F

.field private mGesture:Lc8/Teg;

.field private mLayoutType:I

.field private mStickyHeaderHelper:Lc8/idg;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 61
    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lc8/Ifg;-><init>(Landroid/content/Context;IIFI)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIFI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "columnCount"    # I
    .param p4, "columnGap"    # F
    .param p5, "orientation"    # I

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-direct {p0, p1, p5}, Lc8/Hfg;-><init>(Landroid/content/Context;I)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Ifg;->adapter:Lc8/ifg;

    .line 40
    iput v1, p0, Lc8/Ifg;->mLayoutType:I

    .line 41
    iput v1, p0, Lc8/Ifg;->mColumnCount:I

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lc8/Ifg;->mColumnGap:F

    .line 53
    iput p2, p0, Lc8/Ifg;->mLayoutType:I

    .line 54
    iput p3, p0, Lc8/Ifg;->mColumnCount:I

    .line 55
    iput p4, p0, Lc8/Ifg;->mColumnGap:F

    .line 56
    invoke-virtual {p0, p1}, Lc8/Ifg;->init(Landroid/content/Context;)V

    .line 57
    new-instance v0, Lc8/idg;

    invoke-direct {v0, p0}, Lc8/idg;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lc8/Ifg;->mStickyHeaderHelper:Lc8/idg;

    .line 58
    return-void
.end method


# virtual methods
.method public bridge synthetic getInnerView()Lc8/efg;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lc8/Hfg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    return-object v0
.end method

.method public getRecyclerViewBaseAdapter()Lc8/ifg;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lc8/Ifg;->adapter:Lc8/ifg;

    return-object v0
.end method

.method public notifyStickyRemove(Lc8/jdg;)V
    .locals 1
    .param p1, "compToRemove"    # Lc8/jdg;

    .prologue
    .line 123
    iget-object v0, p0, Lc8/Ifg;->mStickyHeaderHelper:Lc8/idg;

    invoke-virtual {v0, p1}, Lc8/idg;->notifyStickyRemove(Lc8/jdg;)V

    .line 124
    return-void
.end method

.method public notifyStickyShow(Lc8/jdg;)V
    .locals 1
    .param p1, "component"    # Lc8/jdg;

    .prologue
    .line 109
    iget-object v0, p0, Lc8/Ifg;->mStickyHeaderHelper:Lc8/idg;

    invoke-virtual {v0, p1}, Lc8/idg;->notifyStickyShow(Lc8/jdg;)V

    .line 110
    return-void
.end method

.method public onLoadmoreComplete()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lc8/Ifg;->adapter:Lc8/ifg;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lc8/Ifg;->adapter:Lc8/ifg;

    invoke-virtual {v0}, Lc8/ifg;->notifyDataSetChanged()V

    .line 103
    :cond_0
    return-void
.end method

.method public onRefreshingComplete()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lc8/Ifg;->adapter:Lc8/ifg;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lc8/Ifg;->adapter:Lc8/ifg;

    invoke-virtual {v0}, Lc8/ifg;->notifyDataSetChanged()V

    .line 96
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lc8/Hfg;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 78
    .local v0, "result":Z
    iget-object v1, p0, Lc8/Ifg;->mGesture:Lc8/Teg;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lc8/Ifg;->mGesture:Lc8/Teg;

    invoke-virtual {v1, p0, p1}, Lc8/Teg;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 81
    :cond_0
    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 48
    invoke-static {p1}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-super {p0, v0, p2, p3}, Lc8/Hfg;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public registerGestureListener(Lc8/Teg;)V
    .locals 1
    .param p1, "wxGesture"    # Lc8/Teg;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 130
    iput-object p1, p0, Lc8/Ifg;->mGesture:Lc8/Teg;

    .line 131
    invoke-virtual {p0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    invoke-virtual {v0, p1}, Lc8/efg;->registerGestureListener(Lc8/Teg;)V

    .line 132
    return-void
.end method

.method public bridge synthetic setInnerView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lc8/Ifg;->setInnerView(Landroid/content/Context;)Lc8/efg;

    move-result-object v0

    return-object v0
.end method

.method public setInnerView(Landroid/content/Context;)Lc8/efg;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    new-instance v0, Lc8/efg;

    invoke-direct {v0, p1}, Lc8/efg;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, "wxRecyclerView":Lc8/efg;
    iget v2, p0, Lc8/Ifg;->mLayoutType:I

    iget v3, p0, Lc8/Ifg;->mColumnCount:I

    iget v4, p0, Lc8/Ifg;->mColumnGap:F

    invoke-virtual {p0}, Lc8/Ifg;->getOrientation()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lc8/efg;->initView(Landroid/content/Context;IIFI)V

    .line 88
    return-object v0
.end method

.method public setRecyclerViewBaseAdapter(Lc8/ifg;)V
    .locals 1
    .param p1, "adapter"    # Lc8/ifg;

    .prologue
    .line 65
    iput-object p1, p0, Lc8/Ifg;->adapter:Lc8/ifg;

    .line 66
    invoke-virtual {p0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/efg;

    invoke-virtual {v0, p1}, Lc8/efg;->setAdapter(Lc8/iv;)V

    .line 69
    :cond_0
    return-void
.end method

.method public updateStickyView(I)V
    .locals 1
    .param p1, "currentStickyPos"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lc8/Ifg;->mStickyHeaderHelper:Lc8/idg;

    invoke-virtual {v0, p1}, Lc8/idg;->updateStickyView(I)V

    .line 115
    return-void
.end method
