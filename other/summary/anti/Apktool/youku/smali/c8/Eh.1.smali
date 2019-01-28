.class public Lc8/Eh;
.super Lc8/Hh;
.source "ViewGroupOverlay.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Lc8/N;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/ViewGroup;
    .param p3, "requestingView"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lc8/Hh;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 32
    return-void
.end method

.method public static createFrom(Landroid/view/ViewGroup;)Lc8/Eh;
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    invoke-static {p0}, Lc8/Hh;->createFrom(Landroid/view/View;)Lc8/Hh;

    move-result-object v0

    check-cast v0, Lc8/Eh;

    return-object v0
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lc8/Eh;->mOverlayViewGroup:Lc8/Gh;

    invoke-virtual {v0, p1}, Lc8/Gh;->add(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lc8/Eh;->mOverlayViewGroup:Lc8/Gh;

    invoke-virtual {v0, p1}, Lc8/Gh;->remove(Landroid/view/View;)V

    .line 74
    return-void
.end method
