.class public Lc8/og;
.super Lc8/Bh;
.source "AutoTransitionPort.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Lc8/N;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-direct {p0}, Lc8/Bh;-><init>()V

    .line 40
    invoke-virtual {p0, v2}, Lc8/og;->setOrdering(I)Lc8/Bh;

    .line 41
    new-instance v0, Lc8/Fg;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lc8/Fg;-><init>(I)V

    invoke-virtual {p0, v0}, Lc8/og;->addTransition(Lc8/uh;)Lc8/Bh;

    move-result-object v0

    new-instance v1, Lc8/yg;

    invoke-direct {v1}, Lc8/yg;-><init>()V

    .line 42
    invoke-virtual {v0, v1}, Lc8/Bh;->addTransition(Lc8/uh;)Lc8/Bh;

    move-result-object v0

    new-instance v1, Lc8/Fg;

    invoke-direct {v1, v2}, Lc8/Fg;-><init>(I)V

    .line 43
    invoke-virtual {v0, v1}, Lc8/Bh;->addTransition(Lc8/uh;)Lc8/Bh;

    .line 44
    return-void
.end method
