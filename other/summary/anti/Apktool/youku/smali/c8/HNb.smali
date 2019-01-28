.class public Lc8/HNb;
.super Ljava/lang/Object;
.source "KaleidoscopeCacheCenter.java"


# static fields
.field private static kaleidoscopeCacheCenter:Lc8/HNb;


# instance fields
.field private kaleidoscopeCacheHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/GNb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/HNb;->kaleidoscopeCacheHashMap:Ljava/util/HashMap;

    .line 32
    return-void
.end method

.method public static getInstance()Lc8/HNb;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lc8/HNb;->kaleidoscopeCacheCenter:Lc8/HNb;

    if-nez v0, :cond_0

    .line 23
    const-class v1, Lc8/HNb;

    monitor-enter v1

    .line 24
    :try_start_0
    new-instance v0, Lc8/HNb;

    invoke-direct {v0}, Lc8/HNb;-><init>()V

    sput-object v0, Lc8/HNb;->kaleidoscopeCacheCenter:Lc8/HNb;

    .line 25
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_0
    sget-object v0, Lc8/HNb;->kaleidoscopeCacheCenter:Lc8/HNb;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Lc8/SNb;
    .locals 1
    .param p1, "typeCode"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;

    .prologue
    .line 45
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    const-string/jumbo p2, "globe"

    .line 48
    :cond_1
    iget-object v0, p0, Lc8/HNb;->kaleidoscopeCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lc8/HNb;->kaleidoscopeCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/GNb;

    invoke-virtual {v0, p1}, Lc8/GNb;->get(Ljava/lang/String;)Lc8/SNb;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCached(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "typeCode"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;

    .prologue
    .line 67
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    const-string/jumbo p2, "globe"

    .line 70
    :cond_1
    iget-object v0, p0, Lc8/HNb;->kaleidoscopeCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lc8/HNb;->kaleidoscopeCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/GNb;

    invoke-virtual {v0, p1}, Lc8/GNb;->isCached(Ljava/lang/String;)Z

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lc8/SNb;Ljava/lang/String;)V
    .locals 2
    .param p1, "typeCode"    # Ljava/lang/String;
    .param p2, "kaleidoView"    # Lc8/SNb;
    .param p3, "groupName"    # Ljava/lang/String;

    .prologue
    .line 35
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    const-string/jumbo p3, "globe"

    .line 38
    :cond_1
    iget-object v0, p0, Lc8/HNb;->kaleidoscopeCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 39
    iget-object v0, p0, Lc8/HNb;->kaleidoscopeCacheHashMap:Ljava/util/HashMap;

    new-instance v1, Lc8/GNb;

    invoke-direct {v1}, Lc8/GNb;-><init>()V

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_2
    iget-object v0, p0, Lc8/HNb;->kaleidoscopeCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/GNb;

    invoke-virtual {v0, p1, p2}, Lc8/GNb;->put(Ljava/lang/String;Lc8/SNb;)V

    .line 42
    return-void
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)Lc8/SNb;
    .locals 1
    .param p1, "typeCode"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;

    .prologue
    .line 56
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    const-string/jumbo p2, "globe"

    .line 59
    :cond_1
    iget-object v0, p0, Lc8/HNb;->kaleidoscopeCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lc8/HNb;->kaleidoscopeCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/GNb;

    invoke-virtual {v0, p1}, Lc8/GNb;->remove(Ljava/lang/String;)Lc8/SNb;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
