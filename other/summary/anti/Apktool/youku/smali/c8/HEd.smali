.class public final Lc8/HEd;
.super Ljava/util/TimerTask;
.source "CollectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/JEd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lc8/JEd;


# direct methods
.method constructor <init>(Lc8/JEd;)V
    .locals 1

    iput-object p1, p0, Lc8/HEd;->b:Lc8/JEd;

    const/4 v0, 0x2

    iput v0, p0, Lc8/HEd;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {}, Lc8/uFd;->b()J

    move-result-wide v0

    iget-object v2, p0, Lc8/HEd;->b:Lc8/JEd;

    invoke-static {v2}, Lc8/JEd;->c(Lc8/JEd;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lc8/HEd;->b:Lc8/JEd;

    invoke-static {v2}, Lc8/JEd;->d(Lc8/JEd;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/HEd;->b:Lc8/JEd;

    invoke-static {v2}, Lc8/JEd;->e(Lc8/JEd;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lc8/HEd;->b:Lc8/JEd;

    invoke-static {v2}, Lc8/JEd;->f(Lc8/JEd;)V

    :cond_0
    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lc8/HEd;->b:Lc8/JEd;

    invoke-static {v0}, Lc8/JEd;->g(Lc8/JEd;)Lc8/LEd;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/HEd;->b:Lc8/JEd;

    invoke-static {v0}, Lc8/JEd;->g(Lc8/JEd;)Lc8/LEd;

    move-result-object v0

    iget-object v1, p0, Lc8/HEd;->b:Lc8/JEd;

    invoke-static {v1}, Lc8/JEd;->h(Lc8/JEd;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/LEd;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/HEd;->b:Lc8/JEd;

    iget v1, p0, Lc8/HEd;->a:I

    invoke-static {v0, v1}, Lc8/JEd;->a(Lc8/JEd;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CollectionManager"

    const-string/jumbo v2, "timerTaskU run"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lc8/HEd;->b:Lc8/JEd;

    invoke-static {v0}, Lc8/JEd;->f(Lc8/JEd;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
