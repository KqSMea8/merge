.class public Lc8/Xzq;
.super Lc8/Vlq;
.source "GroupedObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Vlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lc8/Rlq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lc8/Rlq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lc8/Xzq;, "Lrx/observables/GroupedObservable<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "onSubscribe":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    invoke-direct {p0, p2}, Lc8/Vlq;-><init>(Lc8/Rlq;)V

    .line 97
    iput-object p1, p0, Lc8/Xzq;->key:Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public static create(Ljava/lang/Object;Lc8/Rlq;)Lc8/Xzq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lc8/Rlq",
            "<TT;>;)",
            "Lc8/Xzq",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "f":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    new-instance v0, Lc8/Xzq;

    invoke-direct {v0, p0, p1}, Lc8/Xzq;-><init>(Ljava/lang/Object;Lc8/Rlq;)V

    return-object v0
.end method

.method public static from(Ljava/lang/Object;Lc8/Vlq;)Lc8/Xzq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lc8/Vlq",
            "<TT;>;)",
            "Lc8/Xzq",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "o":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Xzq;

    new-instance v1, Lc8/Wzq;

    invoke-direct {v1, p1}, Lc8/Wzq;-><init>(Lc8/Vlq;)V

    invoke-direct {v0, p0, v1}, Lc8/Xzq;-><init>(Ljava/lang/Object;Lc8/Rlq;)V

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lc8/Xzq;, "Lrx/observables/GroupedObservable<TK;TT;>;"
    iget-object v0, p0, Lc8/Xzq;->key:Ljava/lang/Object;

    return-object v0
.end method
