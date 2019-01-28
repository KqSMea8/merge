.class public Lc8/Zeg;
.super Lc8/wu;
.source "ExtendedLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Xeg;,
        Lc8/Yeg;
    }
.end annotation


# instance fields
.field private onScrollEndListener:Lc8/Xeg;

.field private smoothScroller:Lc8/Mv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lc8/wu;-><init>(Landroid/content/Context;IZ)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lc8/wu;-><init>(Landroid/content/Context;IZ)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lc8/Zeg;)Lc8/Xeg;
    .locals 1
    .param p0, "x0"    # Lc8/Zeg;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/Zeg;->onScrollEndListener:Lc8/Xeg;

    return-object v0
.end method

.method static synthetic access$002(Lc8/Zeg;Lc8/Xeg;)Lc8/Xeg;
    .locals 0
    .param p0, "x0"    # Lc8/Zeg;
    .param p1, "x1"    # Lc8/Xeg;

    .prologue
    .line 31
    iput-object p1, p0, Lc8/Zeg;->onScrollEndListener:Lc8/Xeg;

    return-object p1
.end method


# virtual methods
.method public onLayoutChildren(Lc8/Fv;Lc8/Nv;)V
    .locals 1
    .param p1, "recycler"    # Lc8/Fv;
    .param p2, "state"    # Lc8/Nv;

    .prologue
    .line 53
    :try_start_0
    invoke-super {p0, p1, p2}, Lc8/wu;->onLayoutChildren(Lc8/Fv;Lc8/Nv;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public scrollVerticallyBy(ILc8/Fv;Lc8/Nv;)I
    .locals 2
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lc8/Fv;
    .param p3, "state"    # Lc8/Nv;

    .prologue
    .line 63
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lc8/wu;->scrollVerticallyBy(ILc8/Fv;Lc8/Nv;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 67
    :goto_0
    return v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOnScrollEndListener(Lc8/Xeg;)V
    .locals 0
    .param p1, "onScrollEndListener"    # Lc8/Xeg;

    .prologue
    .line 109
    iput-object p1, p0, Lc8/Zeg;->onScrollEndListener:Lc8/Xeg;

    .line 110
    return-void
.end method

.method public smoothScrollToPosition(Lc8/Rv;Lc8/Nv;I)V
    .locals 2
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "state"    # Lc8/Nv;
    .param p3, "position"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lc8/Zeg;->smoothScroller:Lc8/Mv;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lc8/Yeg;

    invoke-virtual {p1}, Lc8/Rv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/Yeg;-><init>(Lc8/Zeg;Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Zeg;->smoothScroller:Lc8/Mv;

    .line 77
    :cond_0
    iget-object v0, p0, Lc8/Zeg;->smoothScroller:Lc8/Mv;

    invoke-virtual {v0, p3}, Lc8/Mv;->setTargetPosition(I)V

    .line 78
    iget-object v0, p0, Lc8/Zeg;->smoothScroller:Lc8/Mv;

    invoke-virtual {p0, v0}, Lc8/Zeg;->startSmoothScroll(Lc8/Mv;)V

    .line 79
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method
