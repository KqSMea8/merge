.class public Lc8/hIb;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lc8/gIb;


# direct methods
.method constructor <init>(Lc8/gIb;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lc8/hIb;->a:Lc8/gIb;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ExecutorServiceUtils"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
