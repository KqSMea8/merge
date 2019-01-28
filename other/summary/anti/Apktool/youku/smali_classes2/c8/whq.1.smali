.class public Lc8/whq;
.super Ljava/lang/Object;
.source "RxSupport.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zhq;->createRequestObservable(Lc8/yhq;)Lc8/Vlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zhq;

.field final synthetic val$invoker:Lc8/yhq;


# direct methods
.method constructor <init>(Lc8/zhq;Lc8/yhq;)V
    .locals 0
    .param p1, "this$0"    # Lc8/zhq;

    .prologue
    .line 32
    iput-object p1, p0, Lc8/whq;->this$0:Lc8/zhq;

    iput-object p2, p0, Lc8/whq;->val$invoker:Lc8/yhq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-Ljava/lang/Object;>;"
    new-instance v0, Lc8/ihq;

    invoke-direct {v0}, Lc8/ihq;-><init>()V

    .line 35
    .local v0, "interceptorTape":Lc8/ihq;
    iget-object v3, p0, Lc8/whq;->this$0:Lc8/zhq;

    invoke-static {v3}, Lc8/zhq;->access$000(Lc8/zhq;)Lc8/fhq;

    move-result-object v3

    invoke-interface {v3, v0}, Lc8/fhq;->intercept(Lc8/ehq;)V

    .line 37
    iget-object v3, p0, Lc8/whq;->this$0:Lc8/zhq;

    iget-object v4, p0, Lc8/whq;->val$invoker:Lc8/yhq;

    invoke-static {v3, p1, v4, v0}, Lc8/zhq;->access$100(Lc8/zhq;Lc8/Omq;Lc8/yhq;Lc8/ihq;)Ljava/lang/Runnable;

    move-result-object v1

    .line 38
    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/util/concurrent/FutureTask;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 41
    .local v2, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    invoke-static {v2}, Lc8/bCq;->from(Ljava/util/concurrent/Future;)Lc8/Pmq;

    move-result-object v3

    invoke-virtual {p1, v3}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 42
    iget-object v3, p0, Lc8/whq;->this$0:Lc8/zhq;

    invoke-static {v3}, Lc8/zhq;->access$200(Lc8/zhq;)Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lc8/Omq;

    invoke-virtual {p0, p1}, Lc8/whq;->call(Lc8/Omq;)V

    return-void
.end method
