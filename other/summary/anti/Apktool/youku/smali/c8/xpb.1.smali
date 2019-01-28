.class public Lc8/xpb;
.super Lc8/hbg;
.source "WXExtA.java"


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lc8/hbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lc8/qeg;

    invoke-virtual {p0, p1}, Lc8/xpb;->onHostViewInitialized(Lc8/qeg;)V

    return-void
.end method

.method protected onHostViewInitialized(Lc8/qeg;)V
    .locals 1
    .param p1, "host"    # Lc8/qeg;

    .prologue
    .line 23
    new-instance v0, Lc8/wpb;

    invoke-direct {v0, p0}, Lc8/wpb;-><init>(Lc8/xpb;)V

    invoke-virtual {p0, v0}, Lc8/xpb;->addClickListener(Lc8/qbg;)V

    .line 29
    invoke-super {p0, p1}, Lc8/hbg;->onHostViewInitialized(Lc8/qeg;)V

    .line 30
    return-void
.end method
