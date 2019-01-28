.class public final Lc8/yFd;
.super Ljava/lang/Thread;
.source "APSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zFd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lc8/zFd;


# direct methods
.method constructor <init>(Lc8/zFd;)V
    .locals 0

    iput-object p1, p0, Lc8/yFd;->a:Lc8/zFd;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/yFd;->a:Lc8/zFd;

    iget-boolean v0, v0, Lc8/zFd;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/yFd;->a:Lc8/zFd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/zFd;->o:Z

    iget-object v0, p0, Lc8/yFd;->a:Lc8/zFd;

    new-instance v1, Ljava/net/ServerSocket;

    const v2, 0xaaa9

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, v0, Lc8/zFd;->n:Ljava/net/ServerSocket;

    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/yFd;->a:Lc8/zFd;

    iget-boolean v0, v0, Lc8/zFd;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/yFd;->a:Lc8/zFd;

    iget-object v0, v0, Lc8/zFd;->n:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/yFd;->a:Lc8/zFd;

    iget-object v1, p0, Lc8/yFd;->a:Lc8/zFd;

    iget-object v1, v1, Lc8/zFd;->n:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lc8/zFd;->p:Ljava/net/Socket;

    iget-object v0, p0, Lc8/yFd;->a:Lc8/zFd;

    iget-object v1, p0, Lc8/yFd;->a:Lc8/zFd;

    iget-object v1, v1, Lc8/zFd;->p:Ljava/net/Socket;

    invoke-static {v0, v1}, Lc8/zFd;->a(Lc8/zFd;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "run"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
