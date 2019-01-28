.class public final Lc8/Vuq;
.super Ljava/lang/Object;
.source "OperatorTakeWhile.java"

# interfaces
.implements Lc8/Tlq;


# annotations
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
.field final predicate:Lc8/Jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Jnq",
            "<-TT;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Inq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lc8/Vuq;, "Lrx/internal/operators/OperatorTakeWhile<TT;>;"
    .local p1, "underlying":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lc8/Tuq;

    invoke-direct {v0, p1}, Lc8/Tuq;-><init>(Lc8/Inq;)V

    invoke-direct {p0, v0}, Lc8/Vuq;-><init>(Lc8/Jnq;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lc8/Jnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Jnq",
            "<-TT;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lc8/Vuq;, "Lrx/internal/operators/OperatorTakeWhile<TT;>;"
    .local p1, "predicate":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lc8/Vuq;->predicate:Lc8/Jnq;

    .line 45
    return-void
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
    .line 49
    .local p0, "this":Lc8/Vuq;, "Lrx/internal/operators/OperatorTakeWhile<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/Uuq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p1}, Lc8/Uuq;-><init>(Lc8/Vuq;Lc8/Omq;ZLc8/Omq;)V

    .line 90
    .local v0, "s":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 91
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lc8/Vuq;, "Lrx/internal/operators/OperatorTakeWhile<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Vuq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
