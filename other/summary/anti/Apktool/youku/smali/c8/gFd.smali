.class public final Lc8/gFd;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nFd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc8/nFd;


# direct methods
.method constructor <init>(Lc8/nFd;)V
    .locals 0

    iput-object p1, p0, Lc8/gFd;->a:Lc8/nFd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/gFd;->a:Lc8/nFd;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Lc8/nFd;->j:Landroid/os/Messenger;

    iget-object v0, p0, Lc8/gFd;->a:Lc8/nFd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/nFd;->a(Lc8/nFd;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "onServiceConnected"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lc8/gFd;->a:Lc8/nFd;

    const/4 v1, 0x0

    iput-object v1, v0, Lc8/nFd;->j:Landroid/os/Messenger;

    iget-object v0, p0, Lc8/gFd;->a:Lc8/nFd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/nFd;->a(Lc8/nFd;Z)Z

    return-void
.end method
