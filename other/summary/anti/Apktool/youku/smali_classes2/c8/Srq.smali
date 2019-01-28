.class public final Lc8/Srq;
.super Ljava/lang/Object;
.source "OperatorDistinct.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Rrq;
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
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final keySelector:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Inq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;+TU;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lc8/Srq;, "Lrx/internal/operators/OperatorDistinct<TT;TU;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lc8/Srq;->keySelector:Lc8/Inq;

    .line 52
    return-void
.end method

.method public static instance()Lc8/Srq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/Srq",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lc8/Rrq;->INSTANCE:Lc8/Srq;

    return-object v0
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 1
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
    .line 56
    .local p0, "this":Lc8/Srq;, "Lrx/internal/operators/OperatorDistinct<TT;TU;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/Qrq;

    invoke-direct {v0, p0, p1, p1}, Lc8/Qrq;-><init>(Lc8/Srq;Lc8/Omq;Lc8/Omq;)V

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lc8/Srq;, "Lrx/internal/operators/OperatorDistinct<TT;TU;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Srq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
