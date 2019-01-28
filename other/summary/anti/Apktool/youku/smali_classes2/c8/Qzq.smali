.class public Lc8/Qzq;
.super Ljava/lang/Object;
.source "BlockingObservable.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Tzq;->subscribe(Lc8/Omq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Tzq;

.field final synthetic val$queue:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lc8/Tzq;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .prologue
    .line 586
    .local p0, "this":Lc8/Qzq;, "Lrx/observables/BlockingObservable.7;"
    iput-object p1, p0, Lc8/Qzq;->this$0:Lc8/Tzq;

    iput-object p2, p0, Lc8/Qzq;->val$queue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 589
    .local p0, "this":Lc8/Qzq;, "Lrx/observables/BlockingObservable.7;"
    iget-object v0, p0, Lc8/Qzq;->val$queue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lc8/Tzq;->UNSUBSCRIBE:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 590
    return-void
.end method
