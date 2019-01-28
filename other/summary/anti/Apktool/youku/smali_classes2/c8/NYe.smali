.class public Lc8/NYe;
.super Ljava/lang/Object;
.source "AliDB.java"

# interfaces
.implements Lc8/tZe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QYe;->execUpdateExt(Ljava/lang/String;Ljava/lang/String;)Lc8/TYe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/QYe;

.field final synthetic val$execResult:[Lc8/TYe;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lc8/QYe;[Lc8/TYe;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lc8/NYe;->this$0:Lc8/QYe;

    iput-object p2, p0, Lc8/NYe;->val$execResult:[Lc8/TYe;

    iput-object p3, p0, Lc8/NYe;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecDone(Lc8/TYe;)V
    .locals 2
    .param p1, "result"    # Lc8/TYe;

    .prologue
    .line 395
    iget-object v0, p0, Lc8/NYe;->val$execResult:[Lc8/TYe;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 396
    iget-object v0, p0, Lc8/NYe;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 397
    return-void
.end method
