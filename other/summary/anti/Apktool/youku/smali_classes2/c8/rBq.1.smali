.class public Lc8/rBq;
.super Lc8/Nmq;
.source "BlockingSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sBq;->value()Ljava/lang/Object;
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
.field final synthetic this$0:Lc8/sBq;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$returnException:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$returnItem:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lc8/sBq;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 76
    .local p0, "this":Lc8/rBq;, "Lrx/singles/BlockingSingle.1;"
    iput-object p1, p0, Lc8/rBq;->this$0:Lc8/sBq;

    iput-object p2, p0, Lc8/rBq;->val$returnItem:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lc8/rBq;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lc8/rBq;->val$returnException:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lc8/Nmq;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    .local p0, "this":Lc8/rBq;, "Lrx/singles/BlockingSingle.1;"
    iget-object v0, p0, Lc8/rBq;->val$returnException:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lc8/rBq;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 87
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lc8/rBq;, "Lrx/singles/BlockingSingle.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/rBq;->val$returnItem:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lc8/rBq;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 81
    return-void
.end method
