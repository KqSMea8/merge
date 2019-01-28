.class public final Lc8/lFd;
.super Landroid/os/HandlerThread;
.source "AMapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nFd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Lc8/nFd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc8/nFd;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/lFd;->a:Lc8/nFd;

    iput-object p2, p0, Lc8/lFd;->a:Lc8/nFd;

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/lFd;->a:Lc8/nFd;

    iget-object v0, v0, Lc8/nFd;->i:Lc8/EFd;

    invoke-virtual {v0}, Lc8/EFd;->a()V

    iget-object v0, p0, Lc8/lFd;->a:Lc8/nFd;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lc8/lFd;->a:Lc8/nFd;

    iget-object v2, v2, Lc8/nFd;->b:Lc8/mFd;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Lc8/nFd;->k:Landroid/os/Messenger;

    iget-object v0, p0, Lc8/lFd;->a:Lc8/nFd;

    invoke-virtual {v0}, Lc8/nFd;->b()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lc8/lFd;->a:Lc8/nFd;

    invoke-virtual {v1, v0}, Lc8/nFd;->a(Landroid/content/Intent;)V

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
