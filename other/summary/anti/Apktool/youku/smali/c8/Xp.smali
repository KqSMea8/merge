.class public Lc8/Xp;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Lc8/eq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/aq;->getBackgroundProxy(Lc8/eq;)Lc8/eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/eq",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final LOAD_TILE:I = 0x3

.field static final RECYCLE_TILE:I = 0x4

.field static final REFRESH:I = 0x1

.field static final UPDATE_RANGE:I = 0x2


# instance fields
.field private mBackgroundRunnable:Ljava/lang/Runnable;

.field mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final mQueue:Lc8/Yp;

.field final synthetic this$0:Lc8/aq;

.field final synthetic val$callback:Lc8/eq;


# direct methods
.method constructor <init>(Lc8/aq;Lc8/eq;)V
    .locals 2
    .param p1, "this$0"    # Lc8/aq;

    .prologue
    .line 87
    .local p0, "this":Lc8/Xp;, "Landroid/support/v7/util/MessageThreadUtil$2;"
    iput-object p1, p0, Lc8/Xp;->this$0:Lc8/aq;

    iput-object p2, p0, Lc8/Xp;->val$callback:Lc8/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lc8/Yp;

    invoke-direct {v0}, Lc8/Yp;-><init>()V

    iput-object v0, p0, Lc8/Xp;->mQueue:Lc8/Yp;

    .line 89
    invoke-static {}, Lc8/Ui;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lc8/Xp;->mExecutor:Ljava/util/concurrent/Executor;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/Xp;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    new-instance v0, Lc8/Wp;

    invoke-direct {v0, p0}, Lc8/Wp;-><init>(Lc8/Xp;)V

    iput-object v0, p0, Lc8/Xp;->mBackgroundRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private maybeExecuteBackgroundRunnable()V
    .locals 3

    .prologue
    .line 130
    .local p0, "this":Lc8/Xp;, "Landroid/support/v7/util/MessageThreadUtil$2;"
    iget-object v0, p0, Lc8/Xp;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lc8/Xp;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lc8/Xp;->mBackgroundRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    :cond_0
    return-void
.end method

.method private sendMessage(Lc8/Zp;)V
    .locals 1
    .param p1, "msg"    # Lc8/Zp;

    .prologue
    .line 120
    .local p0, "this":Lc8/Xp;, "Landroid/support/v7/util/MessageThreadUtil$2;"
    iget-object v0, p0, Lc8/Xp;->mQueue:Lc8/Yp;

    invoke-virtual {v0, p1}, Lc8/Yp;->sendMessage(Lc8/Zp;)V

    .line 121
    invoke-direct {p0}, Lc8/Xp;->maybeExecuteBackgroundRunnable()V

    .line 122
    return-void
.end method

.method private sendMessageAtFrontOfQueue(Lc8/Zp;)V
    .locals 1
    .param p1, "msg"    # Lc8/Zp;

    .prologue
    .line 125
    .local p0, "this":Lc8/Xp;, "Landroid/support/v7/util/MessageThreadUtil$2;"
    iget-object v0, p0, Lc8/Xp;->mQueue:Lc8/Yp;

    invoke-virtual {v0, p1}, Lc8/Yp;->sendMessageAtFrontOfQueue(Lc8/Zp;)V

    .line 126
    invoke-direct {p0}, Lc8/Xp;->maybeExecuteBackgroundRunnable()V

    .line 127
    return-void
.end method


# virtual methods
.method public loadTile(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "scrollHint"    # I

    .prologue
    .line 111
    .local p0, "this":Lc8/Xp;, "Landroid/support/v7/util/MessageThreadUtil$2;"
    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Lc8/Zp;->obtainMessage(III)Lc8/Zp;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Xp;->sendMessage(Lc8/Zp;)V

    .line 112
    return-void
.end method

.method public recycleTile(Lc8/hq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lc8/Xp;, "Landroid/support/v7/util/MessageThreadUtil$2;"
    .local p1, "tile":Lc8/hq;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lc8/Zp;->obtainMessage(IILjava/lang/Object;)Lc8/Zp;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Xp;->sendMessage(Lc8/Zp;)V

    .line 117
    return-void
.end method

.method public refresh(I)V
    .locals 2
    .param p1, "generation"    # I

    .prologue
    .line 99
    .local p0, "this":Lc8/Xp;, "Landroid/support/v7/util/MessageThreadUtil$2;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lc8/Zp;->obtainMessage(IILjava/lang/Object;)Lc8/Zp;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Xp;->sendMessageAtFrontOfQueue(Lc8/Zp;)V

    .line 100
    return-void
.end method

.method public updateRange(IIIII)V
    .locals 7
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I
    .param p3, "extRangeStart"    # I
    .param p4, "extRangeEnd"    # I
    .param p5, "scrollHint"    # I

    .prologue
    .line 105
    .local p0, "this":Lc8/Xp;, "Landroid/support/v7/util/MessageThreadUtil$2;"
    const/4 v0, 0x2

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lc8/Zp;->obtainMessage(IIIIIILjava/lang/Object;)Lc8/Zp;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Xp;->sendMessageAtFrontOfQueue(Lc8/Zp;)V

    .line 107
    return-void
.end method
