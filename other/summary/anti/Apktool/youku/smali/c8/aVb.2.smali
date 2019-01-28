.class public Lc8/aVb;
.super Ljava/lang/Object;
.source "ThreadWatchHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/IUb;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "watchConfig"    # Lc8/IUb;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iget-boolean v0, p2, Lc8/IUb;->isBetaVersion:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lc8/IUb;->isCloseMainLooperSampling:Z

    .line 16
    :cond_0
    return-void
.end method
