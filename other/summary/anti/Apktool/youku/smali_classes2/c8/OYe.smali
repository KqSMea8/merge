.class public Lc8/OYe;
.super Ljava/lang/Object;
.source "AliDB.java"

# interfaces
.implements Lc8/sZe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QYe;->inTransaction(Lc8/qZe;)Lc8/UYe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/QYe;

.field final synthetic val$execResult:[Lc8/UYe;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lc8/QYe;[Lc8/UYe;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lc8/OYe;->this$0:Lc8/QYe;

    iput-object p2, p0, Lc8/OYe;->val$execResult:[Lc8/UYe;

    iput-object p3, p0, Lc8/OYe;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecDone(Lc8/UYe;)V
    .locals 2
    .param p1, "result"    # Lc8/UYe;

    .prologue
    .line 417
    iget-object v0, p0, Lc8/OYe;->val$execResult:[Lc8/UYe;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 418
    iget-object v0, p0, Lc8/OYe;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 419
    return-void
.end method
