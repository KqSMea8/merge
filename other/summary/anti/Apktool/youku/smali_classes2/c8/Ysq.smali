.class public Lc8/Ysq;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureDrop.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Xsq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final onDrop:Lc8/inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/inq",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lc8/Ysq;, "Lrx/internal/operators/OperatorOnBackpressureDrop<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/Ysq;-><init>(Lc8/inq;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lc8/inq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lc8/Ysq;, "Lrx/internal/operators/OperatorOnBackpressureDrop<TT;>;"
    .local p1, "onDrop":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lc8/Ysq;->onDrop:Lc8/inq;

    .line 50
    return-void
.end method

.method public static instance()Lc8/Ysq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/Ysq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lc8/Xsq;->INSTANCE:Lc8/Ysq;

    return-object v0
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lc8/Ysq;, "Lrx/internal/operators/OperatorOnBackpressureDrop<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 56
    .local v0, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v1, Lc8/Vsq;

    invoke-direct {v1, p0, v0}, Lc8/Vsq;-><init>(Lc8/Ysq;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-virtual {p1, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 64
    new-instance v1, Lc8/Wsq;

    invoke-direct {v1, p0, p1, p1, v0}, Lc8/Wsq;-><init>(Lc8/Ysq;Lc8/Omq;Lc8/Omq;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-object v1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25
    .local p0, "this":Lc8/Ysq;, "Lrx/internal/operators/OperatorOnBackpressureDrop<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Ysq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
