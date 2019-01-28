.class public final Lc8/Ovq;
.super Ljava/lang/Object;
.source "OperatorWindowWithObservableFactory.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Mvq;,
        Lc8/Nvq;
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
.field final otherFactory:Lc8/Hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<+TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/Ovq;->NEXT_SUBJECT:Ljava/lang/Object;

    .line 42
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    sput-object v0, Lc8/Ovq;->NL:Lc8/cpq;

    return-void
.end method

.method public constructor <init>(Lc8/Hnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<+TU;>;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lc8/Ovq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory<TT;TU;>;"
    .local p1, "otherFactory":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/Observable<+TU;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lc8/Ovq;->otherFactory:Lc8/Hnq;

    .line 46
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 2
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
    .line 51
    .local p0, "this":Lc8/Ovq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory<TT;TU;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    new-instance v0, Lc8/Nvq;

    iget-object v1, p0, Lc8/Ovq;->otherFactory:Lc8/Hnq;

    invoke-direct {v0, p1, v1}, Lc8/Nvq;-><init>(Lc8/Omq;Lc8/Hnq;)V

    .line 53
    .local v0, "sub":Lc8/Nvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 55
    invoke-virtual {v0}, Lc8/Nvq;->replaceWindow()V

    .line 57
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    .local p0, "this":Lc8/Ovq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory<TT;TU;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Ovq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
