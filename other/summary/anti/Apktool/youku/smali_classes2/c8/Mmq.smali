.class public Lc8/Mmq;
.super Ljava/lang/Object;
.source "Single.java"


# annotations
.annotation build Lc8/anq;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Lmq;,
        Lc8/Kmq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final onSubscribe:Lc8/Rlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Rlq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lc8/Kmq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Kmq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "f":Lc8/Kmq;, "Lrx/Single$OnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lc8/WAq;->onCreate(Lc8/Kmq;)Lc8/Kmq;

    move-result-object v0

    .line 70
    .local v0, "g":Lc8/Kmq;, "Lrx/Single$OnSubscribe<TT;>;"
    new-instance v1, Lc8/omq;

    invoke-direct {v1, p0, v0}, Lc8/omq;-><init>(Lc8/Mmq;Lc8/Kmq;)V

    iput-object v1, p0, Lc8/Mmq;->onSubscribe:Lc8/Rlq;

    .line 94
    return-void
.end method

.method private constructor <init>(Lc8/Rlq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Rlq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "f":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1}, Lc8/WAq;->onCreate(Lc8/Rlq;)Lc8/Rlq;

    move-result-object v0

    iput-object v0, p0, Lc8/Mmq;->onSubscribe:Lc8/Rlq;

    .line 98
    return-void
.end method

.method private static asObservable(Lc8/Mmq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "t":Lc8/Mmq;, "Lrx/Single<TT;>;"
    iget-object v0, p0, Lc8/Mmq;->onSubscribe:Lc8/Rlq;

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lc8/Mmq;Lc8/Mmq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "t1":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {p1}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;)Lc8/Vlq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "t1":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {p1}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v1

    invoke-static {p2}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;)Lc8/Vlq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "t1":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {p1}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v1

    invoke-static {p2}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v2

    invoke-static {p3}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;)Lc8/Vlq;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "t1":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {p1}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v1

    invoke-static {p2}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v2

    invoke-static {p3}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v3

    invoke-static {p4}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;)Lc8/Vlq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "t1":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {p1}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v1

    invoke-static {p2}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v2

    invoke-static {p3}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v3

    invoke-static {p4}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v4

    invoke-static {p5}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;)Lc8/Vlq;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "t1":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {p1}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v1

    invoke-static {p2}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v2

    invoke-static {p3}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v3

    invoke-static {p4}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v4

    invoke-static {p5}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v5

    invoke-static {p6}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;)Lc8/Vlq;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "t1":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p7, "t8":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {p1}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v1

    invoke-static {p2}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v2

    invoke-static {p3}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v3

    invoke-static {p4}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v4

    invoke-static {p5}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v5

    invoke-static {p6}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v6

    invoke-static {p7}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;)Lc8/Vlq;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "t1":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p7, "t8":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p8, "t9":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {p1}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v1

    invoke-static {p2}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v2

    invoke-static {p3}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v3

    invoke-static {p4}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v4

    invoke-static {p5}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v5

    invoke-static {p6}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lc8/Kmq;)Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Kmq",
            "<TT;>;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "f":Lc8/Kmq;, "Lrx/Single$OnSubscribe<TT;>;"
    new-instance v0, Lc8/Mmq;

    invoke-direct {v0, p0}, Lc8/Mmq;-><init>(Lc8/Kmq;)V

    return-object v0
.end method

.method public static defer(Ljava/util/concurrent/Callable;)Lc8/Mmq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lc8/Mmq",
            "<TT;>;>;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2526
    .local p0, "singleFactory":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lrx/Single<TT;>;>;"
    new-instance v0, Lc8/Amq;

    invoke-direct {v0, p0}, Lc8/Amq;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lc8/Mmq;->create(Lc8/Kmq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public static error(Ljava/lang/Throwable;)Lc8/Mmq;
    .locals 1
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 501
    new-instance v0, Lc8/Cmq;

    invoke-direct {v0, p0}, Lc8/Cmq;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lc8/Mmq;->create(Lc8/Kmq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;)Lc8/Mmq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    new-instance v0, Lc8/Mmq;

    invoke-static {p0}, Lc8/Uqq;->toObservableFuture(Ljava/util/concurrent/Future;)Lc8/Rlq;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Mmq;-><init>(Lc8/Rlq;)V

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lc8/Mmq;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    new-instance v0, Lc8/Mmq;

    invoke-static {p0, p1, p2, p3}, Lc8/Uqq;->toObservableFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lc8/Rlq;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Mmq;-><init>(Lc8/Rlq;)V

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;Lc8/amq;)Lc8/Mmq;
    .locals 2
    .param p1, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;",
            "Lc8/amq;",
            ")",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 597
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    new-instance v0, Lc8/Mmq;

    invoke-static {p0}, Lc8/Uqq;->toObservableFuture(Ljava/util/concurrent/Future;)Lc8/Rlq;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Mmq;-><init>(Lc8/Rlq;)V

    invoke-virtual {v0, p1}, Lc8/Mmq;->subscribeOn(Lc8/amq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lc8/Mmq;
    .locals 1
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 619
    .local p0, "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    new-instance v0, Lc8/Dmq;

    invoke-direct {v0, p0}, Lc8/Dmq;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lc8/Mmq;->create(Lc8/Kmq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method static iterableToArray(Ljava/lang/Iterable;)[Lc8/Mmq;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Mmq",
            "<+TT;>;>;)[",
            "Lc8/Mmq",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "singlesIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Single<+TT;>;>;"
    const/4 v8, 0x0

    .line 2599
    instance-of v7, p0, Ljava/util/Collection;

    if-eqz v7, :cond_0

    move-object v2, p0

    .line 2600
    check-cast v2, Ljava/util/Collection;

    .line 2601
    .local v2, "list":Ljava/util/Collection;, "Ljava/util/Collection<+Lrx/Single<+TT;>;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 2602
    .local v0, "count":I
    new-array v7, v0, [Lc8/Mmq;

    invoke-interface {v2, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lc8/Mmq;

    .line 2624
    .end local v2    # "list":Ljava/util/Collection;, "Ljava/util/Collection<+Lrx/Single<+TT;>;>;"
    .local v5, "singlesArray":[Lc8/Mmq;, "[Lrx/Single<+TT;>;"
    :goto_0
    return-object v5

    .line 2604
    .end local v0    # "count":I
    .end local v5    # "singlesArray":[Lc8/Mmq;, "[Lrx/Single<+TT;>;"
    :cond_0
    const/16 v7, 0x8

    new-array v6, v7, [Lc8/Mmq;

    .line 2605
    .local v6, "tempArray":[Lc8/Mmq;, "[Lrx/Single<+TT;>;"
    const/4 v0, 0x0

    .line 2606
    .restart local v0    # "count":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Mmq;

    .line 2607
    .local v3, "s":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    array-length v7, v6

    if-ne v0, v7, :cond_1

    .line 2608
    shr-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v0

    new-array v4, v7, [Lc8/Mmq;

    .line 2609
    .local v4, "sb":[Lc8/Mmq;, "[Lrx/Single<+TT;>;"
    invoke-static {v6, v8, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2610
    move-object v6, v4

    .line 2612
    .end local v4    # "sb":[Lc8/Mmq;, "[Lrx/Single<+TT;>;"
    :cond_1
    aput-object v3, v6, v0

    .line 2613
    add-int/lit8 v0, v0, 0x1

    .line 2614
    goto :goto_1

    .line 2616
    .end local v3    # "s":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    :cond_2
    array-length v7, v6

    if-ne v7, v0, :cond_3

    .line 2617
    move-object v5, v6

    .restart local v5    # "singlesArray":[Lc8/Mmq;, "[Lrx/Single<+TT;>;"
    goto :goto_0

    .line 2619
    .end local v5    # "singlesArray":[Lc8/Mmq;, "[Lrx/Single<+TT;>;"
    :cond_3
    new-array v5, v0, [Lc8/Mmq;

    .line 2620
    .restart local v5    # "singlesArray":[Lc8/Mmq;, "[Lrx/Single<+TT;>;"
    invoke-static {v6, v8, v5, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static just(Ljava/lang/Object;)Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 657
    .local p0, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lc8/vyq;->create(Ljava/lang/Object;)Lc8/vyq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lc8/Mmq;)Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+",
            "Lc8/Mmq",
            "<+TT;>;>;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 680
    .local p0, "source":Lc8/Mmq;, "Lrx/Single<+Lrx/Single<+TT;>;>;"
    instance-of v0, p0, Lc8/vyq;

    if-eqz v0, :cond_0

    .line 681
    check-cast p0, Lc8/vyq;

    .end local p0    # "source":Lc8/Mmq;, "Lrx/Single<+Lrx/Single<+TT;>;>;"
    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/vyq;->scalarFlatMap(Lc8/Inq;)Lc8/Mmq;

    move-result-object v0

    .line 683
    .restart local p0    # "source":Lc8/Mmq;, "Lrx/Single<+Lrx/Single<+TT;>;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/Fmq;

    invoke-direct {v0, p0}, Lc8/Fmq;-><init>(Lc8/Mmq;)V

    invoke-static {v0}, Lc8/Mmq;->create(Lc8/Kmq;)Lc8/Mmq;

    move-result-object v0

    goto :goto_0
.end method

.method public static merge(Lc8/Mmq;Lc8/Mmq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 727
    .local p0, "t1":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {p1}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Vlq;->merge(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;)Lc8/Vlq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 753
    .local p0, "t1":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {p1}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v1

    invoke-static {p2}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/Vlq;->merge(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;)Lc8/Vlq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 781
    .local p0, "t1":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {p1}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v1

    invoke-static {p2}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v2

    invoke-static {p3}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lc8/Vlq;->merge(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;)Lc8/Vlq;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 811
    .local p0, "t1":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {p1}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v1

    invoke-static {p2}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v2

    invoke-static {p3}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v3

    invoke-static {p4}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lc8/Vlq;->merge(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;)Lc8/Vlq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 843
    .local p0, "t1":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {p1}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v1

    invoke-static {p2}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v2

    invoke-static {p3}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v3

    invoke-static {p4}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v4

    invoke-static {p5}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lc8/Vlq;->merge(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;)Lc8/Vlq;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 877
    .local p0, "t1":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {p1}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v1

    invoke-static {p2}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v2

    invoke-static {p3}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v3

    invoke-static {p4}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v4

    invoke-static {p5}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v5

    invoke-static {p6}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lc8/Vlq;->merge(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;)Lc8/Vlq;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 913
    .local p0, "t1":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p7, "t8":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {p1}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v1

    invoke-static {p2}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v2

    invoke-static {p3}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v3

    invoke-static {p4}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v4

    invoke-static {p5}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v5

    invoke-static {p6}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v6

    invoke-static {p7}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lc8/Vlq;->merge(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;)Lc8/Vlq;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 951
    .local p0, "t1":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p7, "t8":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p8, "t9":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {p1}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v1

    invoke-static {p2}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v2

    invoke-static {p3}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v3

    invoke-static {p4}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v4

    invoke-static {p5}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v5

    invoke-static {p6}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lc8/Vlq;->merge(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method private nest()Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Mmq",
            "<",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    invoke-static {p0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Mmq;->just(Ljava/lang/Object;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public static using(Lc8/Hnq;Lc8/Inq;Lc8/inq;)Lc8/Mmq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Resource:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<TResource;>;",
            "Lc8/Inq",
            "<-TResource;+",
            "Lc8/Mmq",
            "<+TT;>;>;",
            "Lc8/inq",
            "<-TResource;>;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2766
    .local p0, "resourceFactory":Lc8/Hnq;, "Lrx/functions/Func0<TResource;>;"
    .local p1, "singleFactory":Lc8/Inq;, "Lrx/functions/Func1<-TResource;+Lrx/Single<+TT;>;>;"
    .local p2, "disposeAction":Lc8/inq;, "Lrx/functions/Action1<-TResource;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lc8/Mmq;->using(Lc8/Hnq;Lc8/Inq;Lc8/inq;Z)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public static using(Lc8/Hnq;Lc8/Inq;Lc8/inq;Z)Lc8/Mmq;
    .locals 2
    .param p3, "disposeEagerly"    # Z
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Resource:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<TResource;>;",
            "Lc8/Inq",
            "<-TResource;+",
            "Lc8/Mmq",
            "<+TT;>;>;",
            "Lc8/inq",
            "<-TResource;>;Z)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2803
    .local p0, "resourceFactory":Lc8/Hnq;, "Lrx/functions/Func0<TResource;>;"
    .local p1, "singleFactory":Lc8/Inq;, "Lrx/functions/Func1<-TResource;+Lrx/Single<+TT;>;>;"
    .local p2, "disposeAction":Lc8/inq;, "Lrx/functions/Action1<-TResource;>;"
    if-nez p0, :cond_0

    .line 2804
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "resourceFactory is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2806
    :cond_0
    if-nez p1, :cond_1

    .line 2807
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "singleFactory is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2809
    :cond_1
    if-nez p2, :cond_2

    .line 2810
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "disposeAction is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2812
    :cond_2
    new-instance v0, Lc8/Bwq;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/Bwq;-><init>(Lc8/Hnq;Lc8/Inq;Lc8/inq;Z)V

    invoke-static {v0}, Lc8/Mmq;->create(Lc8/Kmq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lc8/Mmq;Lc8/Mmq;Lc8/Jnq;)Lc8/Mmq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT1;>;",
            "Lc8/Mmq",
            "<+TT2;>;",
            "Lc8/Jnq",
            "<-TT1;-TT2;+TR;>;)",
            "Lc8/Mmq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 979
    .local p0, "s1":Lc8/Mmq;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lc8/Mmq;, "Lrx/Single<+TT2;>;"
    .local p2, "zipFunction":Lc8/Jnq;, "Lrx/functions/Func2<-TT1;-TT2;+TR;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lc8/Mmq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v1, Lc8/Gmq;

    invoke-direct {v1, p2}, Lc8/Gmq;-><init>(Lc8/Jnq;)V

    invoke-static {v0, v1}, Lc8/Hwq;->zip([Lc8/Mmq;Lc8/Rnq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Knq;)Lc8/Mmq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT1;>;",
            "Lc8/Mmq",
            "<+TT2;>;",
            "Lc8/Mmq",
            "<+TT3;>;",
            "Lc8/Knq",
            "<-TT1;-TT2;-TT3;+TR;>;)",
            "Lc8/Mmq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1015
    .local p0, "s1":Lc8/Mmq;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lc8/Mmq;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lc8/Mmq;, "Lrx/Single<+TT3;>;"
    .local p3, "zipFunction":Lc8/Knq;, "Lrx/functions/Func3<-TT1;-TT2;-TT3;+TR;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lc8/Mmq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    new-instance v1, Lc8/Hmq;

    invoke-direct {v1, p3}, Lc8/Hmq;-><init>(Lc8/Knq;)V

    invoke-static {v0, v1}, Lc8/Hwq;->zip([Lc8/Mmq;Lc8/Rnq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Lnq;)Lc8/Mmq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT1;>;",
            "Lc8/Mmq",
            "<+TT2;>;",
            "Lc8/Mmq",
            "<+TT3;>;",
            "Lc8/Mmq",
            "<+TT4;>;",
            "Lc8/Lnq",
            "<-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lc8/Mmq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1054
    .local p0, "s1":Lc8/Mmq;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lc8/Mmq;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lc8/Mmq;, "Lrx/Single<+TT3;>;"
    .local p3, "s4":Lc8/Mmq;, "Lrx/Single<+TT4;>;"
    .local p4, "zipFunction":Lc8/Lnq;, "Lrx/functions/Func4<-TT1;-TT2;-TT3;-TT4;+TR;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lc8/Mmq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    new-instance v1, Lc8/Imq;

    invoke-direct {v1, p4}, Lc8/Imq;-><init>(Lc8/Lnq;)V

    invoke-static {v0, v1}, Lc8/Hwq;->zip([Lc8/Mmq;Lc8/Rnq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Qnq;)Lc8/Mmq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT1;>;",
            "Lc8/Mmq",
            "<+TT2;>;",
            "Lc8/Mmq",
            "<+TT3;>;",
            "Lc8/Mmq",
            "<+TT4;>;",
            "Lc8/Mmq",
            "<+TT5;>;",
            "Lc8/Mmq",
            "<+TT6;>;",
            "Lc8/Mmq",
            "<+TT7;>;",
            "Lc8/Mmq",
            "<+TT8;>;",
            "Lc8/Mmq",
            "<+TT9;>;",
            "Lc8/Qnq",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lc8/Mmq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1298
    .local p0, "s1":Lc8/Mmq;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lc8/Mmq;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lc8/Mmq;, "Lrx/Single<+TT3;>;"
    .local p3, "s4":Lc8/Mmq;, "Lrx/Single<+TT4;>;"
    .local p4, "s5":Lc8/Mmq;, "Lrx/Single<+TT5;>;"
    .local p5, "s6":Lc8/Mmq;, "Lrx/Single<+TT6;>;"
    .local p6, "s7":Lc8/Mmq;, "Lrx/Single<+TT7;>;"
    .local p7, "s8":Lc8/Mmq;, "Lrx/Single<+TT8;>;"
    .local p8, "s9":Lc8/Mmq;, "Lrx/Single<+TT9;>;"
    .local p9, "zipFunction":Lc8/Qnq;, "Lrx/functions/Func9<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lc8/Mmq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    new-instance v1, Lc8/fmq;

    invoke-direct {v1, p9}, Lc8/fmq;-><init>(Lc8/Qnq;)V

    invoke-static {v0, v1}, Lc8/Hwq;->zip([Lc8/Mmq;Lc8/Rnq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Pnq;)Lc8/Mmq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT1;>;",
            "Lc8/Mmq",
            "<+TT2;>;",
            "Lc8/Mmq",
            "<+TT3;>;",
            "Lc8/Mmq",
            "<+TT4;>;",
            "Lc8/Mmq",
            "<+TT5;>;",
            "Lc8/Mmq",
            "<+TT6;>;",
            "Lc8/Mmq",
            "<+TT7;>;",
            "Lc8/Mmq",
            "<+TT8;>;",
            "Lc8/Pnq",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lc8/Mmq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1243
    .local p0, "s1":Lc8/Mmq;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lc8/Mmq;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lc8/Mmq;, "Lrx/Single<+TT3;>;"
    .local p3, "s4":Lc8/Mmq;, "Lrx/Single<+TT4;>;"
    .local p4, "s5":Lc8/Mmq;, "Lrx/Single<+TT5;>;"
    .local p5, "s6":Lc8/Mmq;, "Lrx/Single<+TT6;>;"
    .local p6, "s7":Lc8/Mmq;, "Lrx/Single<+TT7;>;"
    .local p7, "s8":Lc8/Mmq;, "Lrx/Single<+TT8;>;"
    .local p8, "zipFunction":Lc8/Pnq;, "Lrx/functions/Func8<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lc8/Mmq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    new-instance v1, Lc8/emq;

    invoke-direct {v1, p8}, Lc8/emq;-><init>(Lc8/Pnq;)V

    invoke-static {v0, v1}, Lc8/Hwq;->zip([Lc8/Mmq;Lc8/Rnq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Onq;)Lc8/Mmq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT1;>;",
            "Lc8/Mmq",
            "<+TT2;>;",
            "Lc8/Mmq",
            "<+TT3;>;",
            "Lc8/Mmq",
            "<+TT4;>;",
            "Lc8/Mmq",
            "<+TT5;>;",
            "Lc8/Mmq",
            "<+TT6;>;",
            "Lc8/Mmq",
            "<+TT7;>;",
            "Lc8/Onq",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lc8/Mmq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1191
    .local p0, "s1":Lc8/Mmq;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lc8/Mmq;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lc8/Mmq;, "Lrx/Single<+TT3;>;"
    .local p3, "s4":Lc8/Mmq;, "Lrx/Single<+TT4;>;"
    .local p4, "s5":Lc8/Mmq;, "Lrx/Single<+TT5;>;"
    .local p5, "s6":Lc8/Mmq;, "Lrx/Single<+TT6;>;"
    .local p6, "s7":Lc8/Mmq;, "Lrx/Single<+TT7;>;"
    .local p7, "zipFunction":Lc8/Onq;, "Lrx/functions/Func7<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lc8/Mmq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    new-instance v1, Lc8/dmq;

    invoke-direct {v1, p7}, Lc8/dmq;-><init>(Lc8/Onq;)V

    invoke-static {v0, v1}, Lc8/Hwq;->zip([Lc8/Mmq;Lc8/Rnq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Nnq;)Lc8/Mmq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT1;>;",
            "Lc8/Mmq",
            "<+TT2;>;",
            "Lc8/Mmq",
            "<+TT3;>;",
            "Lc8/Mmq",
            "<+TT4;>;",
            "Lc8/Mmq",
            "<+TT5;>;",
            "Lc8/Mmq",
            "<+TT6;>;",
            "Lc8/Nnq",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lc8/Mmq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1142
    .local p0, "s1":Lc8/Mmq;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lc8/Mmq;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lc8/Mmq;, "Lrx/Single<+TT3;>;"
    .local p3, "s4":Lc8/Mmq;, "Lrx/Single<+TT4;>;"
    .local p4, "s5":Lc8/Mmq;, "Lrx/Single<+TT5;>;"
    .local p5, "s6":Lc8/Mmq;, "Lrx/Single<+TT6;>;"
    .local p6, "zipFunction":Lc8/Nnq;, "Lrx/functions/Func6<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lc8/Mmq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    new-instance v1, Lc8/cmq;

    invoke-direct {v1, p6}, Lc8/cmq;-><init>(Lc8/Nnq;)V

    invoke-static {v0, v1}, Lc8/Hwq;->zip([Lc8/Mmq;Lc8/Rnq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mmq;Lc8/Mnq;)Lc8/Mmq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT1;>;",
            "Lc8/Mmq",
            "<+TT2;>;",
            "Lc8/Mmq",
            "<+TT3;>;",
            "Lc8/Mmq",
            "<+TT4;>;",
            "Lc8/Mmq",
            "<+TT5;>;",
            "Lc8/Mnq",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lc8/Mmq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1096
    .local p0, "s1":Lc8/Mmq;, "Lrx/Single<+TT1;>;"
    .local p1, "s2":Lc8/Mmq;, "Lrx/Single<+TT2;>;"
    .local p2, "s3":Lc8/Mmq;, "Lrx/Single<+TT3;>;"
    .local p3, "s4":Lc8/Mmq;, "Lrx/Single<+TT4;>;"
    .local p4, "s5":Lc8/Mmq;, "Lrx/Single<+TT5;>;"
    .local p5, "zipFunction":Lc8/Mnq;, "Lrx/functions/Func5<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lc8/Mmq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    new-instance v1, Lc8/Jmq;

    invoke-direct {v1, p5}, Lc8/Jmq;-><init>(Lc8/Mnq;)V

    invoke-static {v0, v1}, Lc8/Hwq;->zip([Lc8/Mmq;Lc8/Rnq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Ljava/lang/Iterable;Lc8/Rnq;)Lc8/Mmq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Mmq",
            "<*>;>;",
            "Lc8/Rnq",
            "<+TR;>;)",
            "Lc8/Mmq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1331
    .local p0, "singles":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Single<*>;>;"
    .local p1, "zipFunction":Lc8/Rnq;, "Lrx/functions/FuncN<+TR;>;"
    invoke-static {p0}, Lc8/Mmq;->iterableToArray(Ljava/lang/Iterable;)[Lc8/Mmq;

    move-result-object v0

    .line 1332
    .local v0, "iterableToArray":[Lc8/Mmq;
    invoke-static {v0, p1}, Lc8/Hwq;->zip([Lc8/Mmq;Lc8/Rnq;)Lc8/Mmq;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public compose(Lc8/Lmq;)Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Lmq",
            "<-TT;+TR;>;)",
            "Lc8/Mmq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "transformer":Lc8/Lmq;, "Lrx/Single$Transformer<-TT;+TR;>;"
    invoke-interface {p1, p0}, Lc8/Lmq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Mmq;

    return-object v0
.end method

.method public final concatWith(Lc8/Mmq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1352
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "t1":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {p0, p1}, Lc8/Mmq;->concat(Lc8/Mmq;Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lc8/Mmq;
    .locals 1
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2497
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/Mmq;->delay(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Mmq;
    .locals 1
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2475
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    new-instance v0, Lc8/Irq;

    invoke-direct {v0, p1, p2, p3, p4}, Lc8/Irq;-><init>(JLjava/util/concurrent/TimeUnit;Lc8/amq;)V

    invoke-virtual {p0, v0}, Lc8/Mmq;->lift(Lc8/Tlq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final delaySubscription(Lc8/Vlq;)Lc8/Mmq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<*>;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2834
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "other":Lc8/Vlq;, "Lrx/Observable<*>;"
    if-nez p1, :cond_0

    .line 2835
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2837
    :cond_0
    new-instance v0, Lc8/xwq;

    invoke-direct {v0, p0, p1}, Lc8/xwq;-><init>(Lc8/Mmq;Lc8/Vlq;)V

    invoke-static {v0}, Lc8/Mmq;->create(Lc8/Kmq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final doAfterTerminate(Lc8/hnq;)Lc8/Mmq;
    .locals 1
    .param p1, "action"    # Lc8/hnq;
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hnq;",
            ")",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2582
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    new-instance v0, Lc8/uwq;

    invoke-direct {v0, p0, p1}, Lc8/uwq;-><init>(Lc8/Mmq;Lc8/hnq;)V

    invoke-static {v0}, Lc8/Mmq;->create(Lc8/Kmq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final doOnError(Lc8/inq;)Lc8/Mmq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2376
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "onError":Lc8/inq;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    new-instance v0, Lc8/ymq;

    invoke-direct {v0, p0, p1}, Lc8/ymq;-><init>(Lc8/Mmq;Lc8/inq;)V

    .line 2393
    .local v0, "observer":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    new-instance v1, Lc8/Zrq;

    invoke-direct {v1, v0}, Lc8/Zrq;-><init>(Lc8/Wlq;)V

    invoke-virtual {p0, v1}, Lc8/Mmq;->lift(Lc8/Tlq;)Lc8/Mmq;

    move-result-object v1

    return-object v1
.end method

.method public final doOnSubscribe(Lc8/hnq;)Lc8/Mmq;
    .locals 1
    .param p1, "subscribe"    # Lc8/hnq;
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hnq;",
            ")",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2451
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    new-instance v0, Lc8/dsq;

    invoke-direct {v0, p1}, Lc8/dsq;-><init>(Lc8/hnq;)V

    invoke-virtual {p0, v0}, Lc8/Mmq;->lift(Lc8/Tlq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final doOnSuccess(Lc8/inq;)Lc8/Mmq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-TT;>;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2412
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "onSuccess":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    new-instance v0, Lc8/zmq;

    invoke-direct {v0, p0, p1}, Lc8/zmq;-><init>(Lc8/Mmq;Lc8/inq;)V

    .line 2429
    .local v0, "observer":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    new-instance v1, Lc8/Zrq;

    invoke-direct {v1, v0}, Lc8/Zrq;-><init>(Lc8/Wlq;)V

    invoke-virtual {p0, v1}, Lc8/Mmq;->lift(Lc8/Tlq;)Lc8/Mmq;

    move-result-object v1

    return-object v1
.end method

.method public final doOnUnsubscribe(Lc8/hnq;)Lc8/Mmq;
    .locals 1
    .param p1, "action"    # Lc8/hnq;
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hnq;",
            ")",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2561
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    new-instance v0, Lc8/esq;

    invoke-direct {v0, p1}, Lc8/esq;-><init>(Lc8/hnq;)V

    invoke-virtual {p0, v0}, Lc8/Mmq;->lift(Lc8/Tlq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lc8/Inq;)Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Mmq",
            "<+TR;>;>;)",
            "Lc8/Mmq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1372
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "func":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Single<+TR;>;>;"
    instance-of v0, p0, Lc8/vyq;

    if-eqz v0, :cond_0

    .line 1373
    check-cast p0, Lc8/vyq;

    .end local p0    # "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    invoke-virtual {p0, p1}, Lc8/vyq;->scalarFlatMap(Lc8/Inq;)Lc8/Mmq;

    move-result-object v0

    .line 1375
    :goto_0
    return-object v0

    .restart local p0    # "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Lc8/Mmq;->map(Lc8/Inq;)Lc8/Mmq;

    move-result-object v0

    invoke-static {v0}, Lc8/Mmq;->merge(Lc8/Mmq;)Lc8/Mmq;

    move-result-object v0

    goto :goto_0
.end method

.method public final flatMapObservable(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TR;>;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1396
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "func":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-virtual {p0, p1}, Lc8/Mmq;->map(Lc8/Inq;)Lc8/Mmq;

    move-result-object v0

    invoke-static {v0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->merge(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final lift(Lc8/Tlq;)Lc8/Mmq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Tlq",
            "<+TR;-TT;>;)",
            "Lc8/Mmq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "lift":Lc8/Tlq;, "Lrx/Observable$Operator<+TR;-TT;>;"
    new-instance v0, Lc8/Mmq;

    new-instance v1, Lc8/Bmq;

    invoke-direct {v1, p0, p1}, Lc8/Bmq;-><init>(Lc8/Mmq;Lc8/Tlq;)V

    invoke-direct {v0, v1}, Lc8/Mmq;-><init>(Lc8/Rlq;)V

    return-object v0
.end method

.method public final map(Lc8/Inq;)Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+TR;>;)",
            "Lc8/Mmq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1416
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "func":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TR;>;"
    new-instance v0, Lc8/zwq;

    invoke-direct {v0, p0, p1}, Lc8/zwq;-><init>(Lc8/Mmq;Lc8/Inq;)V

    invoke-static {v0}, Lc8/Mmq;->create(Lc8/Kmq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final mergeWith(Lc8/Mmq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1437
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "t1":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {p0, p1}, Lc8/Mmq;->merge(Lc8/Mmq;Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lc8/amq;)Lc8/Mmq;
    .locals 2
    .param p1, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/amq;",
            ")",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1459
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    instance-of v0, p0, Lc8/vyq;

    if-eqz v0, :cond_0

    .line 1460
    check-cast p0, Lc8/vyq;

    .end local p0    # "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    invoke-virtual {p0, p1}, Lc8/vyq;->scalarScheduleOn(Lc8/amq;)Lc8/Mmq;

    move-result-object v0

    .line 1464
    :goto_0
    return-object v0

    .restart local p0    # "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    :cond_0
    new-instance v0, Lc8/Rsq;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lc8/Rsq;-><init>(Lc8/amq;Z)V

    invoke-virtual {p0, v0}, Lc8/Mmq;->lift(Lc8/Tlq;)Lc8/Mmq;

    move-result-object v0

    goto :goto_0
.end method

.method public final onErrorResumeNext(Lc8/Inq;)Lc8/Mmq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lc8/Mmq",
            "<+TT;>;>;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1563
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "resumeFunctionInCaseOfError":Lc8/Inq;, "Lrx/functions/Func1<Ljava/lang/Throwable;+Lrx/Single<+TT;>;>;"
    new-instance v0, Lc8/Mmq;

    invoke-static {p0, p1}, Lc8/Ewq;->withFunction(Lc8/Mmq;Lc8/Inq;)Lc8/Ewq;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Mmq;-><init>(Lc8/Kmq;)V

    return-object v0
.end method

.method public final onErrorResumeNext(Lc8/Mmq;)Lc8/Mmq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1529
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "resumeSingleInCaseOfError":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    new-instance v0, Lc8/Mmq;

    invoke-static {p0, p1}, Lc8/Ewq;->withOther(Lc8/Mmq;Lc8/Mmq;)Lc8/Ewq;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Mmq;-><init>(Lc8/Kmq;)V

    return-object v0
.end method

.method public final onErrorReturn(Lc8/Inq;)Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1495
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "resumeFunction":Lc8/Inq;, "Lrx/functions/Func1<Ljava/lang/Throwable;+TT;>;"
    invoke-static {p1}, Lc8/htq;->withSingle(Lc8/Inq;)Lc8/htq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Mmq;->lift(Lc8/Tlq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final retry()Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2645
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    invoke-virtual {p0}, Lc8/Mmq;->toObservable()Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->retry()Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->toSingle()Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Lc8/Mmq;
    .locals 1
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2670
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    invoke-virtual {p0}, Lc8/Mmq;->toObservable()Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/Vlq;->retry(J)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->toSingle()Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final retry(Lc8/Jnq;)Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Jnq",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2694
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "predicate":Lc8/Jnq;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lc8/Mmq;->toObservable()Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vlq;->retry(Lc8/Jnq;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->toSingle()Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final retryWhen(Lc8/Inq;)Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<",
            "Lc8/Vlq",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lc8/Vlq",
            "<*>;>;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2738
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "notificationHandler":Lc8/Inq;, "Lrx/functions/Func1<Lrx/Observable<+Ljava/lang/Throwable;>;+Lrx/Observable<*>;>;"
    invoke-virtual {p0}, Lc8/Mmq;->toObservable()Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vlq;->retryWhen(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->toSingle()Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe()Lc8/Pmq;
    .locals 1

    .prologue
    .line 1579
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    new-instance v0, Lc8/gmq;

    invoke-direct {v0, p0}, Lc8/gmq;-><init>(Lc8/Mmq;)V

    invoke-virtual {p0, v0}, Lc8/Mmq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lc8/Nmq;)Lc8/Pmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TT;>;)",
            "Lc8/Pmq;"
        }
    .end annotation

    .prologue
    .line 1874
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "te":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lc8/kmq;

    invoke-direct {v0, p0, p1}, Lc8/kmq;-><init>(Lc8/Mmq;Lc8/Nmq;)V

    .line 1892
    .local v0, "s":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lc8/Nmq;->add(Lc8/Pmq;)V

    .line 1893
    invoke-virtual {p0, v0}, Lc8/Mmq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    .line 1894
    return-object v0
.end method

.method public final subscribe(Lc8/Omq;)Lc8/Pmq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)",
            "Lc8/Pmq;"
        }
    .end annotation

    .prologue
    .line 1789
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    if-nez p1, :cond_0

    .line 1790
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "observer can not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1792
    :cond_0
    iget-object v4, p0, Lc8/Mmq;->onSubscribe:Lc8/Rlq;

    if-nez v4, :cond_1

    .line 1793
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "onSubscribe function can not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1801
    :cond_1
    invoke-virtual {p1}, Lc8/Omq;->onStart()V

    .line 1808
    instance-of v4, p1, Lc8/nAq;

    if-nez v4, :cond_2

    .line 1810
    new-instance v3, Lc8/nAq;

    invoke-direct {v3, p1}, Lc8/nAq;-><init>(Lc8/Omq;)V

    .end local p1    # "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    .local v3, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    move-object p1, v3

    .line 1816
    .end local v3    # "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    .restart local p1    # "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :cond_2
    :try_start_0
    iget-object v4, p0, Lc8/Mmq;->onSubscribe:Lc8/Rlq;

    invoke-static {p0, v4}, Lc8/WAq;->onSingleStart(Lc8/Mmq;Lc8/Rlq;)Lc8/Rlq;

    move-result-object v4

    invoke-interface {v4, p1}, Lc8/Rlq;->call(Ljava/lang/Object;)V

    .line 1817
    invoke-static {p1}, Lc8/WAq;->onSingleReturn(Lc8/Pmq;)Lc8/Pmq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1834
    :goto_0
    return-object v4

    .line 1818
    :catch_0
    move-exception v0

    .line 1820
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1823
    :try_start_1
    invoke-static {v0}, Lc8/WAq;->onSingleError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p1, v4}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1834
    invoke-static {}, Lc8/bCq;->empty()Lc8/Pmq;

    move-result-object v4

    goto :goto_0

    .line 1824
    :catch_1
    move-exception v1

    .line 1825
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1828
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error occurred attempting to subscribe ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] and then again while trying to pass to onError."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1830
    .local v2, "r":Ljava/lang/RuntimeException;
    invoke-static {v2}, Lc8/WAq;->onSingleError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1832
    throw v2
.end method

.method public final subscribe(Lc8/Wlq;)Lc8/Pmq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Wlq",
            "<-TT;>;)",
            "Lc8/Pmq;"
        }
    .end annotation

    .prologue
    .line 1736
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "observer":Lc8/Wlq;, "Lrx/Observer<-TT;>;"
    if-nez p1, :cond_0

    .line 1737
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "observer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1739
    :cond_0
    new-instance v0, Lc8/jmq;

    invoke-direct {v0, p0, p1}, Lc8/jmq;-><init>(Lc8/Mmq;Lc8/Wlq;)V

    invoke-virtual {p0, v0}, Lc8/Mmq;->subscribe(Lc8/Nmq;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lc8/inq;)Lc8/Pmq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-TT;>;)",
            "Lc8/Pmq;"
        }
    .end annotation

    .prologue
    .line 1616
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "onSuccess":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    if-nez p1, :cond_0

    .line 1617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onSuccess can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1620
    :cond_0
    new-instance v0, Lc8/hmq;

    invoke-direct {v0, p0, p1}, Lc8/hmq;-><init>(Lc8/Mmq;Lc8/inq;)V

    invoke-virtual {p0, v0}, Lc8/Mmq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lc8/inq;Lc8/inq;)Lc8/Pmq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-TT;>;",
            "Lc8/inq",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lc8/Pmq;"
        }
    .end annotation

    .prologue
    .line 1660
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "onSuccess":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lc8/inq;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p1, :cond_0

    .line 1661
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onSuccess can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1663
    :cond_0
    if-nez p2, :cond_1

    .line 1664
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1667
    :cond_1
    new-instance v0, Lc8/imq;

    invoke-direct {v0, p0, p2, p1}, Lc8/imq;-><init>(Lc8/Mmq;Lc8/inq;Lc8/inq;)V

    invoke-virtual {p0, v0}, Lc8/Mmq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method

.method public final subscribeOn(Lc8/amq;)Lc8/Mmq;
    .locals 1
    .param p1, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/amq;",
            ")",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1914
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    instance-of v0, p0, Lc8/vyq;

    if-eqz v0, :cond_0

    .line 1915
    check-cast p0, Lc8/vyq;

    .end local p0    # "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    invoke-virtual {p0, p1}, Lc8/vyq;->scalarScheduleOn(Lc8/amq;)Lc8/Mmq;

    move-result-object v0

    .line 1917
    :goto_0
    return-object v0

    .restart local p0    # "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    :cond_0
    new-instance v0, Lc8/nmq;

    invoke-direct {v0, p0, p1}, Lc8/nmq;-><init>(Lc8/Mmq;Lc8/amq;)V

    invoke-static {v0}, Lc8/Mmq;->create(Lc8/Kmq;)Lc8/Mmq;

    move-result-object v0

    goto :goto_0
.end method

.method public final takeUntil(Lc8/Mmq;)Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TE;>;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2126
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "other":Lc8/Mmq;, "Lrx/Single<+TE;>;"
    new-instance v0, Lc8/xmq;

    invoke-direct {v0, p0, p1}, Lc8/xmq;-><init>(Lc8/Mmq;Lc8/Mmq;)V

    invoke-virtual {p0, v0}, Lc8/Mmq;->lift(Lc8/Tlq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final takeUntil(Lc8/Plq;)Lc8/Mmq;
    .locals 1
    .param p1, "other"    # Lc8/Plq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Plq;",
            ")",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1973
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    new-instance v0, Lc8/rmq;

    invoke-direct {v0, p0, p1}, Lc8/rmq;-><init>(Lc8/Mmq;Lc8/Plq;)V

    invoke-virtual {p0, v0}, Lc8/Mmq;->lift(Lc8/Tlq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final takeUntil(Lc8/Vlq;)Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TE;>;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2049
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "other":Lc8/Vlq;, "Lrx/Observable<+TE;>;"
    new-instance v0, Lc8/umq;

    invoke-direct {v0, p0, p1}, Lc8/umq;-><init>(Lc8/Mmq;Lc8/Vlq;)V

    invoke-virtual {p0, v0}, Lc8/Mmq;->lift(Lc8/Tlq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lc8/Mmq;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2233
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    const/4 v5, 0x0

    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lc8/Mmq;->timeout(JLjava/util/concurrent/TimeUnit;Lc8/Mmq;Lc8/amq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lc8/Mmq;)Lc8/Mmq;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2282
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p4, "other":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lc8/Mmq;->timeout(JLjava/util/concurrent/TimeUnit;Lc8/Mmq;Lc8/amq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lc8/Mmq;Lc8/amq;)Lc8/Mmq;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/amq;",
            ")",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2308
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p4, "other":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    if-nez p4, :cond_0

    .line 2309
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-static {v0}, Lc8/Mmq;->error(Ljava/lang/Throwable;)Lc8/Mmq;

    move-result-object p4

    .line 2311
    :cond_0
    new-instance v1, Lc8/evq;

    invoke-static {p4}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v5

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lc8/evq;-><init>(JLjava/util/concurrent/TimeUnit;Lc8/Vlq;Lc8/amq;)V

    invoke-virtual {p0, v1}, Lc8/Mmq;->lift(Lc8/Tlq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Mmq;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2258
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lc8/Mmq;->timeout(JLjava/util/concurrent/TimeUnit;Lc8/Mmq;Lc8/amq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method

.method public final toBlocking()Lc8/sBq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/sBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2326
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    invoke-static {p0}, Lc8/sBq;->from(Lc8/Mmq;)Lc8/sBq;

    move-result-object v0

    return-object v0
.end method

.method public final toCompletable()Lc8/Plq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .prologue
    .line 2210
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    invoke-static {p0}, Lc8/Plq;->fromSingle(Lc8/Mmq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final toObservable()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2186
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    invoke-static {p0}, Lc8/Mmq;->asObservable(Lc8/Mmq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)",
            "Lc8/Pmq;"
        }
    .end annotation

    .prologue
    .line 1705
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    invoke-virtual {p1}, Lc8/Omq;->onStart()V

    .line 1706
    iget-object v3, p0, Lc8/Mmq;->onSubscribe:Lc8/Rlq;

    invoke-static {p0, v3}, Lc8/WAq;->onSingleStart(Lc8/Mmq;Lc8/Rlq;)Lc8/Rlq;

    move-result-object v3

    invoke-interface {v3, p1}, Lc8/Rlq;->call(Ljava/lang/Object;)V

    .line 1707
    invoke-static {p1}, Lc8/WAq;->onSingleReturn(Lc8/Pmq;)Lc8/Pmq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1724
    :goto_0
    return-object v3

    .line 1708
    :catch_0
    move-exception v0

    .line 1710
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1713
    :try_start_1
    invoke-static {v0}, Lc8/WAq;->onSingleError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1724
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v3

    goto :goto_0

    .line 1714
    :catch_1
    move-exception v1

    .line 1715
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1718
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] and then again while trying to pass to onError."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1720
    .local v2, "r":Ljava/lang/RuntimeException;
    invoke-static {v2}, Lc8/WAq;->onSingleError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1722
    throw v2
.end method

.method public final zipWith(Lc8/Mmq;Lc8/Jnq;)Lc8/Mmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT2;>;",
            "Lc8/Jnq",
            "<-TT;-TT2;+TR;>;)",
            "Lc8/Mmq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 2354
    .local p0, "this":Lc8/Mmq;, "Lrx/Single<TT;>;"
    .local p1, "other":Lc8/Mmq;, "Lrx/Single<+TT2;>;"
    .local p2, "zipFunction":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-TT2;+TR;>;"
    invoke-static {p0, p1, p2}, Lc8/Mmq;->zip(Lc8/Mmq;Lc8/Mmq;Lc8/Jnq;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method
