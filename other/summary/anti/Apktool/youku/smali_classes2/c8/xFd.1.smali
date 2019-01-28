.class public final Lc8/xFd;
.super Landroid/os/HandlerThread;
.source "APSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zFd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lc8/zFd;


# direct methods
.method public constructor <init>(Lc8/zFd;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc8/xFd;->a:Lc8/zFd;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/xFd;->a:Lc8/zFd;

    new-instance v1, Lc8/EFd;

    iget-object v2, p0, Lc8/xFd;->a:Lc8/zFd;

    iget-object v2, v2, Lc8/zFd;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lc8/EFd;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lc8/zFd;->a(Lc8/zFd;Lc8/EFd;)Lc8/EFd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lc8/xFd;->a:Lc8/zFd;

    new-instance v1, Lc8/pEd;

    invoke-direct {v1}, Lc8/pEd;-><init>()V

    iput-object v1, v0, Lc8/zFd;->f:Lc8/pEd;

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "init 2"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "actionHandler"

    const-string/jumbo v2, "onLooperPrepared"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
