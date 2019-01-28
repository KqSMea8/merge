.class public Lc8/Cob;
.super Lc8/nVf;
.source "AliWXSDKInstance.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lc8/nVf;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 1

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lc8/nVf;->destroy()V

    .line 28
    invoke-static {}, Lc8/Awb;->getInstance()Lc8/Awb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Awb;->destroy()V

    .line 29
    invoke-static {}, Lc8/kwb;->getInstance()Lc8/kwb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/kwb;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected newNestedInstance()Lc8/nVf;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lc8/Cob;

    invoke-virtual {p0}, Lc8/Cob;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Cob;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
