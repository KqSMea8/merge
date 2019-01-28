.class public abstract Lc8/Jyq;
.super Lc8/Lyq;
.source "BaseLinkedQueue.java"


# annotations
.annotation build Lc8/xyq;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Lyq",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final C_NODE_OFFSET:J


# instance fields
.field protected consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;
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
    .line 57
    const-class v0, Lc8/Jyq;

    const-string/jumbo v1, "consumerNode"

    invoke-static {v0, v1}, Lc8/vzq;->addressOf(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lc8/Jyq;->C_NODE_OFFSET:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    .local p0, "this":Lc8/Jyq;, "Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef<TE;>;"
    invoke-direct {p0}, Lc8/Lyq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final lpConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lc8/Jyq;, "Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef<TE;>;"
    iget-object v0, p0, Lc8/Jyq;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    return-object v0
.end method

.method protected final lvConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lc8/Jyq;, "Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef<TE;>;"
    sget-object v0, Lc8/vzq;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lc8/Jyq;->C_NODE_OFFSET:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/atomic/LinkedQueueNode;

    return-object v0
.end method

.method protected final spConsumerNode(Lrx/internal/util/atomic/LinkedQueueNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lc8/Jyq;, "Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef<TE;>;"
    .local p1, "node":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    iput-object p1, p0, Lc8/Jyq;->consumerNode:Lrx/internal/util/atomic/LinkedQueueNode;

    .line 61
    return-void
.end method
