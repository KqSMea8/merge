.class public final Lc8/bsq;
.super Lc8/Omq;
.source "OperatorDoOnRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/csq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParentSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final child:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/Omq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lc8/bsq;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 59
    iput-object p1, p0, Lc8/bsq;->child:Lc8/Omq;

    .line 60
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/bsq;->request(J)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lc8/bsq;J)V
    .locals 1
    .param p0, "x0"    # Lc8/bsq;
    .param p1, "x1"    # J

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lc8/bsq;->requestMore(J)V

    return-void
.end method

.method private requestMore(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 64
    .local p0, "this":Lc8/bsq;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/bsq;->request(J)V

    .line 65
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lc8/bsq;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lc8/bsq;->child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 70
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    .local p0, "this":Lc8/bsq;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lc8/bsq;->child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lc8/bsq;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/bsq;->child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 80
    return-void
.end method
