.class public Lc8/ng;
.super Lc8/vh;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-direct {p0}, Lc8/vh;-><init>()V

    .line 33
    invoke-virtual {p0, v2}, Lc8/ng;->setOrdering(I)Lc8/vh;

    .line 34
    new-instance v0, Lc8/zg;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lc8/zg;-><init>(I)V

    invoke-virtual {p0, v0}, Lc8/ng;->addTransition(Lc8/Tg;)Lc8/vh;

    move-result-object v0

    new-instance v1, Lc8/qg;

    invoke-direct {v1}, Lc8/qg;-><init>()V

    .line 35
    invoke-virtual {v0, v1}, Lc8/vh;->addTransition(Lc8/Tg;)Lc8/vh;

    move-result-object v0

    new-instance v1, Lc8/zg;

    invoke-direct {v1, v2}, Lc8/zg;-><init>(I)V

    .line 36
    invoke-virtual {v0, v1}, Lc8/vh;->addTransition(Lc8/Tg;)Lc8/vh;

    .line 37
    return-void
.end method
