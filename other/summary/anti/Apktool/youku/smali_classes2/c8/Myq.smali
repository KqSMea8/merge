.class public abstract Lc8/Myq;
.super Lc8/Kyq;
.source "BaseLinkedQueue.java"


# annotations
.annotation build Lc8/xyq;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Kyq",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final P_NODE_OFFSET:J


# instance fields
.field protected producerNode:Lrx/internal/util/atomic/LinkedQueueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-class v0, Lc8/Myq;

    const-string/jumbo v1, "producerNode"

    invoke-static {v0, v1}, Lc8/vzq;->addressOf(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lc8/Myq;->P_NODE_OFFSET:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    .local p0, "this":Lc8/Myq;, "Lrx/internal/util/unsafe/BaseLinkedQueueProducerNodeRef<TE;>;"
    invoke-direct {p0}, Lc8/Kyq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final lpProducerNode()Lrx/internal/util/atomic/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lc8/Myq;, "Lrx/internal/util/unsafe/BaseLinkedQueueProducerNodeRef<TE;>;"
    iget-object v0, p0, Lc8/Myq;->producerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    return-object v0
.end method

.method protected final lvProducerNode()Lrx/internal/util/atomic/LinkedQueueNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lc8/Myq;, "Lrx/internal/util/unsafe/BaseLinkedQueueProducerNodeRef<TE;>;"
    sget-object v0, Lc8/vzq;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lc8/Myq;->P_NODE_OFFSET:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/atomic/LinkedQueueNode;

    return-object v0
.end method

.method protected final spProducerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lc8/Myq;, "Lrx/internal/util/unsafe/BaseLinkedQueueProducerNodeRef<TE;>;"
    .local p1, "node":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    iput-object p1, p0, Lc8/Myq;->producerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    .line 38
    return-void
.end method
