.class public final Lrx/internal/operators/BufferUntilSubscriber$State;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "BufferUntilSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Coq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lc8/Wlq",
        "<-TT;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6f6495c06abce580L


# instance fields
.field public final buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public emitting:Z
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public final guard:Ljava/lang/Object;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public final nl:Lc8/cpq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$State;, "Lrx/internal/operators/BufferUntilSubscriber$State<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber$State;->guard:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber$State;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 74
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lc8/cpq;

    return-void
.end method


# virtual methods
.method public casObserverRef(Lc8/Wlq;Lc8/Wlq;)Z
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Wlq",
            "<-TT;>;",
            "Lc8/Wlq",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$State;, "Lrx/internal/operators/BufferUntilSubscriber$State<TT;>;"
    .local p1, "expected":Lc8/Wlq;, "Lrx/Observer<-TT;>;"
    .local p2, "next":Lc8/Wlq;, "Lrx/Observer<-TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/BufferUntilSubscriber$State;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
