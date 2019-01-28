.class public final Lc8/Utq;
.super Ljava/lang/Object;
.source "OperatorSerialize.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ttq;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    .local p0, "this":Lc8/Utq;, "Lrx/internal/operators/OperatorSerialize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static instance()Lc8/Utq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/Utq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lc8/Ttq;->INSTANCE:Lc8/Utq;

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
    .line 43
    .local p0, "this":Lc8/Utq;, "Lrx/internal/operators/OperatorSerialize<TT;>;"
    .local p1, "s":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/qAq;

    new-instance v1, Lc8/Stq;

    invoke-direct {v1, p0, p1, p1}, Lc8/Stq;-><init>(Lc8/Utq;Lc8/Omq;Lc8/Omq;)V

    invoke-direct {v0, v1}, Lc8/qAq;-><init>(Lc8/Omq;)V

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22
    .local p0, "this":Lc8/Utq;, "Lrx/internal/operators/OperatorSerialize<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Utq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
