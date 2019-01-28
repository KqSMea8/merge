.class public Lc8/oZn;
.super Ljava/util/Observable;
.source "DataChanger.java"


# static fields
.field private static mInstance:Lc8/oZn;


# instance fields
.field private final context:Landroid/content/Context;

.field private mOperateEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/us/baseframework/download/entity/DownloadEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 27
    iput-object p1, p0, Lc8/oZn;->context:Landroid/content/Context;

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lc8/oZn;->mOperateEntries:Ljava/util/LinkedHashMap;

    .line 29
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lc8/oZn;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-class v1, Lc8/oZn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/oZn;->mInstance:Lc8/oZn;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lc8/oZn;

    invoke-direct {v0, p0}, Lc8/oZn;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/oZn;->mInstance:Lc8/oZn;

    .line 35
    :cond_0
    sget-object v0, Lc8/oZn;->mInstance:Lc8/oZn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addToOperatedEntryMap(Ljava/lang/String;Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    .line 67
    iget-object v0, p0, Lc8/oZn;->mOperateEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public containsDownloadEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lc8/oZn;->mOperateEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public queryAllRecoverableEntries()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/us/baseframework/download/entity/DownloadEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "mRecoverableEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/us/baseframework/download/entity/DownloadEntry;>;"
    iget-object v2, p0, Lc8/oZn;->mOperateEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/us/baseframework/download/entity/DownloadEntry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    iget-object v2, v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    sget-object v4, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->pause:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    if-ne v2, v4, :cond_0

    .line 49
    if-nez v1, :cond_1

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "mRecoverableEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/us/baseframework/download/entity/DownloadEntry;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .restart local v1    # "mRecoverableEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/us/baseframework/download/entity/DownloadEntry;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/us/baseframework/download/entity/DownloadEntry;>;"
    :cond_2
    return-object v1
.end method

.method public queryDownloadEntryByUrl(Ljava/lang/String;)Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lc8/oZn;->context:Landroid/content/Context;

    invoke-static {v0}, Lc8/lZn;->getInstance(Landroid/content/Context;)Lc8/lZn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/lZn;->queryByUrl(Ljava/lang/String;)Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    move-result-object v0

    return-object v0
.end method

.method public updateStatus(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/oZn;->mOperateEntries:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lc8/oZn;->context:Landroid/content/Context;

    invoke-static {v0}, Lc8/lZn;->getInstance(Landroid/content/Context;)Lc8/lZn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/lZn;->newOrUpdate(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    .line 41
    invoke-virtual {p0}, Lc8/oZn;->setChanged()V

    .line 42
    invoke-virtual {p0, p1}, Lc8/oZn;->notifyObservers(Ljava/lang/Object;)V

    .line 43
    return-void
.end method
