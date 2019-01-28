.class public Lc8/bGo;
.super Ljava/lang/Object;
.source "VipManagerPool.java"


# static fields
.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/RFo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/bGo;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized add(Lc8/RFo;)V
    .locals 2
    .param p0, "manager"    # Lc8/RFo;

    .prologue
    .line 14
    const-class v1, Lc8/bGo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/bGo;->list:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    sget-object v0, Lc8/bGo;->list:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_0
    monitor-exit v1

    return-void

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static contains(Lc8/RFo;)Z
    .locals 1
    .param p0, "manager"    # Lc8/RFo;

    .prologue
    .line 20
    sget-object v0, Lc8/bGo;->list:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized release()V
    .locals 4

    .prologue
    .line 31
    const-class v2, Lc8/bGo;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lc8/bGo;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "manager":Lc8/RFo;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "manager":Lc8/RFo;
    check-cast v0, Lc8/RFo;

    .line 32
    .restart local v0    # "manager":Lc8/RFo;
    invoke-virtual {v0}, Lc8/RFo;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 34
    :cond_0
    :try_start_1
    sget-object v1, Lc8/bGo;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    monitor-exit v2

    return-void
.end method
