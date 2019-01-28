.class public Lc8/Jzg;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Lzg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lc8/Lzg;

.field private final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lc8/Kzg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Lzg;)V
    .locals 1

    iput-object p1, p0, Lc8/Jzg;->a:Lc8/Lzg;

    const-string/jumbo v0, "PackageProcessor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lc8/Jzg;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public a(Lc8/Kzg;)V
    .locals 1

    iget-object v0, p0, Lc8/Jzg;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lc8/Jzg;->a:Lc8/Lzg;

    invoke-static {v1}, Lc8/Lzg;->a(Lc8/Lzg;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, p0, Lc8/Jzg;->a:Lc8/Lzg;

    invoke-static {v0}, Lc8/Lzg;->a(Lc8/Lzg;)I

    move-result v0

    move v1, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/Jzg;->a:Lc8/Lzg;

    invoke-static {v0}, Lc8/Lzg;->b(Lc8/Lzg;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    iget-object v2, p0, Lc8/Jzg;->a:Lc8/Lzg;

    iget-object v0, p0, Lc8/Jzg;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    int-to-long v4, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Kzg;

    invoke-static {v2, v0}, Lc8/Lzg;->a(Lc8/Lzg;Lc8/Kzg;)Lc8/Kzg;

    iget-object v0, p0, Lc8/Jzg;->a:Lc8/Lzg;

    invoke-static {v0}, Lc8/Lzg;->c(Lc8/Lzg;)Lc8/Kzg;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/Jzg;->a:Lc8/Lzg;

    invoke-static {v0}, Lc8/Lzg;->d(Lc8/Lzg;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lc8/Jzg;->a:Lc8/Lzg;

    invoke-static {v3}, Lc8/Lzg;->c(Lc8/Lzg;)Lc8/Kzg;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lc8/Jzg;->a:Lc8/Lzg;

    invoke-static {v2}, Lc8/Lzg;->d(Lc8/Lzg;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lc8/Jzg;->a:Lc8/Lzg;

    invoke-static {v0}, Lc8/Lzg;->c(Lc8/Lzg;)Lc8/Kzg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Kzg;->b()V

    iget-object v0, p0, Lc8/Jzg;->a:Lc8/Lzg;

    invoke-static {v0}, Lc8/Lzg;->d(Lc8/Lzg;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Lc8/Jzg;->a:Lc8/Lzg;

    invoke-static {v3}, Lc8/Lzg;->c(Lc8/Lzg;)Lc8/Kzg;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lc8/Jzg;->a:Lc8/Lzg;

    invoke-static {v2}, Lc8/Lzg;->d(Lc8/Lzg;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lc8/Hzg;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lc8/Jzg;->a:Lc8/Lzg;

    invoke-static {v0}, Lc8/Lzg;->a(Lc8/Lzg;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc8/Jzg;->a:Lc8/Lzg;

    invoke-static {v0}, Lc8/Lzg;->e(Lc8/Lzg;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    return-void
.end method
