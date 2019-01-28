.class public final Lc8/ydf;
.super Ljava/lang/Object;
.source "PendingPost.java"


# static fields
.field private static final pendingPostPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/ydf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field callback:Lc8/gdf;

.field event:Lc8/fdf;

.field next:Lc8/ydf;

.field subscription:Lc8/Bdf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/ydf;->pendingPostPool:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lc8/fdf;Lc8/Bdf;Lc8/gdf;)V
    .locals 0
    .param p1, "event"    # Lc8/fdf;
    .param p2, "subscription"    # Lc8/Bdf;
    .param p3, "callback"    # Lc8/gdf;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lc8/ydf;->event:Lc8/fdf;

    .line 17
    iput-object p2, p0, Lc8/ydf;->subscription:Lc8/Bdf;

    .line 18
    iput-object p3, p0, Lc8/ydf;->callback:Lc8/gdf;

    .line 19
    return-void
.end method

.method static obtainPendingPost(Lc8/Bdf;Lc8/fdf;Lc8/gdf;)Lc8/ydf;
    .locals 5
    .param p0, "subscription"    # Lc8/Bdf;
    .param p1, "event"    # Lc8/fdf;
    .param p2, "callback"    # Lc8/gdf;

    .prologue
    .line 22
    sget-object v3, Lc8/ydf;->pendingPostPool:Ljava/util/List;

    monitor-enter v3

    .line 23
    :try_start_0
    sget-object v2, Lc8/ydf;->pendingPostPool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 24
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 25
    sget-object v2, Lc8/ydf;->pendingPostPool:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ydf;

    .line 26
    .local v0, "pendingPost":Lc8/ydf;
    iput-object p1, v0, Lc8/ydf;->event:Lc8/fdf;

    .line 27
    iput-object p0, v0, Lc8/ydf;->subscription:Lc8/Bdf;

    .line 28
    iput-object p2, v0, Lc8/ydf;->callback:Lc8/gdf;

    .line 29
    const/4 v2, 0x0

    iput-object v2, v0, Lc8/ydf;->next:Lc8/ydf;

    .line 30
    monitor-exit v3

    .line 33
    .end local v0    # "pendingPost":Lc8/ydf;
    :goto_0
    return-object v0

    .line 32
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    new-instance v0, Lc8/ydf;

    invoke-direct {v0, p1, p0, p2}, Lc8/ydf;-><init>(Lc8/fdf;Lc8/Bdf;Lc8/gdf;)V

    goto :goto_0

    .line 32
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static releasePendingPost(Lc8/ydf;)V
    .locals 3
    .param p0, "pendingPost"    # Lc8/ydf;

    .prologue
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lc8/ydf;->event:Lc8/fdf;

    .line 38
    iput-object v0, p0, Lc8/ydf;->subscription:Lc8/Bdf;

    .line 39
    iput-object v0, p0, Lc8/ydf;->callback:Lc8/gdf;

    .line 40
    iput-object v0, p0, Lc8/ydf;->next:Lc8/ydf;

    .line 41
    sget-object v1, Lc8/ydf;->pendingPostPool:Ljava/util/List;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lc8/ydf;->pendingPostPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_0

    .line 44
    sget-object v0, Lc8/ydf;->pendingPostPool:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
