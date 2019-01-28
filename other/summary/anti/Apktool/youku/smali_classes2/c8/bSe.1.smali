.class public final Lc8/bSe;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lc8/wUe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private body:Lc8/tWp;

.field private cacheOut:Lc8/tWp;

.field private done:Z

.field private final editor:Lc8/kTe;

.field final synthetic this$0:Lc8/fSe;


# direct methods
.method public constructor <init>(Lc8/fSe;Lc8/kTe;)V
    .locals 2
    .param p2, "editor"    # Lc8/kTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    iput-object p1, p0, Lc8/bSe;->this$0:Lc8/fSe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p2, p0, Lc8/bSe;->editor:Lc8/kTe;

    .line 431
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lc8/kTe;->newSink(I)Lc8/tWp;

    move-result-object v0

    iput-object v0, p0, Lc8/bSe;->cacheOut:Lc8/tWp;

    .line 432
    new-instance v0, Lc8/aSe;

    iget-object v1, p0, Lc8/bSe;->cacheOut:Lc8/tWp;

    invoke-direct {v0, p0, v1, p1, p2}, Lc8/aSe;-><init>(Lc8/bSe;Lc8/tWp;Lc8/fSe;Lc8/kTe;)V

    iput-object v0, p0, Lc8/bSe;->body:Lc8/tWp;

    .line 445
    return-void
.end method

.method static synthetic access$700(Lc8/bSe;)Z
    .locals 1
    .param p0, "x0"    # Lc8/bSe;

    .prologue
    .line 423
    iget-boolean v0, p0, Lc8/bSe;->done:Z

    return v0
.end method

.method static synthetic access$702(Lc8/bSe;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/bSe;
    .param p1, "x1"    # Z

    .prologue
    .line 423
    iput-boolean p1, p0, Lc8/bSe;->done:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 448
    iget-object v1, p0, Lc8/bSe;->this$0:Lc8/fSe;

    monitor-enter v1

    .line 449
    :try_start_0
    iget-boolean v0, p0, Lc8/bSe;->done:Z

    if-eqz v0, :cond_0

    .line 450
    monitor-exit v1

    .line 460
    :goto_0
    return-void

    .line 452
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/bSe;->done:Z

    .line 453
    iget-object v0, p0, Lc8/bSe;->this$0:Lc8/fSe;

    invoke-static {v0}, Lc8/fSe;->access$908(Lc8/fSe;)I

    .line 454
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    iget-object v0, p0, Lc8/bSe;->cacheOut:Lc8/tWp;

    invoke-static {v0}, Lc8/ATe;->closeQuietly(Ljava/io/Closeable;)V

    .line 457
    :try_start_1
    iget-object v0, p0, Lc8/bSe;->editor:Lc8/kTe;

    invoke-virtual {v0}, Lc8/kTe;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public body()Lc8/tWp;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lc8/bSe;->body:Lc8/tWp;

    return-object v0
.end method
