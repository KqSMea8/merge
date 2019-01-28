.class public Lc8/Myf;
.super Ljava/lang/Object;
.source "ScheduledActionPool.java"

# interfaces
.implements Lc8/KNf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/KNf",
        "<",
        "Lc8/Kyf;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SIZE:I = 0x32


# instance fields
.field private final mMaxSize:I

.field private final mRecycledQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lc8/Kyf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lc8/Myf;-><init>(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lc8/Myf;->mMaxSize:I

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lc8/Myf;->mRecycledQueue:Ljava/util/Queue;

    .line 21
    return-void
.end method


# virtual methods
.method public offer()Lc8/Kyf;
    .locals 2

    .prologue
    .line 26
    iget-object v1, p0, Lc8/Myf;->mRecycledQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Kyf;

    .line 28
    .local v0, "reuseAction":Lc8/Kyf;
    return-object v0
.end method

.method public bridge synthetic offer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lc8/Myf;->offer()Lc8/Kyf;

    move-result-object v0

    return-object v0
.end method

.method public recycle(Lc8/Kyf;)Z
    .locals 2
    .param p1, "element"    # Lc8/Kyf;

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Lc8/Kyf;->reset()Lc8/Kyf;

    .line 37
    :cond_0
    iget-object v0, p0, Lc8/Myf;->mRecycledQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lc8/Myf;->mMaxSize:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lc8/Myf;->mRecycledQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic recycle(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lc8/Kyf;

    invoke-virtual {p0, p1}, Lc8/Myf;->recycle(Lc8/Kyf;)Z

    move-result v0

    return v0
.end method
