.class public final Lc8/Lqq;
.super Lc8/bpq;
.source "OnSubscribeTakeLastOne.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Mqq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TakeLastOneSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/bpq",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/Lqq;->EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc8/Omq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lc8/Lqq;, "Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber<TT;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lc8/bpq;-><init>(Lc8/Omq;)V

    .line 42
    sget-object v0, Lc8/Lqq;->EMPTY:Ljava/lang/Object;

    iput-object v0, p0, Lc8/Lqq;->value:Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 53
    .local p0, "this":Lc8/Lqq;, "Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Lqq;->value:Ljava/lang/Object;

    .line 54
    .local v0, "o":Ljava/lang/Object;
    sget-object v1, Lc8/Lqq;->EMPTY:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lc8/Lqq;->complete()V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0, v0}, Lc8/Lqq;->complete(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lc8/Lqq;, "Lrx/internal/operators/OnSubscribeTakeLastOne$TakeLastOneSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lc8/Lqq;->value:Ljava/lang/Object;

    .line 48
    return-void
.end method
