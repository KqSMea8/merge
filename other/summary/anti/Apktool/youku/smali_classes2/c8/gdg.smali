.class public Lc8/gdg;
.super Lc8/efg;
.source "SimpleRecyclerView.java"

# interfaces
.implements Lc8/ddg;


# instance fields
.field private mAdapter:Lc8/ifg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lc8/efg;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/gdg;->mAdapter:Lc8/ifg;

    .line 42
    return-void
.end method


# virtual methods
.method public getInnerView()Lc8/efg;
    .locals 0

    .prologue
    .line 46
    return-object p0
.end method

.method public getRecyclerViewBaseAdapter()Lc8/ifg;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lc8/gdg;->mAdapter:Lc8/ifg;

    return-object v0
.end method

.method public notifyStickyRemove(Lc8/jdg;)V
    .locals 0
    .param p1, "component"    # Lc8/jdg;

    .prologue
    .line 67
    return-void
.end method

.method public notifyStickyShow(Lc8/jdg;)V
    .locals 0
    .param p1, "component"    # Lc8/jdg;

    .prologue
    .line 60
    return-void
.end method

.method public setRecyclerViewBaseAdapter(Lc8/ifg;)V
    .locals 0
    .param p1, "adapter"    # Lc8/ifg;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lc8/gdg;->setAdapter(Lc8/iv;)V

    .line 52
    iput-object p1, p0, Lc8/gdg;->mAdapter:Lc8/ifg;

    .line 53
    return-void
.end method

.method public updateStickyView(I)V
    .locals 0
    .param p1, "currentStickyPos"    # I

    .prologue
    .line 72
    return-void
.end method
