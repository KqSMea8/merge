.class public final Lc8/Lvq;
.super Ljava/lang/Object;
.source "OperatorWindowWithObservable.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Jvq;,
        Lc8/Kvq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<",
        "Lc8/Vlq",
        "<TT;>;TT;>;"
    }
.end annotation


# static fields
.field static final NEXT_SUBJECT:Ljava/lang/Object;

.field static final NL:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final other:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/Lvq;->NEXT_SUBJECT:Ljava/lang/Object;

    .line 39
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    sput-object v0, Lc8/Lvq;->NL:Lc8/cpq;

    return-void
.end method

.method public constructor <init>(Lc8/Vlq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lc8/Lvq;, "Lrx/internal/operators/OperatorWindowWithObservable<TT;TU;>;"
    .local p1, "other":Lc8/Vlq;, "Lrx/Observable<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lc8/Lvq;->other:Lc8/Vlq;

    .line 43
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lc8/Lvq;, "Lrx/internal/operators/OperatorWindowWithObservable<TT;TU;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    new-instance v1, Lc8/Kvq;

    invoke-direct {v1, p1}, Lc8/Kvq;-><init>(Lc8/Omq;)V

    .line 49
    .local v1, "sub":Lc8/Kvq;, "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber<TT;>;"
    new-instance v0, Lc8/Jvq;

    invoke-direct {v0, v1}, Lc8/Jvq;-><init>(Lc8/Kvq;)V

    .line 51
    .local v0, "bs":Lc8/Jvq;, "Lrx/internal/operators/OperatorWindowWithObservable$BoundarySubscriber<TT;TU;>;"
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 52
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 54
    invoke-virtual {v1}, Lc8/Kvq;->replaceWindow()V

    .line 56
    iget-object v2, p0, Lc8/Lvq;->other:Lc8/Vlq;

    invoke-virtual {v2, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 58
    return-object v1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lc8/Lvq;, "Lrx/internal/operators/OperatorWindowWithObservable<TT;TU;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Lvq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
