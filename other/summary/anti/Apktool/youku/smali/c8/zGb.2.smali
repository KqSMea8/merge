.class public Lc8/zGb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc8/xGb;

.field final synthetic b:Lc8/qGb;

.field final synthetic c:Lc8/sGb;

.field final synthetic d:Ljava/util/concurrent/CountDownLatch;

.field final synthetic e:Lc8/yGb;


# direct methods
.method constructor <init>(Lc8/yGb;Lc8/xGb;Lc8/qGb;Lc8/sGb;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lc8/zGb;->e:Lc8/yGb;

    iput-object p2, p0, Lc8/zGb;->a:Lc8/xGb;

    iput-object p3, p0, Lc8/zGb;->b:Lc8/qGb;

    iput-object p4, p0, Lc8/zGb;->c:Lc8/sGb;

    iput-object p5, p0, Lc8/zGb;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lc8/zGb;->a:Lc8/xGb;

    iget-object v1, p0, Lc8/zGb;->b:Lc8/qGb;

    iget-object v2, p0, Lc8/zGb;->c:Lc8/sGb;

    invoke-virtual {v1, v2}, Lc8/qGb;->a(Lc8/sGb;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lc8/xGb;->a:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lc8/zGb;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "ui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail to execute the Handler "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lc8/zGb;->b:Lc8/qGb;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/zGb;->b:Lc8/qGb;

    invoke-virtual {v1}, Lc8/qGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/zGb;->b:Lc8/qGb;

    invoke-virtual {v1}, Lc8/qGb;->a()Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/baichuan/android/trade/c/a/a/b/d;->a:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lc8/zGb;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/zGb;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
