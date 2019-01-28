.class public Lc8/Jfg;
.super Lc8/Hfg;
.source "BounceScrollerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Hfg",
        "<",
        "Lc8/xeg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILc8/acg;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "waScroller"    # Lc8/acg;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lc8/Hfg;-><init>(Landroid/content/Context;I)V

    .line 36
    invoke-virtual {p0, p1}, Lc8/Jfg;->init(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0}, Lc8/Jfg;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lc8/Jfg;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/xeg;

    invoke-virtual {v0, p3}, Lc8/xeg;->setWAScroller(Lc8/acg;)V

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public onLoadmoreComplete()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onRefreshingComplete()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 31
    invoke-static {p1}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-super {p0, v0, p2, p3}, Lc8/Hfg;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setInnerView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lc8/Jfg;->setInnerView(Landroid/content/Context;)Lc8/xeg;

    move-result-object v0

    return-object v0
.end method

.method public setInnerView(Landroid/content/Context;)Lc8/xeg;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    new-instance v0, Lc8/xeg;

    invoke-direct {v0, p1}, Lc8/xeg;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
