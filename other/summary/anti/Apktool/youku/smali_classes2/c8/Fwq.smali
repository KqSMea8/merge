.class public Lc8/Fwq;
.super Lc8/Nmq;
.source "SingleOperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gwq;->call(Lc8/Nmq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Nmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Gwq;

.field final synthetic val$j:I

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$subscriber:Lc8/Nmq;

.field final synthetic val$values:[Ljava/lang/Object;

.field final synthetic val$wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lc8/Gwq;[Ljava/lang/Object;ILjava/util/concurrent/atomic/AtomicInteger;Lc8/Nmq;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lc8/Fwq;->this$0:Lc8/Gwq;

    iput-object p2, p0, Lc8/Fwq;->val$values:[Ljava/lang/Object;

    iput p3, p0, Lc8/Fwq;->val$j:I

    iput-object p4, p0, Lc8/Fwq;->val$wip:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lc8/Fwq;->val$subscriber:Lc8/Nmq;

    iput-object p6, p0, Lc8/Fwq;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lc8/Nmq;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    iget-object v0, p0, Lc8/Fwq;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lc8/Fwq;->val$subscriber:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lc8/Fwq;->val$values:[Ljava/lang/Object;

    iget v3, p0, Lc8/Fwq;->val$j:I

    aput-object p1, v2, v3

    .line 61
    iget-object v2, p0, Lc8/Fwq;->val$wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_0

    .line 65
    :try_start_0
    iget-object v2, p0, Lc8/Fwq;->this$0:Lc8/Gwq;

    iget-object v2, v2, Lc8/Gwq;->val$zipper:Lc8/Rnq;

    iget-object v3, p0, Lc8/Fwq;->val$values:[Ljava/lang/Object;

    invoke-interface {v2, v3}, Lc8/Rnq;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 72
    .local v1, "r":Ljava/lang/Object;, "TR;"
    iget-object v2, p0, Lc8/Fwq;->val$subscriber:Lc8/Nmq;

    invoke-virtual {v2, v1}, Lc8/Nmq;->onSuccess(Ljava/lang/Object;)V

    .line 74
    .end local v1    # "r":Ljava/lang/Object;, "TR;"
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 68
    invoke-virtual {p0, v0}, Lc8/Fwq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
