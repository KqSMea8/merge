.class public final Lc8/uig;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/sig;


# instance fields
.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/tig;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private i:Lc8/yig;

.field private j:Lc8/tig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/uig;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/uig;->h:Ljava/util/List;

    new-instance v0, Lc8/vig;

    invoke-direct {v0, p0}, Lc8/vig;-><init>(Lc8/uig;)V

    iput-object v0, p0, Lc8/uig;->j:Lc8/tig;

    return-void
.end method

.method static synthetic a(Lc8/uig;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lc8/uig;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lc8/uig;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lc8/uig;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lc8/uig;)Lc8/yig;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/uig;->i:Lc8/yig;

    return-object v0
.end method


# virtual methods
.method public final addListener(Lc8/tig;)V
    .locals 1

    iget-object v0, p0, Lc8/uig;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/uig;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final auth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/tig;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "start auth, appId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "auth fail, invalid argument, appId = %s, scope = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v8

    aput-object p2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move v0, v8

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lc8/uig;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/uig;->handler:Landroid/os/Handler;

    :cond_2
    invoke-virtual {p0, p6}, Lc8/uig;->addListener(Lc8/tig;)V

    iget-object v0, p0, Lc8/uig;->i:Lc8/yig;

    if-eqz v0, :cond_3

    move v0, v7

    goto :goto_0

    :cond_3
    new-instance v0, Lc8/yig;

    iget-object v6, p0, Lc8/uig;->j:Lc8/tig;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lc8/yig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/tig;)V

    iput-object v0, p0, Lc8/uig;->i:Lc8/yig;

    iget-object v0, p0, Lc8/uig;->i:Lc8/yig;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lc8/yig;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    move v0, v7

    goto :goto_0

    :cond_4
    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lc8/yig;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public final detach()V
    .locals 1

    iget-object v0, p0, Lc8/uig;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lc8/uig;->stopAuth()Z

    return-void
.end method

.method public final removeAllListeners()V
    .locals 1

    iget-object v0, p0, Lc8/uig;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final removeListener(Lc8/tig;)V
    .locals 1

    iget-object v0, p0, Lc8/uig;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final stopAuth()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc8/uig;->i:Lc8/yig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/uig;->i:Lc8/yig;

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lc8/uig;->i:Lc8/yig;

    invoke-virtual {v0}, Lc8/yig;->a()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopAuth fail, ex = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0
.end method
