.class public Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "FixedSizeLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1ef50e388fb48819L


# instance fields
.field private lock:Ljava/lang/Object;

.field private maxSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    .local p0, "this":Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;, "Landroid/taobao/windvane/util/FixedSizeLinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->maxSize:J

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->lock:Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 27
    .local p0, "this":Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;, "Landroid/taobao/windvane/util/FixedSizeLinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->maxSize:J

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->lock:Ljava/lang/Object;

    .line 28
    iput-wide p1, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->maxSize:J

    .line 29
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;, "Landroid/taobao/windvane/util/FixedSizeLinkedHashMap<TK;TV;>;"
    iget-object v1, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMaxSize()J
    .locals 2

    .prologue
    .line 36
    .local p0, "this":Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;, "Landroid/taobao/windvane/util/FixedSizeLinkedHashMap<TK;TV;>;"
    iget-wide v0, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->maxSize:J

    return-wide v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;, "Landroid/taobao/windvane/util/FixedSizeLinkedHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;, "Landroid/taobao/windvane/util/FixedSizeLinkedHashMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->size()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaxSize(J)V
    .locals 1
    .param p1, "maxSize"    # J

    .prologue
    .line 32
    .local p0, "this":Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;, "Landroid/taobao/windvane/util/FixedSizeLinkedHashMap<TK;TV;>;"
    iput-wide p1, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->maxSize:J

    .line 33
    return-void
.end method
