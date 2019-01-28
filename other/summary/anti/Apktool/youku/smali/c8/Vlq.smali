.class public Lc8/Vlq;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ulq;,
        Lc8/Slq;,
        Lc8/Tlq;,
        Lc8/Rlq;
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
.method protected constructor <init>(Lc8/Rlq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Rlq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "f":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lc8/Vlq;->onSubscribe:Lc8/Rlq;

    .line 60
    return-void
.end method

.method public static amb(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1}, Lc8/hpq;->amb(Lc8/Vlq;Lc8/Vlq;)Lc8/Rlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2}, Lc8/hpq;->amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Rlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lc8/hpq;->amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Rlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lc8/hpq;->amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Rlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 544
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p5}, Lc8/hpq;->amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Rlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 580
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p6}, Lc8/hpq;->amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Rlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p7, "o8":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p7}, Lc8/hpq;->amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Rlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 658
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p7, "o8":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p8, "o9":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p8}, Lc8/hpq;->amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Rlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static amb(Ljava/lang/Iterable;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lc8/hpq;->amb(Ljava/lang/Iterable;)Lc8/Rlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lc8/Vlq;Lc8/Vlq;Lc8/Jnq;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<+TT1;>;",
            "Lc8/Vlq",
            "<+TT2;>;",
            "Lc8/Jnq",
            "<-TT1;-TT2;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 691
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT2;>;"
    .local p2, "combineFunction":Lc8/Jnq;, "Lrx/functions/Func2<-TT1;-TT2;+TR;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lc8/Vlq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lc8/hoq;->fromFunc(Lc8/Jnq;)Lc8/Rnq;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Vlq;->combineLatest(Ljava/util/List;Lc8/Rnq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Knq;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<+TT1;>;",
            "Lc8/Vlq",
            "<+TT2;>;",
            "Lc8/Vlq",
            "<+TT3;>;",
            "Lc8/Knq",
            "<-TT1;-TT2;-TT3;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 727
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT3;>;"
    .local p3, "combineFunction":Lc8/Knq;, "Lrx/functions/Func3<-TT1;-TT2;-TT3;+TR;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lc8/Vlq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p3}, Lc8/hoq;->fromFunc(Lc8/Knq;)Lc8/Rnq;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Vlq;->combineLatest(Ljava/util/List;Lc8/Rnq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Lnq;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<+TT1;>;",
            "Lc8/Vlq",
            "<+TT2;>;",
            "Lc8/Vlq",
            "<+TT3;>;",
            "Lc8/Vlq",
            "<+TT4;>;",
            "Lc8/Lnq",
            "<-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 767
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT4;>;"
    .local p4, "combineFunction":Lc8/Lnq;, "Lrx/functions/Func4<-TT1;-TT2;-TT3;-TT4;+TR;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lc8/Vlq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p4}, Lc8/hoq;->fromFunc(Lc8/Lnq;)Lc8/Rnq;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Vlq;->combineLatest(Ljava/util/List;Lc8/Rnq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Mnq;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<+TT1;>;",
            "Lc8/Vlq",
            "<+TT2;>;",
            "Lc8/Vlq",
            "<+TT3;>;",
            "Lc8/Vlq",
            "<+TT4;>;",
            "Lc8/Vlq",
            "<+TT5;>;",
            "Lc8/Mnq",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 810
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT5;>;"
    .local p5, "combineFunction":Lc8/Mnq;, "Lrx/functions/Func5<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p5}, Lc8/hoq;->fromFunc(Lc8/Mnq;)Lc8/Rnq;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Vlq;->combineLatest(Ljava/util/List;Lc8/Rnq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Nnq;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<+TT1;>;",
            "Lc8/Vlq",
            "<+TT2;>;",
            "Lc8/Vlq",
            "<+TT3;>;",
            "Lc8/Vlq",
            "<+TT4;>;",
            "Lc8/Vlq",
            "<+TT5;>;",
            "Lc8/Vlq",
            "<+TT6;>;",
            "Lc8/Nnq",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 856
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT6;>;"
    .local p6, "combineFunction":Lc8/Nnq;, "Lrx/functions/Func6<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p6}, Lc8/hoq;->fromFunc(Lc8/Nnq;)Lc8/Rnq;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Vlq;->combineLatest(Ljava/util/List;Lc8/Rnq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Onq;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<+TT1;>;",
            "Lc8/Vlq",
            "<+TT2;>;",
            "Lc8/Vlq",
            "<+TT3;>;",
            "Lc8/Vlq",
            "<+TT4;>;",
            "Lc8/Vlq",
            "<+TT5;>;",
            "Lc8/Vlq",
            "<+TT6;>;",
            "Lc8/Vlq",
            "<+TT7;>;",
            "Lc8/Onq",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 905
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT6;>;"
    .local p6, "o7":Lc8/Vlq;, "Lrx/Observable<+TT7;>;"
    .local p7, "combineFunction":Lc8/Onq;, "Lrx/functions/Func7<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p7}, Lc8/hoq;->fromFunc(Lc8/Onq;)Lc8/Rnq;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Vlq;->combineLatest(Ljava/util/List;Lc8/Rnq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Pnq;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<+TT1;>;",
            "Lc8/Vlq",
            "<+TT2;>;",
            "Lc8/Vlq",
            "<+TT3;>;",
            "Lc8/Vlq",
            "<+TT4;>;",
            "Lc8/Vlq",
            "<+TT5;>;",
            "Lc8/Vlq",
            "<+TT6;>;",
            "Lc8/Vlq",
            "<+TT7;>;",
            "Lc8/Vlq",
            "<+TT8;>;",
            "Lc8/Pnq",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 957
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT6;>;"
    .local p6, "o7":Lc8/Vlq;, "Lrx/Observable<+TT7;>;"
    .local p7, "o8":Lc8/Vlq;, "Lrx/Observable<+TT8;>;"
    .local p8, "combineFunction":Lc8/Pnq;, "Lrx/functions/Func8<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p8}, Lc8/hoq;->fromFunc(Lc8/Pnq;)Lc8/Rnq;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Vlq;->combineLatest(Ljava/util/List;Lc8/Rnq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Qnq;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<+TT1;>;",
            "Lc8/Vlq",
            "<+TT2;>;",
            "Lc8/Vlq",
            "<+TT3;>;",
            "Lc8/Vlq",
            "<+TT4;>;",
            "Lc8/Vlq",
            "<+TT5;>;",
            "Lc8/Vlq",
            "<+TT6;>;",
            "Lc8/Vlq",
            "<+TT7;>;",
            "Lc8/Vlq",
            "<+TT8;>;",
            "Lc8/Vlq",
            "<+TT9;>;",
            "Lc8/Qnq",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1013
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT6;>;"
    .local p6, "o7":Lc8/Vlq;, "Lrx/Observable<+TT7;>;"
    .local p7, "o8":Lc8/Vlq;, "Lrx/Observable<+TT8;>;"
    .local p8, "o9":Lc8/Vlq;, "Lrx/Observable<+TT9;>;"
    .local p9, "combineFunction":Lc8/Qnq;, "Lrx/functions/Func9<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p9}, Lc8/hoq;->fromFunc(Lc8/Qnq;)Lc8/Rnq;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Vlq;->combineLatest(Ljava/util/List;Lc8/Rnq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Ljava/lang/Iterable;Lc8/Rnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;",
            "Lc8/Rnq",
            "<+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1070
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    .local p1, "combineFunction":Lc8/Rnq;, "Lrx/functions/FuncN<+TR;>;"
    new-instance v0, Lc8/mpq;

    invoke-direct {v0, p0, p1}, Lc8/mpq;-><init>(Ljava/lang/Iterable;Lc8/Rnq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatest(Ljava/util/List;Lc8/Rnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;",
            "Lc8/Rnq",
            "<+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1041
    .local p0, "sources":Ljava/util/List;, "Ljava/util/List<+Lrx/Observable<+TT;>;>;"
    .local p1, "combineFunction":Lc8/Rnq;, "Lrx/functions/FuncN<+TR;>;"
    new-instance v0, Lc8/mpq;

    invoke-direct {v0, p0, p1}, Lc8/mpq;-><init>(Ljava/lang/Iterable;Lc8/Rnq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static combineLatestDelayError(Ljava/lang/Iterable;Lc8/Rnq;)Lc8/Vlq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;",
            "Lc8/Rnq",
            "<+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1101
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    .local p1, "combineFunction":Lc8/Rnq;, "Lrx/functions/FuncN<+TR;>;"
    new-instance v0, Lc8/mpq;

    const/4 v1, 0x0

    sget v4, Lc8/fyq;->SIZE:I

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lc8/mpq;-><init>([Lc8/Vlq;Ljava/lang/Iterable;Lc8/Rnq;IZ)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1128
    .local p0, "observables":Lc8/Vlq;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->concatMap(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1156
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->concat(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1186
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->concat(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1218
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->concat(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1252
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->concat(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1288
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p5}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->concat(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1326
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p6}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->concat(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1366
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p7, "t8":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p7}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->concat(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1408
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p7, "t8":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p8, "t9":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p8}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->concat(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concatDelayError(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1429
    .local p0, "sources":Lc8/Vlq;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->concatMapDelayError(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concatDelayError(Ljava/lang/Iterable;)Lc8/Vlq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1452
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lc8/Vlq;->from(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->concatDelayError(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6058
    .local p0, "sources":Lc8/Vlq;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->concatMapEager(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lc8/Vlq;I)Lc8/Vlq;
    .locals 1
    .param p1, "capacityHint"    # I
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;I)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6083
    .local p0, "sources":Lc8/Vlq;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lc8/Vlq;->concatMapEager(Lc8/Inq;I)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5752
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lc8/Vlq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->concatEager(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5781
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lc8/Vlq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->concatEager(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5811
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lc8/Vlq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->concatEager(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5843
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->concatEager(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5876
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->concatEager(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5911
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->concatEager(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5947
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p7, "o8":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->concatEager(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5985
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p7, "o8":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p8, "o9":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->concatEager(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Ljava/lang/Iterable;)Lc8/Vlq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6009
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lc8/Vlq;->from(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->concatMapEager(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static concatEager(Ljava/lang/Iterable;I)Lc8/Vlq;
    .locals 2
    .param p1, "capacityHint"    # I
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;I)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6034
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lc8/Vlq;->from(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lc8/Vlq;->concatMapEager(Lc8/Inq;I)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lc8/Jzq;)Lc8/Vlq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Jzq",
            "<TS;TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "asyncOnSubscribe":Lc8/Jzq;, "Lrx/observables/AsyncOnSubscribe<TS;TT;>;"
    invoke-static {p0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lc8/Rlq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Rlq",
            "<TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "f":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    new-instance v0, Lc8/Vlq;

    invoke-static {p0}, Lc8/WAq;->onCreate(Lc8/Rlq;)Lc8/Rlq;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Vlq;-><init>(Lc8/Rlq;)V

    return-object v0
.end method

.method public static create(Lc8/eAq;)Lc8/Vlq;
    .locals 1
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/eAq",
            "<TS;TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "syncOnSubscribe":Lc8/eAq;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    invoke-static {p0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static defer(Lc8/Hnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<",
            "Lc8/Vlq",
            "<TT;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1483
    .local p0, "observableFactory":Lc8/Hnq;, "Lrx/functions/Func0<Lrx/Observable<TT;>;>;"
    new-instance v0, Lc8/spq;

    invoke-direct {v0, p0}, Lc8/spq;-><init>(Lc8/Hnq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static empty()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1505
    invoke-static {}, Lrx/internal/operators/EmptyObservableHolder;->instance()Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static error(Ljava/lang/Throwable;)Lc8/Vlq;
    .locals 1
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1529
    new-instance v0, Lc8/Nqq;

    invoke-direct {v0, p0}, Lc8/Nqq;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/lang/Iterable;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1650
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    new-instance v0, Lc8/Mpq;

    invoke-direct {v0, p0}, Lc8/Mpq;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1559
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-static {p0}, Lc8/Uqq;->toObservableFuture(Ljava/util/concurrent/Future;)Lc8/Rlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 1
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
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1593
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lc8/Uqq;->toObservableFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lc8/Rlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;Lc8/amq;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1625
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-static {p0}, Lc8/Uqq;->toObservableFuture(Ljava/util/concurrent/Future;)Lc8/Rlq;

    move-result-object v1

    invoke-static {v1}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    .line 1626
    .local v0, "o":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {v0, p1}, Lc8/Vlq;->subscribeOn(Lc8/amq;)Lc8/Vlq;

    move-result-object v1

    return-object v1
.end method

.method public static from([Ljava/lang/Object;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1673
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    .line 1674
    .local v0, "n":I
    if-nez v0, :cond_0

    .line 1675
    invoke-static {}, Lc8/Vlq;->empty()Lc8/Vlq;

    move-result-object v1

    .line 1680
    :goto_0
    return-object v1

    .line 1677
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1678
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v1

    goto :goto_0

    .line 1680
    :cond_1
    new-instance v1, Lc8/Ipq;

    invoke-direct {v1, p0}, Lc8/Ipq;-><init>([Ljava/lang/Object;)V

    invoke-static {v1}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v1

    goto :goto_0
.end method

.method public static fromAsync(Lc8/inq;Lrx/AsyncEmitter$BackpressureMode;)Lc8/Vlq;
    .locals 1
    .param p1, "backpressure"    # Lrx/AsyncEmitter$BackpressureMode;
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/inq",
            "<",
            "Lc8/Bkq",
            "<TT;>;>;",
            "Lrx/AsyncEmitter$BackpressureMode;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1725
    .local p0, "asyncEmitter":Lc8/inq;, "Lrx/functions/Action1<Lrx/AsyncEmitter<TT;>;>;"
    new-instance v0, Lc8/Kpq;

    invoke-direct {v0, p0, p1}, Lc8/Kpq;-><init>(Lc8/inq;Lrx/AsyncEmitter$BackpressureMode;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1754
    .local p0, "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    new-instance v0, Lc8/Lpq;

    invoke-direct {v0, p0}, Lc8/Lpq;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static interval(JJLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 6
    .param p0, "initialDelay"    # J
    .param p2, "period"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1830
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lc8/Vlq;->interval(JJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static interval(JJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 8
    .param p0, "initialDelay"    # J
    .param p2, "period"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1861
    new-instance v1, Lc8/Rqq;

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lc8/Rqq;-><init>(JJLjava/util/concurrent/TimeUnit;Lc8/amq;)V

    invoke-static {v1}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static interval(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 6
    .param p0, "interval"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1774
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lc8/Vlq;->interval(JJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static interval(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 6
    .param p0, "interval"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1801
    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lc8/Vlq;->interval(JJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1891
    .local p0, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lc8/oyq;->create(Ljava/lang/Object;)Lc8/oyq;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1917
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lc8/Vlq;->from([Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1945
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lc8/Vlq;->from([Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1975
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lc8/Vlq;->from([Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2007
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

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

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lc8/Vlq;->from([Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2041
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

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

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lc8/Vlq;->from([Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2077
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    .local p6, "t7":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

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

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lc8/Vlq;->from([Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2115
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    .local p6, "t7":Ljava/lang/Object;, "TT;"
    .local p7, "t8":Ljava/lang/Object;, "TT;"
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

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

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lc8/Vlq;->from([Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2155
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    .local p6, "t7":Ljava/lang/Object;, "TT;"
    .local p7, "t8":Ljava/lang/Object;, "TT;"
    .local p8, "t9":Ljava/lang/Object;, "TT;"
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

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

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lc8/Vlq;->from([Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2197
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    .local p6, "t7":Ljava/lang/Object;, "TT;"
    .local p7, "t8":Ljava/lang/Object;, "TT;"
    .local p8, "t9":Ljava/lang/Object;, "TT;"
    .local p9, "t10":Ljava/lang/Object;, "TT;"
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

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

    const/16 v1, 0x9

    aput-object p9, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lc8/Vlq;->from([Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method private mapNotification(Lc8/Inq;Lc8/Inq;Lc8/Hnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+TR;>;",
            "Lc8/Inq",
            "<-",
            "Ljava/lang/Throwable;",
            "+TR;>;",
            "Lc8/Hnq",
            "<+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7255
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TR;>;"
    .local p2, "onError":Lc8/Inq;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+TR;>;"
    .local p3, "onCompleted":Lc8/Hnq;, "Lrx/functions/Func0<+TR;>;"
    new-instance v0, Lc8/wsq;

    invoke-direct {v0, p1, p2, p3}, Lc8/wsq;-><init>(Lc8/Inq;Lc8/Inq;Lc8/Hnq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2283
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lc8/oyq;

    if-ne v0, v1, :cond_0

    .line 2284
    check-cast p0, Lc8/oyq;

    .end local p0    # "source":Lc8/Vlq;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/oyq;->scalarFlatMap(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    .line 2286
    .restart local p0    # "source":Lc8/Vlq;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/Jsq;->instance(Z)Lc8/Jsq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    goto :goto_0
.end method

.method public static merge(Lc8/Vlq;I)Lc8/Vlq;
    .locals 2
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;I)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2320
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lc8/oyq;

    if-ne v0, v1, :cond_0

    .line 2321
    check-cast p0, Lc8/oyq;

    .end local p0    # "source":Lc8/Vlq;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/oyq;->scalarFlatMap(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    .line 2323
    :goto_0
    return-object v0

    .restart local p0    # "source":Lc8/Vlq;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lc8/Jsq;->instance(ZI)Lc8/Jsq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    goto :goto_0
.end method

.method public static merge(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2351
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lc8/Vlq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lc8/Vlq;->merge([Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2381
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lc8/Vlq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lc8/Vlq;->merge([Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2413
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lc8/Vlq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lc8/Vlq;->merge([Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2447
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Lc8/Vlq;->merge([Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2483
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Lc8/Vlq;->merge([Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2521
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Lc8/Vlq;->merge([Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2561
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p7, "t8":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Lc8/Vlq;->merge([Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2603
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p7, "t8":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p8, "t9":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Lc8/Vlq;->merge([Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Ljava/lang/Iterable;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2223
    .local p0, "sequences":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lc8/Vlq;->from(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->merge(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Ljava/lang/Iterable;I)Lc8/Vlq;
    .locals 1
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;I)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2254
    .local p0, "sequences":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lc8/Vlq;->from(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Vlq;->merge(Lc8/Vlq;I)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge([Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2628
    .local p0, "sequences":[Lc8/Vlq;, "[Lrx/Observable<+TT;>;"
    invoke-static {p0}, Lc8/Vlq;->from([Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->merge(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static merge([Lc8/Vlq;I)Lc8/Vlq;
    .locals 1
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lc8/Vlq",
            "<+TT;>;I)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2657
    .local p0, "sequences":[Lc8/Vlq;, "[Lrx/Observable<+TT;>;"
    invoke-static {p0}, Lc8/Vlq;->from([Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Vlq;->merge(Lc8/Vlq;I)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2690
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Lc8/Jsq;->instance(Z)Lc8/Jsq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lc8/Vlq;I)Lc8/Vlq;
    .locals 1
    .param p1, "maxConcurrent"    # I
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;I)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2727
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lc8/Jsq;->instance(ZI)Lc8/Jsq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2821
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->mergeDelayError(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2857
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->mergeDelayError(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2895
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->mergeDelayError(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2935
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->mergeDelayError(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2977
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p5}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->mergeDelayError(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3022
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p6}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->mergeDelayError(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3068
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p7, "t8":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p7}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->mergeDelayError(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3116
    .local p0, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p7, "t8":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p8, "t9":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p8}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->mergeDelayError(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2756
    .local p0, "sequences":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lc8/Vlq;->from(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->mergeDelayError(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;I)Lc8/Vlq;
    .locals 1
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;I)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2787
    .local p0, "sequences":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lc8/Vlq;->from(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Vlq;->mergeDelayError(Lc8/Vlq;I)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static never()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3157
    invoke-static {}, Lrx/internal/operators/NeverObservableHolder;->instance()Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static range(II)Lc8/Vlq;
    .locals 2
    .param p0, "start"    # I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3182
    if-gez p1, :cond_0

    .line 3183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Count can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3185
    :cond_0
    if-nez p1, :cond_1

    .line 3186
    invoke-static {}, Lc8/Vlq;->empty()Lc8/Vlq;

    move-result-object v0

    .line 3194
    :goto_0
    return-object v0

    .line 3188
    :cond_1
    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    if-le p0, v0, :cond_2

    .line 3189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start + count can not exceed Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3191
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 3192
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    goto :goto_0

    .line 3194
    :cond_3
    new-instance v0, Lc8/lqq;

    add-int/lit8 v1, p1, -0x1

    add-int/2addr v1, p0

    invoke-direct {v0, p0, v1}, Lc8/lqq;-><init>(II)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    goto :goto_0
.end method

.method public static range(IILc8/amq;)Lc8/Vlq;
    .locals 1
    .param p0, "start"    # I
    .param p1, "count"    # I
    .param p2, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3219
    invoke-static {p0, p1}, Lc8/Vlq;->range(II)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc8/Vlq;->subscribeOn(Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static sequenceEqual(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3242
    .local p0, "first":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "second":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    sget-object v0, Lrx/internal/util/InternalObservableUtils;->OBJECT_EQUALS:Lc8/Kxq;

    invoke-static {p0, p1, v0}, Lc8/Vlq;->sequenceEqual(Lc8/Vlq;Lc8/Vlq;Lc8/Jnq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static sequenceEqual(Lc8/Vlq;Lc8/Vlq;Lc8/Jnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Jnq",
            "<-TT;-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3272
    .local p0, "first":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "second":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "equality":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-TT;Ljava/lang/Boolean;>;"
    invoke-static {p0, p1, p2}, Lc8/Rtq;->sequenceEqual(Lc8/Vlq;Lc8/Vlq;Lc8/Jnq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method static subscribe(Lc8/Omq;Lc8/Vlq;)Lc8/Pmq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Omq",
            "<-TT;>;",
            "Lc8/Vlq",
            "<TT;>;)",
            "Lc8/Pmq;"
        }
    .end annotation

    .prologue
    .line 9929
    .local p0, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    .local p1, "observable":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    if-nez p0, :cond_0

    .line 9930
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "subscriber can not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 9932
    :cond_0
    iget-object v4, p1, Lc8/Vlq;->onSubscribe:Lc8/Rlq;

    if-nez v4, :cond_1

    .line 9933
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "onSubscribe function can not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 9941
    :cond_1
    invoke-virtual {p0}, Lc8/Omq;->onStart()V

    .line 9948
    instance-of v4, p0, Lc8/nAq;

    if-nez v4, :cond_2

    .line 9950
    new-instance v3, Lc8/nAq;

    invoke-direct {v3, p0}, Lc8/nAq;-><init>(Lc8/Omq;)V

    .end local p0    # "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    .local v3, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    move-object p0, v3

    .line 9957
    .end local v3    # "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    .restart local p0    # "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :cond_2
    :try_start_0
    iget-object v4, p1, Lc8/Vlq;->onSubscribe:Lc8/Rlq;

    invoke-static {p1, v4}, Lc8/WAq;->onObservableStart(Lc8/Vlq;Lc8/Rlq;)Lc8/Rlq;

    move-result-object v4

    invoke-interface {v4, p0}, Lc8/Rlq;->call(Ljava/lang/Object;)V

    .line 9958
    invoke-static {p0}, Lc8/WAq;->onObservableReturn(Lc8/Pmq;)Lc8/Pmq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 9980
    :goto_0
    return-object v4

    .line 9959
    :catch_0
    move-exception v0

    .line 9961
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 9963
    invoke-virtual {p0}, Lc8/Omq;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9964
    invoke-static {v0}, Lc8/WAq;->onObservableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 9980
    :goto_1
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v4

    goto :goto_0

    .line 9968
    :cond_3
    :try_start_1
    invoke-static {v0}, Lc8/WAq;->onObservableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 9969
    :catch_1
    move-exception v1

    .line 9970
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 9973
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

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

    invoke-direct {v2, v4, v1}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9975
    .local v2, "r":Ljava/lang/RuntimeException;
    invoke-static {v2}, Lc8/WAq;->onObservableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9977
    throw v2
.end method

.method public static switchOnNext(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3306
    .local p0, "sequenceOfSequences":Lc8/Vlq;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/yuq;->instance(Z)Lc8/yuq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static switchOnNextDelayError(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3344
    .local p0, "sequenceOfSequences":Lc8/Vlq;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Lc8/yuq;->instance(Z)Lc8/yuq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static timer(JJLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 6
    .param p0, "initialDelay"    # J
    .param p2, "period"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3373
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lc8/Vlq;->interval(JJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static timer(JJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 2
    .param p0, "initialDelay"    # J
    .param p2, "period"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3404
    invoke-static/range {p0 .. p5}, Lc8/Vlq;->interval(JJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 2
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3427
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc8/Vlq;->timer(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 2
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3454
    new-instance v0, Lc8/Pqq;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/Pqq;-><init>(JLjava/util/concurrent/TimeUnit;Lc8/amq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static using(Lc8/Hnq;Lc8/Inq;Lc8/inq;)Lc8/Vlq;
    .locals 1
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
            "Lc8/Vlq",
            "<+TT;>;>;",
            "Lc8/inq",
            "<-TResource;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3484
    .local p0, "resourceFactory":Lc8/Hnq;, "Lrx/functions/Func0<TResource;>;"
    .local p1, "observableFactory":Lc8/Inq;, "Lrx/functions/Func1<-TResource;+Lrx/Observable<+TT;>;>;"
    .local p2, "disposeAction":Lc8/inq;, "Lrx/functions/Action1<-TResource;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lc8/Vlq;->using(Lc8/Hnq;Lc8/Inq;Lc8/inq;Z)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static using(Lc8/Hnq;Lc8/Inq;Lc8/inq;Z)Lc8/Vlq;
    .locals 1
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
            "Lc8/Vlq",
            "<+TT;>;>;",
            "Lc8/inq",
            "<-TResource;>;Z)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3524
    .local p0, "resourceFactory":Lc8/Hnq;, "Lrx/functions/Func0<TResource;>;"
    .local p1, "observableFactory":Lc8/Inq;, "Lrx/functions/Func1<-TResource;+Lrx/Observable<+TT;>;>;"
    .local p2, "disposeAction":Lc8/inq;, "Lrx/functions/Action1<-TResource;>;"
    new-instance v0, Lc8/Vqq;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/Vqq;-><init>(Lc8/Hnq;Lc8/Inq;Lc8/inq;Z)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lc8/Vlq;Lc8/Rnq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Vlq",
            "<*>;>;",
            "Lc8/Rnq",
            "<+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3671
    .local p0, "ws":Lc8/Vlq;, "Lrx/Observable<+Lrx/Observable<*>;>;"
    .local p1, "zipFunction":Lc8/Rnq;, "Lrx/functions/FuncN<+TR;>;"
    invoke-virtual {p0}, Lc8/Vlq;->toList()Lc8/Vlq;

    move-result-object v0

    sget-object v1, Lrx/internal/util/InternalObservableUtils;->TO_ARRAY:Lc8/Vxq;

    invoke-virtual {v0, v1}, Lc8/Vlq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/qwq;

    invoke-direct {v1, p1}, Lc8/qwq;-><init>(Lc8/Rnq;)V

    invoke-virtual {v0, v1}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lc8/Vlq;Lc8/Vlq;Lc8/Jnq;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<+TT1;>;",
            "Lc8/Vlq",
            "<+TT2;>;",
            "Lc8/Jnq",
            "<-TT1;-TT2;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3723
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT2;>;"
    .local p2, "zipFunction":Lc8/Jnq;, "Lrx/functions/Func2<-TT1;-TT2;+TR;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lc8/Vlq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/qwq;

    invoke-direct {v1, p2}, Lc8/qwq;-><init>(Lc8/Jnq;)V

    invoke-virtual {v0, v1}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Knq;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<+TT1;>;",
            "Lc8/Vlq",
            "<+TT2;>;",
            "Lc8/Vlq",
            "<+TT3;>;",
            "Lc8/Knq",
            "<-TT1;-TT2;-TT3;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3779
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT3;>;"
    .local p3, "zipFunction":Lc8/Knq;, "Lrx/functions/Func3<-TT1;-TT2;-TT3;+TR;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lc8/Vlq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/qwq;

    invoke-direct {v1, p3}, Lc8/qwq;-><init>(Lc8/Knq;)V

    invoke-virtual {v0, v1}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Lnq;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<+TT1;>;",
            "Lc8/Vlq",
            "<+TT2;>;",
            "Lc8/Vlq",
            "<+TT3;>;",
            "Lc8/Vlq",
            "<+TT4;>;",
            "Lc8/Lnq",
            "<-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3838
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT4;>;"
    .local p4, "zipFunction":Lc8/Lnq;, "Lrx/functions/Func4<-TT1;-TT2;-TT3;-TT4;+TR;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lc8/Vlq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/qwq;

    invoke-direct {v1, p4}, Lc8/qwq;-><init>(Lc8/Lnq;)V

    invoke-virtual {v0, v1}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Mnq;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<+TT1;>;",
            "Lc8/Vlq",
            "<+TT2;>;",
            "Lc8/Vlq",
            "<+TT3;>;",
            "Lc8/Vlq",
            "<+TT4;>;",
            "Lc8/Vlq",
            "<+TT5;>;",
            "Lc8/Mnq",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3900
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT5;>;"
    .local p5, "zipFunction":Lc8/Mnq;, "Lrx/functions/Func5<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/qwq;

    invoke-direct {v1, p5}, Lc8/qwq;-><init>(Lc8/Mnq;)V

    invoke-virtual {v0, v1}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Nnq;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<+TT1;>;",
            "Lc8/Vlq",
            "<+TT2;>;",
            "Lc8/Vlq",
            "<+TT3;>;",
            "Lc8/Vlq",
            "<+TT4;>;",
            "Lc8/Vlq",
            "<+TT5;>;",
            "Lc8/Vlq",
            "<+TT6;>;",
            "Lc8/Nnq",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3965
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT6;>;"
    .local p6, "zipFunction":Lc8/Nnq;, "Lrx/functions/Func6<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/qwq;

    invoke-direct {v1, p6}, Lc8/qwq;-><init>(Lc8/Nnq;)V

    invoke-virtual {v0, v1}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Onq;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<+TT1;>;",
            "Lc8/Vlq",
            "<+TT2;>;",
            "Lc8/Vlq",
            "<+TT3;>;",
            "Lc8/Vlq",
            "<+TT4;>;",
            "Lc8/Vlq",
            "<+TT5;>;",
            "Lc8/Vlq",
            "<+TT6;>;",
            "Lc8/Vlq",
            "<+TT7;>;",
            "Lc8/Onq",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4033
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT6;>;"
    .local p6, "o7":Lc8/Vlq;, "Lrx/Observable<+TT7;>;"
    .local p7, "zipFunction":Lc8/Onq;, "Lrx/functions/Func7<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/qwq;

    invoke-direct {v1, p7}, Lc8/qwq;-><init>(Lc8/Onq;)V

    invoke-virtual {v0, v1}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Pnq;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<+TT1;>;",
            "Lc8/Vlq",
            "<+TT2;>;",
            "Lc8/Vlq",
            "<+TT3;>;",
            "Lc8/Vlq",
            "<+TT4;>;",
            "Lc8/Vlq",
            "<+TT5;>;",
            "Lc8/Vlq",
            "<+TT6;>;",
            "Lc8/Vlq",
            "<+TT7;>;",
            "Lc8/Vlq",
            "<+TT8;>;",
            "Lc8/Pnq",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4104
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT6;>;"
    .local p6, "o7":Lc8/Vlq;, "Lrx/Observable<+TT7;>;"
    .local p7, "o8":Lc8/Vlq;, "Lrx/Observable<+TT8;>;"
    .local p8, "zipFunction":Lc8/Pnq;, "Lrx/functions/Func8<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/qwq;

    invoke-direct {v1, p8}, Lc8/qwq;-><init>(Lc8/Pnq;)V

    invoke-virtual {v0, v1}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Qnq;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<+TT1;>;",
            "Lc8/Vlq",
            "<+TT2;>;",
            "Lc8/Vlq",
            "<+TT3;>;",
            "Lc8/Vlq",
            "<+TT4;>;",
            "Lc8/Vlq",
            "<+TT5;>;",
            "Lc8/Vlq",
            "<+TT6;>;",
            "Lc8/Vlq",
            "<+TT7;>;",
            "Lc8/Vlq",
            "<+TT8;>;",
            "Lc8/Vlq",
            "<+TT9;>;",
            "Lc8/Qnq",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4178
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT6;>;"
    .local p6, "o7":Lc8/Vlq;, "Lrx/Observable<+TT7;>;"
    .local p7, "o8":Lc8/Vlq;, "Lrx/Observable<+TT8;>;"
    .local p8, "o9":Lc8/Vlq;, "Lrx/Observable<+TT9;>;"
    .local p9, "zipFunction":Lc8/Qnq;, "Lrx/functions/Func9<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lc8/Vlq;

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

    invoke-static {v0}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/qwq;

    invoke-direct {v1, p9}, Lc8/qwq;-><init>(Lc8/Qnq;)V

    invoke-virtual {v0, v1}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Ljava/lang/Iterable;Lc8/Rnq;)Lc8/Vlq;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Vlq",
            "<*>;>;",
            "Lc8/Rnq",
            "<+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3571
    .local p0, "ws":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<*>;>;"
    .local p1, "zipFunction":Lc8/Rnq;, "Lrx/functions/FuncN<+TR;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3572
    .local v2, "os":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<*>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Vlq;

    .line 3573
    .local v1, "o":Lc8/Vlq;, "Lrx/Observable<*>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3575
    .end local v1    # "o":Lc8/Vlq;, "Lrx/Observable<*>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lc8/Vlq;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v3

    new-instance v4, Lc8/qwq;

    invoke-direct {v4, p1}, Lc8/qwq;-><init>(Lc8/Rnq;)V

    invoke-virtual {v3, v4}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v3

    return-object v3
.end method

.method public static zip([Lc8/Vlq;Lc8/Rnq;)Lc8/Vlq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Lc8/Vlq",
            "<*>;",
            "Lc8/Rnq",
            "<+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3624
    .local p0, "ws":[Lc8/Vlq;, "[Lrx/Observable<*>;"
    .local p1, "zipFunction":Lc8/Rnq;, "Lrx/functions/FuncN<+TR;>;"
    invoke-static {p0}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/qwq;

    invoke-direct {v1, p1}, Lc8/qwq;-><init>(Lc8/Rnq;)V

    invoke-virtual {v0, v1}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final all(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4201
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lc8/Xqq;

    invoke-direct {v0, p1}, Lc8/Xqq;-><init>(Lc8/Inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final ambWith(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4224
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1}, Lc8/Vlq;->amb(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final asObservable()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4242
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/brq;->instance()Lc8/brq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(I)Lc8/Vlq;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4295
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p1}, Lc8/Vlq;->buffer(II)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(II)Lc8/Vlq;
    .locals 1
    .param p1, "count"    # I
    .param p2, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4325
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/krq;

    invoke-direct {v0, p1, p2}, Lc8/krq;-><init>(II)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JJLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4355
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lc8/Vlq;->buffer(JJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4387
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v1, Lc8/urq;

    const v7, 0x7fffffff

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lc8/urq;-><init>(JJLjava/util/concurrent/TimeUnit;ILc8/amq;)V

    invoke-virtual {p0, v1}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 7
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4415
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    const v5, 0x7fffffff

    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lc8/Vlq;->buffer(JLjava/util/concurrent/TimeUnit;ILc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;I)Lc8/Vlq;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4447
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v1, Lc8/urq;

    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v8

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lc8/urq;-><init>(JJLjava/util/concurrent/TimeUnit;ILc8/amq;)V

    invoke-virtual {p0, v1}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;ILc8/amq;)Lc8/Vlq;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "count"    # I
    .param p5, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4482
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v1, Lc8/urq;

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lc8/urq;-><init>(JJLjava/util/concurrent/TimeUnit;ILc8/amq;)V

    invoke-virtual {p0, v1}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4513
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lc8/Vlq;->buffer(JJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Lc8/Hnq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<+TTClosing;>;>;)",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4269
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "bufferClosingSelector":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/Observable<+TTClosing;>;>;"
    new-instance v0, Lc8/frq;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Lc8/frq;-><init>(Lc8/Hnq;I)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TB;>;)",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4572
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "boundary":Lc8/Vlq;, "Lrx/Observable<TB;>;"
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lc8/Vlq;->buffer(Lc8/Vlq;I)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Lc8/Vlq;I)Lc8/Vlq;
    .locals 1
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TB;>;I)",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4604
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "boundary":Lc8/Vlq;, "Lrx/Observable<TB;>;"
    new-instance v0, Lc8/frq;

    invoke-direct {v0, p1, p2}, Lc8/frq;-><init>(Lc8/Vlq;I)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Lc8/Vlq;Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TTOpening;>;",
            "Lc8/Inq",
            "<-TTOpening;+",
            "Lc8/Vlq",
            "<+TTClosing;>;>;)",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4542
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "bufferOpenings":Lc8/Vlq;, "Lrx/Observable<+TTOpening;>;"
    .local p2, "bufferClosingSelector":Lc8/Inq;, "Lrx/functions/Func1<-TTOpening;+Lrx/Observable<+TTClosing;>;>;"
    new-instance v0, Lc8/orq;

    invoke-direct {v0, p1, p2}, Lc8/orq;-><init>(Lc8/Vlq;Lc8/Inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final cache()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4659
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lc8/Foq;->from(Lc8/Vlq;)Lc8/Foq;

    move-result-object v0

    return-object v0
.end method

.method public final cache(I)Lc8/Vlq;
    .locals 1
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4672
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lc8/Vlq;->cacheWithInitialCapacity(I)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final cacheWithInitialCapacity(I)Lc8/Vlq;
    .locals 1
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4731
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p0, p1}, Lc8/Foq;->from(Lc8/Vlq;I)Lc8/Foq;

    move-result-object v0

    return-object v0
.end method

.method public final cast(Ljava/lang/Class;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4756
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    new-instance v0, Lc8/wrq;

    invoke-direct {v0, p1}, Lc8/wrq;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final collect(Lc8/Hnq;Lc8/jnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<TR;>;",
            "Lc8/jnq",
            "<TR;-TT;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4791
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "stateFactory":Lc8/Hnq;, "Lrx/functions/Func0<TR;>;"
    .local p2, "collector":Lc8/jnq;, "Lrx/functions/Action2<TR;-TT;>;"
    new-instance v0, Lc8/kpq;

    invoke-direct {v0, p0, p1, p2}, Lc8/kpq;-><init>(Lc8/Vlq;Lc8/Hnq;Lc8/jnq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public compose(Lc8/Ulq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Ulq",
            "<-TT;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "transformer":Lc8/Ulq;, "Lrx/Observable$Transformer<-TT;+TR;>;"
    invoke-interface {p1, p0}, Lc8/Ulq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Vlq;

    return-object v0
.end method

.method public final concatMap(Lc8/Inq;)Lc8/Vlq;
    .locals 4
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
    .line 4820
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    instance-of v1, p0, Lc8/oyq;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 4821
    check-cast v0, Lc8/oyq;

    .line 4822
    .local v0, "scalar":Lc8/oyq;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    invoke-virtual {v0, p1}, Lc8/oyq;->scalarFlatMap(Lc8/Inq;)Lc8/Vlq;

    move-result-object v1

    .line 4824
    .end local v0    # "scalar":Lc8/oyq;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lc8/rpq;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lc8/rpq;-><init>(Lc8/Vlq;Lc8/Inq;II)V

    invoke-static {v1}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v1

    goto :goto_0
.end method

.method public final concatMapDelayError(Lc8/Inq;)Lc8/Vlq;
    .locals 3
    .annotation build Lc8/bnq;
    .end annotation

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
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    const/4 v2, 0x2

    .line 4850
    instance-of v1, p0, Lc8/oyq;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 4851
    check-cast v0, Lc8/oyq;

    .line 4852
    .local v0, "scalar":Lc8/oyq;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    invoke-virtual {v0, p1}, Lc8/oyq;->scalarFlatMap(Lc8/Inq;)Lc8/Vlq;

    move-result-object v1

    .line 4854
    .end local v0    # "scalar":Lc8/oyq;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lc8/rpq;

    invoke-direct {v1, p0, p1, v2, v2}, Lc8/rpq;-><init>(Lc8/Vlq;Lc8/Inq;II)V

    invoke-static {v1}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v1

    goto :goto_0
.end method

.method public final concatMapEager(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

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
    .line 6108
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "mapper":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    sget v0, Lc8/fyq;->SIZE:I

    invoke-virtual {p0, p1, v0}, Lc8/Vlq;->concatMapEager(Lc8/Inq;I)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final concatMapEager(Lc8/Inq;I)Lc8/Vlq;
    .locals 3
    .param p2, "capacityHint"    # I
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TR;>;>;I)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6134
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "mapper":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    if-gtz p2, :cond_0

    .line 6135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "capacityHint > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6137
    :cond_0
    new-instance v0, Lc8/isq;

    const v1, 0x7fffffff

    invoke-direct {v0, p1, p2, v1}, Lc8/isq;-><init>(Lc8/Inq;II)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final concatMapEager(Lc8/Inq;II)Lc8/Vlq;
    .locals 3
    .param p2, "capacityHint"    # I
    .param p3, "maxConcurrent"    # I
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TR;>;>;II)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6164
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "mapper":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    if-gtz p2, :cond_0

    .line 6165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "capacityHint > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6167
    :cond_0
    if-gtz p3, :cond_1

    .line 6168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxConcurrent > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6170
    :cond_1
    new-instance v0, Lc8/isq;

    invoke-direct {v0, p1, p2, p3}, Lc8/isq;-><init>(Lc8/Inq;II)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final concatMapIterable(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4881
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "collectionSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    sget v0, Lc8/fyq;->SIZE:I

    invoke-static {p0, p1, v0}, Lc8/Hpq;->createFrom(Lc8/Vlq;Lc8/Inq;I)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final concatWith(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4905
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Lc8/Vlq;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4928
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p1}, Lrx/internal/util/InternalObservableUtils;->equalsWith(Ljava/lang/Object;)Lc8/Inq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->exists(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final count()Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4948
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lrx/internal/util/InternalObservableUtils;->COUNTER:Lc8/Lxq;

    invoke-virtual {p0, v0, v1}, Lc8/Vlq;->reduce(Ljava/lang/Object;Lc8/Jnq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final countLong()Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4970
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lrx/internal/util/InternalObservableUtils;->LONG_COUNTER:Lc8/Mxq;

    invoke-virtual {p0, v0, v1}, Lc8/Vlq;->reduce(Ljava/lang/Object;Lc8/Jnq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final debounce(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5035
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/Vlq;->debounce(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final debounce(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5077
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Drq;

    invoke-direct {v0, p1, p2, p3, p4}, Lc8/Drq;-><init>(JLjava/util/concurrent/TimeUnit;Lc8/amq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final debounce(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<TU;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4996
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "debounceSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TU;>;>;"
    new-instance v0, Lc8/zrq;

    invoke-direct {v0, p1}, Lc8/zrq;-><init>(Lc8/Inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final defaultIfEmpty(Ljava/lang/Object;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5103
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->switchIfEmpty(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 1
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5220
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/Vlq;->delay(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5245
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Irq;

    invoke-direct {v0, p1, p2, p3, p4}, Lc8/Irq;-><init>(JLjava/util/concurrent/TimeUnit;Lc8/amq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final delay(Lc8/Hnq;Lc8/Inq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<TU;>;>;",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<TV;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5166
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "subscriptionDelay":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;"
    .local p2, "itemDelay":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    invoke-virtual {p0, p1}, Lc8/Vlq;->delaySubscription(Lc8/Hnq;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/Lrq;

    invoke-direct {v1, p0, p2}, Lc8/Lrq;-><init>(Lc8/Vlq;Lc8/Inq;)V

    invoke-virtual {v0, v1}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final delay(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<TU;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5197
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "itemDelay":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TU;>;>;"
    new-instance v0, Lc8/Lrq;

    invoke-direct {v0, p0, p1}, Lc8/Lrq;-><init>(Lc8/Vlq;Lc8/Inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 1
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5267
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/Vlq;->delaySubscription(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 7
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5293
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/upq;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/upq;-><init>(Lc8/Vlq;JLjava/util/concurrent/TimeUnit;Lc8/amq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final delaySubscription(Lc8/Hnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<TU;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5319
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "subscriptionDelay":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;"
    new-instance v0, Lc8/ypq;

    invoke-direct {v0, p0, p1}, Lc8/ypq;-><init>(Lc8/Vlq;Lc8/Hnq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final delaySubscription(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TU;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5342
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "other":Lc8/Vlq;, "Lrx/Observable<TU;>;"
    if-nez p1, :cond_0

    .line 5343
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5345
    :cond_0
    new-instance v0, Lc8/wpq;

    invoke-direct {v0, p0, p1}, Lc8/wpq;-><init>(Lc8/Vlq;Lc8/Vlq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final dematerialize()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/Vlq",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 5371
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/Prq;->instance()Lc8/Prq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final distinct()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5391
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/Srq;->instance()Lc8/Srq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final distinct(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+TU;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5415
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TU;>;"
    new-instance v0, Lc8/Srq;

    invoke-direct {v0, p1}, Lc8/Srq;-><init>(Lc8/Inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final distinctUntilChanged()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5436
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/Vrq;->instance()Lc8/Vrq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final distinctUntilChanged(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+TU;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5461
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TU;>;"
    new-instance v0, Lc8/Vrq;

    invoke-direct {v0, p1}, Lc8/Vrq;-><init>(Lc8/Inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final distinctUntilChanged(Lc8/Jnq;)Lc8/Vlq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Jnq",
            "<-TT;-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5487
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "comparator":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lc8/Vrq;

    invoke-direct {v0, p1}, Lc8/Vrq;-><init>(Lc8/Jnq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final doAfterTerminate(Lc8/hnq;)Lc8/Vlq;
    .locals 1
    .param p1, "action"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hnq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6324
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Xrq;

    invoke-direct {v0, p1}, Lc8/Xrq;-><init>(Lc8/hnq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final doOnCompleted(Lc8/hnq;)Lc8/Vlq;
    .locals 4
    .param p1, "onCompleted"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hnq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5508
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v2

    .line 5509
    .local v2, "onNext":Lc8/inq;, "Lrx/functions/Action1<TT;>;"
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v1

    .line 5510
    .local v1, "onError":Lc8/inq;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    new-instance v0, Lc8/xxq;

    invoke-direct {v0, v2, v1, p1}, Lc8/xxq;-><init>(Lc8/inq;Lc8/inq;Lc8/hnq;)V

    .line 5512
    .local v0, "observer":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    new-instance v3, Lc8/Zrq;

    invoke-direct {v3, v0}, Lc8/Zrq;-><init>(Lc8/Wlq;)V

    invoke-virtual {p0, v3}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v3

    return-object v3
.end method

.method public final doOnEach(Lc8/Wlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Wlq",
            "<-TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5562
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "observer":Lc8/Wlq;, "Lrx/Observer<-TT;>;"
    new-instance v0, Lc8/Zrq;

    invoke-direct {v0, p1}, Lc8/Zrq;-><init>(Lc8/Wlq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final doOnEach(Lc8/inq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<",
            "Lc8/Qlq",
            "<-TT;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5533
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "onNotification":Lc8/inq;, "Lrx/functions/Action1<Lrx/Notification<-TT;>;>;"
    new-instance v0, Lc8/wxq;

    invoke-direct {v0, p1}, Lc8/wxq;-><init>(Lc8/inq;)V

    .line 5535
    .local v0, "observer":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    new-instance v1, Lc8/Zrq;

    invoke-direct {v1, v0}, Lc8/Zrq;-><init>(Lc8/Wlq;)V

    invoke-virtual {p0, v1}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v1

    return-object v1
.end method

.method public final doOnError(Lc8/inq;)Lc8/Vlq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5586
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "onError":Lc8/inq;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v2

    .line 5587
    .local v2, "onNext":Lc8/inq;, "Lrx/functions/Action1<TT;>;"
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v1

    .line 5588
    .local v1, "onCompleted":Lc8/hnq;
    new-instance v0, Lc8/xxq;

    invoke-direct {v0, v2, p1, v1}, Lc8/xxq;-><init>(Lc8/inq;Lc8/inq;Lc8/hnq;)V

    .line 5590
    .local v0, "observer":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    new-instance v3, Lc8/Zrq;

    invoke-direct {v3, v0}, Lc8/Zrq;-><init>(Lc8/Wlq;)V

    invoke-virtual {p0, v3}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v3

    return-object v3
.end method

.method public final doOnNext(Lc8/inq;)Lc8/Vlq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5611
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v2

    .line 5612
    .local v2, "onError":Lc8/inq;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v1

    .line 5613
    .local v1, "onCompleted":Lc8/hnq;
    new-instance v0, Lc8/xxq;

    invoke-direct {v0, p1, v2, v1}, Lc8/xxq;-><init>(Lc8/inq;Lc8/inq;Lc8/hnq;)V

    .line 5615
    .local v0, "observer":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    new-instance v3, Lc8/Zrq;

    invoke-direct {v3, v0}, Lc8/Zrq;-><init>(Lc8/Wlq;)V

    invoke-virtual {p0, v3}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v3

    return-object v3
.end method

.method public final doOnRequest(Lc8/inq;)Lc8/Vlq;
    .locals 1
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5643
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "onRequest":Lc8/inq;, "Lrx/functions/Action1<Ljava/lang/Long;>;"
    new-instance v0, Lc8/csq;

    invoke-direct {v0, p1}, Lc8/csq;-><init>(Lc8/inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final doOnSubscribe(Lc8/hnq;)Lc8/Vlq;
    .locals 1
    .param p1, "subscribe"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hnq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5667
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/dsq;

    invoke-direct {v0, p1}, Lc8/dsq;-><init>(Lc8/hnq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final doOnTerminate(Lc8/hnq;)Lc8/Vlq;
    .locals 4
    .param p1, "onTerminate"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hnq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5693
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v2

    .line 5694
    .local v2, "onNext":Lc8/inq;, "Lrx/functions/Action1<TT;>;"
    invoke-static {p1}, Lc8/Gnq;->toAction1(Lc8/hnq;)Lc8/inq;

    move-result-object v1

    .line 5696
    .local v1, "onError":Lc8/inq;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    new-instance v0, Lc8/xxq;

    invoke-direct {v0, v2, v1, p1}, Lc8/xxq;-><init>(Lc8/inq;Lc8/inq;Lc8/hnq;)V

    .line 5698
    .local v0, "observer":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    new-instance v3, Lc8/Zrq;

    invoke-direct {v3, v0}, Lc8/Zrq;-><init>(Lc8/Wlq;)V

    invoke-virtual {p0, v3}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v3

    return-object v3
.end method

.method public final doOnUnsubscribe(Lc8/hnq;)Lc8/Vlq;
    .locals 1
    .param p1, "unsubscribe"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hnq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5727
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/esq;

    invoke-direct {v0, p1}, Lc8/esq;-><init>(Lc8/hnq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final elementAt(I)Lc8/Vlq;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6197
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/ksq;

    invoke-direct {v0, p1}, Lc8/ksq;-><init>(I)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final elementAtOrDefault(ILjava/lang/Object;)Lc8/Vlq;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6224
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lc8/ksq;

    invoke-direct {v0, p1, p2}, Lc8/ksq;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final exists(Lc8/Inq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6251
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lc8/Zqq;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lc8/Zqq;-><init>(Lc8/Inq;Z)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public extend(Lc8/Inq;)Ljava/lang/Object;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-",
            "Lc8/Rlq",
            "<TT;>;+TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "conversion":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable$OnSubscribe<TT;>;+TR;>;"
    new-instance v0, Lc8/Slq;

    invoke-direct {v0, p0}, Lc8/Slq;-><init>(Lc8/Vlq;)V

    invoke-interface {p1, v0}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6274
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lc8/Dpq;

    invoke-direct {v0, p0, p1}, Lc8/Dpq;-><init>(Lc8/Vlq;Lc8/Inq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final finallyDo(Lc8/hnq;)Lc8/Vlq;
    .locals 1
    .param p1, "action"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hnq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6300
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Xrq;

    invoke-direct {v0, p1}, Lc8/Xrq;-><init>(Lc8/hnq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final first()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6345
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/Vlq;->take(I)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->single()Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final first(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6368
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lc8/Vlq;->takeFirst(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->single()Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final firstOrDefault(Ljava/lang/Object;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6391
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/Vlq;->take(I)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vlq;->singleOrDefault(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final firstOrDefault(Ljava/lang/Object;Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6417
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p2}, Lc8/Vlq;->takeFirst(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vlq;->singleOrDefault(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lc8/Inq;)Lc8/Vlq;
    .locals 2
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
    .line 6445
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lc8/oyq;

    if-ne v0, v1, :cond_0

    .line 6446
    check-cast p0, Lc8/oyq;

    .end local p0    # "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lc8/oyq;->scalarFlatMap(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    .line 6448
    :goto_0
    return-object v0

    .restart local p0    # "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Lc8/Vlq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->merge(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    goto :goto_0
.end method

.method public final flatMap(Lc8/Inq;I)Lc8/Vlq;
    .locals 2
    .param p2, "maxConcurrent"    # I
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TR;>;>;I)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6480
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lc8/oyq;

    if-ne v0, v1, :cond_0

    .line 6481
    check-cast p0, Lc8/oyq;

    .end local p0    # "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lc8/oyq;->scalarFlatMap(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    .line 6483
    :goto_0
    return-object v0

    .restart local p0    # "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Lc8/Vlq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0, p2}, Lc8/Vlq;->merge(Lc8/Vlq;I)Lc8/Vlq;

    move-result-object v0

    goto :goto_0
.end method

.method public final flatMap(Lc8/Inq;Lc8/Inq;Lc8/Hnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TR;>;>;",
            "Lc8/Inq",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lc8/Vlq",
            "<+TR;>;>;",
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<+TR;>;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6518
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    .local p2, "onError":Lc8/Inq;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+Lrx/Observable<+TR;>;>;"
    .local p3, "onCompleted":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/Observable<+TR;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lc8/Vlq;->mapNotification(Lc8/Inq;Lc8/Inq;Lc8/Hnq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->merge(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lc8/Inq;Lc8/Inq;Lc8/Hnq;I)Lc8/Vlq;
    .locals 1
    .param p4, "maxConcurrent"    # I
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TR;>;>;",
            "Lc8/Inq",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lc8/Vlq",
            "<+TR;>;>;",
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<+TR;>;>;I)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6556
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    .local p2, "onError":Lc8/Inq;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+Lrx/Observable<+TR;>;>;"
    .local p3, "onCompleted":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/Observable<+TR;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lc8/Vlq;->mapNotification(Lc8/Inq;Lc8/Inq;Lc8/Hnq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0, p4}, Lc8/Vlq;->merge(Lc8/Vlq;I)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lc8/Inq;Lc8/Jnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TU;>;>;",
            "Lc8/Jnq",
            "<-TT;-TU;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6587
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "collectionSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TU;>;>;"
    .local p2, "resultSelector":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    new-instance v0, Lc8/Asq;

    invoke-direct {v0, p1, p2}, Lc8/Asq;-><init>(Lc8/Inq;Lc8/Jnq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->merge(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lc8/Inq;Lc8/Jnq;I)Lc8/Vlq;
    .locals 1
    .param p3, "maxConcurrent"    # I
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TU;>;>;",
            "Lc8/Jnq",
            "<-TT;-TU;+TR;>;I)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6622
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "collectionSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TU;>;>;"
    .local p2, "resultSelector":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    new-instance v0, Lc8/Asq;

    invoke-direct {v0, p1, p2}, Lc8/Asq;-><init>(Lc8/Inq;Lc8/Jnq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0, p3}, Lc8/Vlq;->merge(Lc8/Vlq;I)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final flatMapIterable(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6649
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "collectionSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    sget v0, Lc8/fyq;->SIZE:I

    invoke-virtual {p0, p1, v0}, Lc8/Vlq;->flatMapIterable(Lc8/Inq;I)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final flatMapIterable(Lc8/Inq;I)Lc8/Vlq;
    .locals 1
    .param p2, "maxConcurrent"    # I
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;I)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6683
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "collectionSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-static {p0, p1, p2}, Lc8/Hpq;->createFrom(Lc8/Vlq;Lc8/Inq;I)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final flatMapIterable(Lc8/Inq;Lc8/Jnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TU;>;>;",
            "Lc8/Jnq",
            "<-TT;-TU;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6716
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "collectionSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TU;>;>;"
    .local p2, "resultSelector":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    invoke-static {p1}, Lc8/Asq;->convertSelector(Lc8/Inq;)Lc8/Inq;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lc8/Vlq;->flatMap(Lc8/Inq;Lc8/Jnq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final flatMapIterable(Lc8/Inq;Lc8/Jnq;I)Lc8/Vlq;
    .locals 1
    .param p3, "maxConcurrent"    # I
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TU;>;>;",
            "Lc8/Jnq",
            "<-TT;-TU;+TR;>;I)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6757
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "collectionSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TU;>;>;"
    .local p2, "resultSelector":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    invoke-static {p1}, Lc8/Asq;->convertSelector(Lc8/Inq;)Lc8/Inq;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lc8/Vlq;->flatMap(Lc8/Inq;Lc8/Jnq;I)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final forEach(Lc8/inq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 6781
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    invoke-virtual {p0, p1}, Lc8/Vlq;->subscribe(Lc8/inq;)Lc8/Pmq;

    .line 6782
    return-void
.end method

.method public final forEach(Lc8/inq;Lc8/inq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-TT;>;",
            "Lc8/inq",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6808
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lc8/inq;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-virtual {p0, p1, p2}, Lc8/Vlq;->subscribe(Lc8/inq;Lc8/inq;)Lc8/Pmq;

    .line 6809
    return-void
.end method

.method public final forEach(Lc8/inq;Lc8/inq;Lc8/hnq;)V
    .locals 0
    .param p3, "onComplete"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-TT;>;",
            "Lc8/inq",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lc8/hnq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 6838
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lc8/inq;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-virtual {p0, p1, p2, p3}, Lc8/Vlq;->subscribe(Lc8/inq;Lc8/inq;Lc8/hnq;)Lc8/Pmq;

    .line 6839
    return-void
.end method

.method public final groupBy(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+TK;>;)",
            "Lc8/Vlq",
            "<",
            "Lc8/Xzq",
            "<TK;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 6981
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    new-instance v0, Lc8/qsq;

    invoke-direct {v0, p1}, Lc8/qsq;-><init>(Lc8/Inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final groupBy(Lc8/Inq;Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+TK;>;",
            "Lc8/Inq",
            "<-TT;+TR;>;)",
            "Lc8/Vlq",
            "<",
            "Lc8/Xzq",
            "<TK;TR;>;>;"
        }
    .end annotation

    .prologue
    .line 6879
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "elementSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TR;>;"
    new-instance v0, Lc8/qsq;

    invoke-direct {v0, p1, p2}, Lc8/qsq;-><init>(Lc8/Inq;Lc8/Inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final groupBy(Lc8/Inq;Lc8/Inq;Lc8/Inq;)Lc8/Vlq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+TK;>;",
            "Lc8/Inq",
            "<-TT;+TR;>;",
            "Lc8/Inq",
            "<",
            "Lc8/inq",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lc8/Vlq",
            "<",
            "Lc8/Xzq",
            "<TK;TR;>;>;"
        }
    .end annotation

    .prologue
    .line 6941
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "elementSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TR;>;"
    .local p3, "evictingMapFactory":Lc8/Inq;, "Lrx/functions/Func1<Lrx/functions/Action1<TK;>;Ljava/util/Map<TK;Ljava/lang/Object;>;>;"
    if-nez p3, :cond_0

    .line 6942
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "evictingMapFactory cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6944
    :cond_0
    new-instance v0, Lc8/qsq;

    invoke-direct {v0, p1, p2, p3}, Lc8/qsq;-><init>(Lc8/Inq;Lc8/Inq;Lc8/Inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final groupJoin(Lc8/Vlq;Lc8/Inq;Lc8/Inq;Lc8/Jnq;)Lc8/Vlq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "D1:",
            "Ljava/lang/Object;",
            "D2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT2;>;",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<TD1;>;>;",
            "Lc8/Inq",
            "<-TT2;+",
            "Lc8/Vlq",
            "<TD2;>;>;",
            "Lc8/Jnq",
            "<-TT;-",
            "Lc8/Vlq",
            "<TT2;>;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7021
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "right":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    .local p2, "leftDuration":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TD1;>;>;"
    .local p3, "rightDuration":Lc8/Inq;, "Lrx/functions/Func1<-TT2;+Lrx/Observable<TD2;>;>;"
    .local p4, "resultSelector":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-Lrx/Observable<TT2;>;+TR;>;"
    new-instance v0, Lc8/Upq;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/Upq;-><init>(Lc8/Vlq;Lc8/Vlq;Lc8/Inq;Lc8/Inq;Lc8/Jnq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final ignoreElements()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7041
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/tsq;->instance()Lc8/tsq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7063
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    sget-object v0, Lrx/internal/util/InternalObservableUtils;->IS_EMPTY:Lc8/Tlq;

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final join(Lc8/Vlq;Lc8/Inq;Lc8/Inq;Lc8/Jnq;)Lc8/Vlq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftDuration:Ljava/lang/Object;",
            "TRightDuration:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TTRight;>;",
            "Lc8/Inq",
            "<TT;",
            "Lc8/Vlq",
            "<TT",
            "LeftDuration;",
            ">;>;",
            "Lc8/Inq",
            "<TTRight;",
            "Lc8/Vlq",
            "<TTRightDuration;>;>;",
            "Lc8/Jnq",
            "<TT;TTRight;TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7103
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "right":Lc8/Vlq;, "Lrx/Observable<TTRight;>;"
    .local p2, "leftDurationSelector":Lc8/Inq;, "Lrx/functions/Func1<TT;Lrx/Observable<TTLeftDuration;>;>;"
    .local p3, "rightDurationSelector":Lc8/Inq;, "Lrx/functions/Func1<TTRight;Lrx/Observable<TTRightDuration;>;>;"
    .local p4, "resultSelector":Lc8/Jnq;, "Lrx/functions/Func2<TT;TTRight;TR;>;"
    new-instance v0, Lc8/aqq;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/aqq;-><init>(Lc8/Vlq;Lc8/Vlq;Lc8/Inq;Lc8/Inq;Lc8/Jnq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final last()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7124
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/Vlq;->takeLast(I)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->single()Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final last(Lc8/Inq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7149
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lc8/Vlq;->filter(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/Vlq;->takeLast(I)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->single()Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final lastOrDefault(Ljava/lang/Object;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7172
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/Vlq;->takeLast(I)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vlq;->singleOrDefault(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final lastOrDefault(Ljava/lang/Object;Lc8/Inq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7198
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p2}, Lc8/Vlq;->filter(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/Vlq;->takeLast(I)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vlq;->singleOrDefault(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final lift(Lc8/Tlq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Tlq",
            "<+TR;-TT;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "operator":Lc8/Tlq;, "Lrx/Observable$Operator<+TR;-TT;>;"
    new-instance v0, Lc8/bqq;

    iget-object v1, p0, Lc8/Vlq;->onSubscribe:Lc8/Rlq;

    invoke-direct {v0, v1, p1}, Lc8/bqq;-><init>(Lc8/Rlq;Lc8/Tlq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final limit(I)Lc8/Vlq;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7227
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lc8/Vlq;->take(I)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final map(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7251
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TR;>;"
    new-instance v0, Lc8/dqq;

    invoke-direct {v0, p0, p1}, Lc8/dqq;-><init>(Lc8/Vlq;Lc8/Inq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final materialize()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<",
            "Lc8/Qlq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 7276
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/Esq;->instance()Lc8/Esq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final mergeWith(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7300
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1}, Lc8/Vlq;->merge(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final nest()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3135
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7334
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    sget v0, Lc8/fyq;->SIZE:I

    invoke-virtual {p0, p1, v0}, Lc8/Vlq;->observeOn(Lc8/amq;I)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lc8/amq;I)Lc8/Vlq;
    .locals 1
    .param p1, "scheduler"    # Lc8/amq;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/amq;",
            "I)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7368
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lc8/Vlq;->observeOn(Lc8/amq;ZI)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lc8/amq;Z)Lc8/Vlq;
    .locals 1
    .param p1, "scheduler"    # Lc8/amq;
    .param p2, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/amq;",
            "Z)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7403
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    sget v0, Lc8/fyq;->SIZE:I

    invoke-virtual {p0, p1, p2, v0}, Lc8/Vlq;->observeOn(Lc8/amq;ZI)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lc8/amq;ZI)Lc8/Vlq;
    .locals 1
    .param p1, "scheduler"    # Lc8/amq;
    .param p2, "delayError"    # Z
    .param p3, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/amq;",
            "ZI)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7439
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    instance-of v0, p0, Lc8/oyq;

    if-eqz v0, :cond_0

    .line 7440
    check-cast p0, Lc8/oyq;

    .end local p0    # "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lc8/oyq;->scalarScheduleOn(Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    .line 7442
    :goto_0
    return-object v0

    .restart local p0    # "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    :cond_0
    new-instance v0, Lc8/Rsq;

    invoke-direct {v0, p1, p2, p3}, Lc8/Rsq;-><init>(Lc8/amq;ZI)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    goto :goto_0
.end method

.method public final ofType(Ljava/lang/Class;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7464
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-static {p1}, Lrx/internal/util/InternalObservableUtils;->isInstanceOf(Ljava/lang/Class;)Lc8/Inq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->filter(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vlq;->cast(Ljava/lang/Class;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureBuffer()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7484
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/Usq;->instance()Lc8/Usq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureBuffer(J)Lc8/Vlq;
    .locals 1
    .param p1, "capacity"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7508
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Usq;

    invoke-direct {v0, p1, p2}, Lc8/Usq;-><init>(J)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureBuffer(JLc8/hnq;)Lc8/Vlq;
    .locals 1
    .param p1, "capacity"    # J
    .param p3, "onOverflow"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lc8/hnq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7533
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Usq;

    invoke-direct {v0, p1, p2, p3}, Lc8/Usq;-><init>(JLc8/hnq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureBuffer(JLc8/hnq;Lc8/Fkq;)Lc8/Vlq;
    .locals 1
    .param p1, "capacity"    # J
    .param p3, "onOverflow"    # Lc8/hnq;
    .param p4, "overflowStrategy"    # Lc8/Fkq;
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lc8/hnq;",
            "Lc8/Fkq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7571
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Usq;

    invoke-direct {v0, p1, p2, p3, p4}, Lc8/Usq;-><init>(JLc8/hnq;Lc8/Fkq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureDrop()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7620
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/Ysq;->instance()Lc8/Ysq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureDrop(Lc8/inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7597
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "onDrop":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    new-instance v0, Lc8/Ysq;

    invoke-direct {v0, p1}, Lc8/Ysq;-><init>(Lc8/inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureLatest()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7650
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/btq;->instance()Lc8/btq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorResumeNext(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lc8/Vlq",
            "<+TT;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7689
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "resumeFunction":Lc8/Inq;, "Lrx/functions/Func1<Ljava/lang/Throwable;+Lrx/Observable<+TT;>;>;"
    new-instance v0, Lc8/htq;

    invoke-direct {v0, p1}, Lc8/htq;-><init>(Lc8/Inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorResumeNext(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7729
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "resumeSequence":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {p1}, Lc8/htq;->withOther(Lc8/Vlq;)Lc8/htq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorReturn(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7765
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "resumeFunction":Lc8/Inq;, "Lrx/functions/Func1<Ljava/lang/Throwable;+TT;>;"
    invoke-static {p1}, Lc8/htq;->withSingle(Lc8/Inq;)Lc8/htq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final onExceptionResumeNext(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7808
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "resumeSequence":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {p1}, Lc8/htq;->withException(Lc8/Vlq;)Lc8/htq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final onTerminateDetach()Lc8/Vlq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7828
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Bpq;

    invoke-direct {v0, p0}, Lc8/Bpq;-><init>(Lc8/Vlq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final publish(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;+",
            "Lc8/Vlq",
            "<TR;>;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7880
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    invoke-static {p0, p1}, Lc8/ntq;->create(Lc8/Vlq;Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final publish()Lc8/Vzq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7851
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lc8/ntq;->create(Lc8/Vlq;)Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method

.method public final rebatchRequests(I)Lc8/Vlq;
    .locals 3
    .param p1, "n"    # I
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7903
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    if-gtz p1, :cond_0

    .line 7904
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "n > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7906
    :cond_0
    invoke-static {p1}, Lc8/Rsq;->rebatch(I)Lc8/Tlq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final reduce(Lc8/Jnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Jnq",
            "<TT;TT;TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7945
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "accumulator":Lc8/Jnq;, "Lrx/functions/Func2<TT;TT;TT;>;"
    new-instance v0, Lc8/Cqq;

    invoke-direct {v0, p0, p1}, Lc8/Cqq;-><init>(Lc8/Vlq;Lc8/Jnq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final reduce(Ljava/lang/Object;Lc8/Jnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lc8/Jnq",
            "<TR;-TT;TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7993
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "accumulator":Lc8/Jnq;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    new-instance v0, Lc8/Eqq;

    invoke-direct {v0, p0, p1, p2}, Lc8/Eqq;-><init>(Lc8/Vlq;Ljava/lang/Object;Lc8/Jnq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final repeat()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8012
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lc8/zqq;->repeat(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(J)Lc8/Vlq;
    .locals 1
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8060
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p0, p1, p2}, Lc8/zqq;->repeat(Lc8/Vlq;J)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(JLc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "count"    # J
    .param p3, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8086
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p0, p1, p2, p3}, Lc8/zqq;->repeat(Lc8/Vlq;JLc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8034
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p0, p1}, Lc8/zqq;->repeat(Lc8/Vlq;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final repeatWhen(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lc8/Vlq",
            "<*>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8140
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Void;>;+Lrx/Observable<*>;>;"
    invoke-static {p1}, Lrx/internal/util/InternalObservableUtils;->createRepeatDematerializer(Lc8/Inq;)Lc8/Inq;

    move-result-object v0

    invoke-static {p0, v0}, Lc8/zqq;->repeat(Lc8/Vlq;Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final repeatWhen(Lc8/Inq;Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p2, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lc8/Vlq",
            "<*>;>;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8114
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Void;>;+Lrx/Observable<*>;>;"
    invoke-static {p1}, Lrx/internal/util/InternalObservableUtils;->createRepeatDematerializer(Lc8/Inq;)Lc8/Inq;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lc8/zqq;->repeat(Lc8/Vlq;Lc8/Inq;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;+",
            "Lc8/Vlq",
            "<TR;>;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8191
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    invoke-static {p0}, Lrx/internal/util/InternalObservableUtils;->createReplaySupplier(Lc8/Vlq;)Lc8/Hnq;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Atq;->multicastSelector(Lc8/Hnq;Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lc8/Inq;I)Lc8/Vlq;
    .locals 1
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;+",
            "Lc8/Vlq",
            "<TR;>;>;I)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8222
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    invoke-static {p0, p2}, Lrx/internal/util/InternalObservableUtils;->createReplaySupplier(Lc8/Vlq;I)Lc8/Hnq;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Atq;->multicastSelector(Lc8/Hnq;Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lc8/Inq;IJLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 9
    .param p2, "bufferSize"    # I
    .param p3, "time"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;+",
            "Lc8/Vlq",
            "<TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8258
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lc8/Vlq;->replay(Lc8/Inq;IJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lc8/Inq;IJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 7
    .param p2, "bufferSize"    # I
    .param p3, "time"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;+",
            "Lc8/Vlq",
            "<TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8298
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    if-gez p2, :cond_0

    .line 8299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bufferSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    .line 8301
    invoke-static/range {v0 .. v5}, Lrx/internal/util/InternalObservableUtils;->createReplaySupplier(Lc8/Vlq;IJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Hnq;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Atq;->multicastSelector(Lc8/Hnq;Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lc8/Inq;ILc8/amq;)Lc8/Vlq;
    .locals 2
    .param p2, "bufferSize"    # I
    .param p3, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;+",
            "Lc8/Vlq",
            "<TR;>;>;I",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8335
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    invoke-static {p0, p2}, Lrx/internal/util/InternalObservableUtils;->createReplaySupplier(Lc8/Vlq;I)Lc8/Hnq;

    move-result-object v0

    invoke-static {p1, p3}, Lrx/internal/util/InternalObservableUtils;->createReplaySelectorAndObserveOn(Lc8/Inq;Lc8/amq;)Lc8/Inq;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Atq;->multicastSelector(Lc8/Hnq;Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lc8/Inq;JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 6
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;+",
            "Lc8/Vlq",
            "<TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8369
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/Vlq;->replay(Lc8/Inq;JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lc8/Inq;JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 2
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;+",
            "Lc8/Vlq",
            "<TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8404
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    invoke-static {p0, p2, p3, p4, p5}, Lrx/internal/util/InternalObservableUtils;->createReplaySupplier(Lc8/Vlq;JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Hnq;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Atq;->multicastSelector(Lc8/Hnq;Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lc8/Inq;Lc8/amq;)Lc8/Vlq;
    .locals 2
    .param p2, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;+",
            "Lc8/Vlq",
            "<TR;>;>;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8435
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    invoke-static {p0}, Lrx/internal/util/InternalObservableUtils;->createReplaySupplier(Lc8/Vlq;)Lc8/Hnq;

    move-result-object v0

    invoke-static {p1, p2}, Lrx/internal/util/InternalObservableUtils;->createReplaySelectorAndObserveOn(Lc8/Inq;Lc8/amq;)Lc8/Inq;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Atq;->multicastSelector(Lc8/Hnq;Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final replay()Lc8/Vzq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8164
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lc8/Atq;->create(Lc8/Vlq;)Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method

.method public final replay(I)Lc8/Vzq;
    .locals 1
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8463
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p0, p1}, Lc8/Atq;->create(Lc8/Vlq;I)Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method

.method public final replay(IJLjava/util/concurrent/TimeUnit;)Lc8/Vzq;
    .locals 6
    .param p1, "bufferSize"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8494
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/Vlq;->replay(IJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method

.method public final replay(IJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vzq;
    .locals 8
    .param p1, "bufferSize"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8529
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    if-gez p1, :cond_0

    .line 8530
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bufferSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p1

    .line 8532
    invoke-static/range {v1 .. v6}, Lc8/Atq;->create(Lc8/Vlq;JLjava/util/concurrent/TimeUnit;Lc8/amq;I)Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method

.method public final replay(ILc8/amq;)Lc8/Vzq;
    .locals 1
    .param p1, "bufferSize"    # I
    .param p2, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc8/amq;",
            ")",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8560
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lc8/Vlq;->replay(I)Lc8/Vzq;

    move-result-object v0

    invoke-static {v0, p2}, Lc8/Atq;->observeOn(Lc8/Vzq;Lc8/amq;)Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method

.method public final replay(JLjava/util/concurrent/TimeUnit;)Lc8/Vzq;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8588
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/Vlq;->replay(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method

.method public final replay(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vzq;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8618
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lc8/Atq;->create(Lc8/Vlq;JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lc8/amq;)Lc8/Vzq;
    .locals 1
    .param p1, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/amq;",
            ")",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8645
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0}, Lc8/Vlq;->replay()Lc8/Vzq;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Atq;->observeOn(Lc8/Vzq;Lc8/amq;)Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method

.method public final retry()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8673
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lc8/zqq;->retry(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Lc8/Vlq;
    .locals 1
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8704
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p0, p1, p2}, Lc8/zqq;->retry(Lc8/Vlq;J)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final retry(Lc8/Jnq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Jnq",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8728
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lc8/Jnq;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lc8/Vlq;->nest()Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/Etq;

    invoke-direct {v1, p1}, Lc8/Etq;-><init>(Lc8/Jnq;)V

    invoke-virtual {v0, v1}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final retryWhen(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lc8/Vlq",
            "<*>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8783
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Throwable;>;+Lrx/Observable<*>;>;"
    invoke-static {p1}, Lrx/internal/util/InternalObservableUtils;->createRetryDematerializer(Lc8/Inq;)Lc8/Inq;

    move-result-object v0

    invoke-static {p0, v0}, Lc8/zqq;->retry(Lc8/Vlq;Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final retryWhen(Lc8/Inq;Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p2, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lc8/Vlq",
            "<*>;>;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8813
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Throwable;>;+Lrx/Observable<*>;>;"
    invoke-static {p1}, Lrx/internal/util/InternalObservableUtils;->createRetryDematerializer(Lc8/Inq;)Lc8/Inq;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lc8/zqq;->retry(Lc8/Vlq;Lc8/Inq;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 1
    .param p1, "period"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8839
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/Vlq;->sample(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "period"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8867
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Jtq;

    invoke-direct {v0, p1, p2, p3, p4}, Lc8/Jtq;-><init>(JLjava/util/concurrent/TimeUnit;Lc8/amq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final sample(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TU;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8893
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "sampler":Lc8/Vlq;, "Lrx/Observable<TU;>;"
    new-instance v0, Lc8/Htq;

    invoke-direct {v0, p1}, Lc8/Htq;-><init>(Lc8/Vlq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final scan(Lc8/Jnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Jnq",
            "<TT;TT;TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8921
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "accumulator":Lc8/Jnq;, "Lrx/functions/Func2<TT;TT;TT;>;"
    new-instance v0, Lc8/Otq;

    invoke-direct {v0, p1}, Lc8/Otq;-><init>(Lc8/Jnq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final scan(Ljava/lang/Object;Lc8/Jnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lc8/Jnq",
            "<TR;-TT;TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8970
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "accumulator":Lc8/Jnq;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    new-instance v0, Lc8/Otq;

    invoke-direct {v0, p1, p2}, Lc8/Otq;-><init>(Ljava/lang/Object;Lc8/Jnq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final serialize()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8997
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/Utq;->instance()Lc8/Utq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final share()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9022
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0}, Lc8/Vlq;->publish()Lc8/Vzq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vzq;->refCount()Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final single()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9047
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/Xtq;->instance()Lc8/Xtq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final single(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9076
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lc8/Vlq;->filter(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->single()Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final singleOrDefault(Ljava/lang/Object;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9102
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lc8/Xtq;

    invoke-direct {v0, p1}, Lc8/Xtq;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final singleOrDefault(Ljava/lang/Object;Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9131
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p2}, Lc8/Vlq;->filter(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vlq;->singleOrDefault(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final skip(I)Lc8/Vlq;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9154
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Ztq;

    invoke-direct {v0, p1}, Lc8/Ztq;-><init>(I)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final skip(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9179
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/Vlq;->skip(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final skip(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9206
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/guq;

    invoke-direct {v0, p1, p2, p3, p4}, Lc8/guq;-><init>(JLjava/util/concurrent/TimeUnit;Lc8/amq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final skipLast(I)Lc8/Vlq;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9235
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/buq;

    invoke-direct {v0, p1}, Lc8/buq;-><init>(I)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9262
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/Vlq;->skipLast(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9291
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/duq;

    invoke-direct {v0, p1, p2, p3, p4}, Lc8/duq;-><init>(JLjava/util/concurrent/TimeUnit;Lc8/amq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final skipUntil(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TU;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9316
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "other":Lc8/Vlq;, "Lrx/Observable<TU;>;"
    new-instance v0, Lc8/juq;

    invoke-direct {v0, p1}, Lc8/juq;-><init>(Lc8/Vlq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final skipWhile(Lc8/Inq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9339
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lc8/muq;

    invoke-static {p1}, Lc8/muq;->toPredicate2(Lc8/Inq;)Lc8/Jnq;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/muq;-><init>(Lc8/Jnq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9363
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "values":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p1, p0}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Iterable;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9387
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {p1}, Lc8/Vlq;->from(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0, p0}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9411
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0, p0}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9437
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0, p0}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9465
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2, p3}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0, p0}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9495
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2, p3, p4}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0, p0}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9527
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2, p3, p4, p5}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0, p0}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9561
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    .local p6, "t6":Ljava/lang/Object;, "TT;"
    invoke-static/range {p1 .. p6}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0, p0}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9597
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    .local p6, "t6":Ljava/lang/Object;, "TT;"
    .local p7, "t7":Ljava/lang/Object;, "TT;"
    invoke-static/range {p1 .. p7}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0, p0}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9635
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    .local p6, "t6":Ljava/lang/Object;, "TT;"
    .local p7, "t7":Ljava/lang/Object;, "TT;"
    .local p8, "t8":Ljava/lang/Object;, "TT;"
    invoke-static/range {p1 .. p8}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0, p0}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9675
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    .local p6, "t6":Ljava/lang/Object;, "TT;"
    .local p7, "t7":Ljava/lang/Object;, "TT;"
    .local p8, "t8":Ljava/lang/Object;, "TT;"
    .local p9, "t9":Ljava/lang/Object;, "TT;"
    invoke-static/range {p1 .. p9}, Lc8/Vlq;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0, p0}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe()Lc8/Pmq;
    .locals 4

    .prologue
    .line 9696
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v2

    .line 9697
    .local v2, "onNext":Lc8/inq;, "Lrx/functions/Action1<TT;>;"
    sget-object v1, Lrx/internal/util/InternalObservableUtils;->ERROR_NOT_IMPLEMENTED:Lc8/inq;

    .line 9698
    .local v1, "onError":Lc8/inq;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v0

    .line 9699
    .local v0, "onCompleted":Lc8/hnq;
    new-instance v3, Lc8/xxq;

    invoke-direct {v3, v2, v1, v0}, Lc8/xxq;-><init>(Lc8/inq;Lc8/inq;Lc8/hnq;)V

    invoke-virtual {p0, v3}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    move-result-object v3

    return-object v3
.end method

.method public final subscribe(Lc8/Omq;)Lc8/Pmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)",
            "Lc8/Pmq;"
        }
    .end annotation

    .prologue
    .line 9924
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-static {p1, p0}, Lc8/Vlq;->subscribe(Lc8/Omq;Lc8/Vlq;)Lc8/Pmq;

    move-result-object v0

    return-object v0
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
    .line 9826
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "observer":Lc8/Wlq;, "Lrx/Observer<-TT;>;"
    instance-of v0, p1, Lc8/Omq;

    if-eqz v0, :cond_0

    .line 9827
    check-cast p1, Lc8/Omq;

    .end local p1    # "observer":Lc8/Wlq;, "Lrx/Observer<-TT;>;"
    invoke-virtual {p0, p1}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    move-result-object v0

    .line 9832
    :goto_0
    return-object v0

    .line 9829
    .restart local p1    # "observer":Lc8/Wlq;, "Lrx/Observer<-TT;>;"
    :cond_0
    if-nez p1, :cond_1

    .line 9830
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "observer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9832
    :cond_1
    new-instance v0, Lc8/Zxq;

    invoke-direct {v0, p1}, Lc8/Zxq;-><init>(Lc8/Wlq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    move-result-object v0

    goto :goto_0
.end method

.method public final subscribe(Lc8/inq;)Lc8/Pmq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-TT;>;)",
            "Lc8/Pmq;"
        }
    .end annotation

    .prologue
    .line 9723
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    if-nez p1, :cond_0

    .line 9724
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "onNext can not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 9727
    :cond_0
    sget-object v1, Lrx/internal/util/InternalObservableUtils;->ERROR_NOT_IMPLEMENTED:Lc8/inq;

    .line 9728
    .local v1, "onError":Lc8/inq;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v0

    .line 9729
    .local v0, "onCompleted":Lc8/hnq;
    new-instance v2, Lc8/xxq;

    invoke-direct {v2, p1, v1, v0}, Lc8/xxq;-><init>(Lc8/inq;Lc8/inq;Lc8/hnq;)V

    invoke-virtual {p0, v2}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    move-result-object v2

    return-object v2
.end method

.method public final subscribe(Lc8/inq;Lc8/inq;)Lc8/Pmq;
    .locals 3
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
    .line 9756
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lc8/inq;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p1, :cond_0

    .line 9757
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "onNext can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9759
    :cond_0
    if-nez p2, :cond_1

    .line 9760
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "onError can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9763
    :cond_1
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v0

    .line 9764
    .local v0, "onCompleted":Lc8/hnq;
    new-instance v1, Lc8/xxq;

    invoke-direct {v1, p1, p2, v0}, Lc8/xxq;-><init>(Lc8/inq;Lc8/inq;Lc8/hnq;)V

    invoke-virtual {p0, v1}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    move-result-object v1

    return-object v1
.end method

.method public final subscribe(Lc8/inq;Lc8/inq;Lc8/hnq;)Lc8/Pmq;
    .locals 2
    .param p3, "onCompleted"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-TT;>;",
            "Lc8/inq",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lc8/hnq;",
            ")",
            "Lc8/Pmq;"
        }
    .end annotation

    .prologue
    .line 9795
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lc8/inq;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p1, :cond_0

    .line 9796
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9798
    :cond_0
    if-nez p2, :cond_1

    .line 9799
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9801
    :cond_1
    if-nez p3, :cond_2

    .line 9802
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onComplete can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9805
    :cond_2
    new-instance v0, Lc8/xxq;

    invoke-direct {v0, p1, p2, p3}, Lc8/xxq;-><init>(Lc8/inq;Lc8/inq;Lc8/hnq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method

.method public final subscribeOn(Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10005
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    instance-of v0, p0, Lc8/oyq;

    if-eqz v0, :cond_0

    .line 10006
    check-cast p0, Lc8/oyq;

    .end local p0    # "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lc8/oyq;->scalarScheduleOn(Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    .line 10008
    :goto_0
    return-object v0

    .restart local p0    # "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    :cond_0
    new-instance v0, Lc8/ruq;

    invoke-direct {v0, p0, p1}, Lc8/ruq;-><init>(Lc8/Vlq;Lc8/amq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    goto :goto_0
.end method

.method public final switchIfEmpty(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5128
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "alternate":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lc8/Buq;

    invoke-direct {v0, p1}, Lc8/Buq;-><init>(Lc8/Vlq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final switchMap(Lc8/Inq;)Lc8/Vlq;
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
    .line 10038
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-virtual {p0, p1}, Lc8/Vlq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->switchOnNext(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final switchMapDelayError(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

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
    .line 10072
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-virtual {p0, p1}, Lc8/Vlq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->switchOnNextDelayError(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final take(I)Lc8/Vlq;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10100
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Euq;

    invoke-direct {v0, p1}, Lc8/Euq;-><init>(I)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final take(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10124
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/Vlq;->take(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final take(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10151
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Muq;

    invoke-direct {v0, p1, p2, p3, p4}, Lc8/Muq;-><init>(JLjava/util/concurrent/TimeUnit;Lc8/amq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final takeFirst(Lc8/Inq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10175
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lc8/Vlq;->filter(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/Vlq;->take(I)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final takeLast(I)Lc8/Vlq;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10200
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    if-nez p1, :cond_0

    .line 10201
    invoke-virtual {p0}, Lc8/Vlq;->ignoreElements()Lc8/Vlq;

    move-result-object v0

    .line 10205
    :goto_0
    return-object v0

    .line 10202
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 10203
    new-instance v0, Lc8/Mqq;

    invoke-direct {v0, p0}, Lc8/Mqq;-><init>(Lc8/Vlq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    goto :goto_0

    .line 10205
    :cond_1
    new-instance v0, Lc8/Huq;

    invoke-direct {v0, p1}, Lc8/Huq;-><init>(I)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    goto :goto_0
.end method

.method public final takeLast(IJLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 6
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10233
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/Vlq;->takeLast(IJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final takeLast(IJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 6
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10266
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Kuq;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lc8/Kuq;-><init>(IJLjava/util/concurrent/TimeUnit;Lc8/amq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10294
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/Vlq;->takeLast(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10325
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Kuq;

    invoke-direct {v0, p1, p2, p3, p4}, Lc8/Kuq;-><init>(JLjava/util/concurrent/TimeUnit;Lc8/amq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(I)Lc8/Vlq;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10348
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lc8/Vlq;->takeLast(I)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->toList()Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(IJLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 2
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10376
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/Vlq;->takeLast(IJLjava/util/concurrent/TimeUnit;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->toList()Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(IJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 2
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10407
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual/range {p0 .. p5}, Lc8/Vlq;->takeLast(IJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->toList()Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10432
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lc8/Vlq;->takeLast(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->toList()Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10461
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/Vlq;->takeLast(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->toList()Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final takeUntil(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10539
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "stopPredicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lc8/Suq;

    invoke-direct {v0, p1}, Lc8/Suq;-><init>(Lc8/Inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final takeUntil(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TE;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10486
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "other":Lc8/Vlq;, "Lrx/Observable<+TE;>;"
    new-instance v0, Lc8/Puq;

    invoke-direct {v0, p1}, Lc8/Puq;-><init>(Lc8/Vlq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final takeWhile(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10510
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lc8/Inq;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lc8/Vuq;

    invoke-direct {v0, p1}, Lc8/Vuq;-><init>(Lc8/Inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final throttleFirst(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 1
    .param p1, "windowDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10566
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/Vlq;->throttleFirst(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final throttleFirst(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "skipDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10596
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Xuq;

    invoke-direct {v0, p1, p2, p3, p4}, Lc8/Xuq;-><init>(JLjava/util/concurrent/TimeUnit;Lc8/amq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final throttleLast(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 1
    .param p1, "intervalDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10625
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lc8/Vlq;->sample(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final throttleLast(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "intervalDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10657
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/Vlq;->sample(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final throttleWithTimeout(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10695
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lc8/Vlq;->debounce(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final throttleWithTimeout(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10737
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/Vlq;->debounce(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final timeInterval()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<",
            "Lc8/oBq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10758
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->timeInterval(Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final timeInterval(Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<",
            "Lc8/oBq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10781
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Zuq;

    invoke-direct {v0, p1}, Lc8/Zuq;-><init>(Lc8/amq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10953
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    const/4 v5, 0x0

    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lc8/Vlq;->timeout(JLjava/util/concurrent/TimeUnit;Lc8/Vlq;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lc8/Vlq;)Lc8/Vlq;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10982
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p4, "other":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lc8/Vlq;->timeout(JLjava/util/concurrent/TimeUnit;Lc8/Vlq;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lc8/Vlq;Lc8/amq;)Lc8/Vlq;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11014
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p4, "other":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v1, Lc8/evq;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lc8/evq;-><init>(JLjava/util/concurrent/TimeUnit;Lc8/Vlq;Lc8/amq;)V

    invoke-virtual {p0, v1}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
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
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11043
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lc8/Vlq;->timeout(JLjava/util/concurrent/TimeUnit;Lc8/Vlq;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(Lc8/Hnq;Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<TU;>;>;",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<TV;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10816
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "firstTimeoutSelector":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;"
    .local p2, "timeoutSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/Vlq;->timeout(Lc8/Hnq;Lc8/Inq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(Lc8/Hnq;Lc8/Inq;Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<TU;>;>;",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<TV;>;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10856
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "firstTimeoutSelector":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;"
    .local p2, "timeoutSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    .local p3, "other":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    if-nez p2, :cond_0

    .line 10857
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "timeoutSelector is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10859
    :cond_0
    new-instance v0, Lc8/ovq;

    invoke-direct {v0, p1, p2, p3}, Lc8/ovq;-><init>(Lc8/Hnq;Lc8/Inq;Lc8/Vlq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<TV;>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "timeoutSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    const/4 v0, 0x0

    .line 10892
    invoke-virtual {p0, v0, p1, v0}, Lc8/Vlq;->timeout(Lc8/Hnq;Lc8/Inq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(Lc8/Inq;Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<TV;>;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10927
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "timeoutSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    .local p2, "other":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lc8/Vlq;->timeout(Lc8/Hnq;Lc8/Inq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final timestamp()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<",
            "Lc8/pBq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11064
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->timestamp(Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final timestamp(Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<",
            "Lc8/pBq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11088
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/qvq;

    invoke-direct {v0, p1}, Lc8/qvq;-><init>(Lc8/amq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final toBlocking()Lc8/Tzq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Tzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11105
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lc8/Tzq;->from(Lc8/Vlq;)Lc8/Tzq;

    move-result-object v0

    return-object v0
.end method

.method public toCompletable()Lc8/Plq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lc8/Plq;->fromObservable(Lc8/Vlq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public final toList()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11135
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/Avq;->instance()Lc8/Avq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final toMap(Lc8/Inq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+TK;>;)",
            "Lc8/Vlq",
            "<",
            "Ljava/util/Map",
            "<TK;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11161
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    new-instance v0, Lc8/tvq;

    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lc8/tvq;-><init>(Lc8/Inq;Lc8/Inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final toMap(Lc8/Inq;Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+TK;>;",
            "Lc8/Inq",
            "<-TT;+TV;>;)",
            "Lc8/Vlq",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 11191
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TV;>;"
    new-instance v0, Lc8/tvq;

    invoke-direct {v0, p1, p2}, Lc8/tvq;-><init>(Lc8/Inq;Lc8/Inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final toMap(Lc8/Inq;Lc8/Inq;Lc8/Hnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+TK;>;",
            "Lc8/Inq",
            "<-TT;+TV;>;",
            "Lc8/Hnq",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)",
            "Lc8/Vlq",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 11220
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lc8/Hnq;, "Lrx/functions/Func0<+Ljava/util/Map<TK;TV;>;>;"
    new-instance v0, Lc8/tvq;

    invoke-direct {v0, p1, p2, p3}, Lc8/tvq;-><init>(Lc8/Inq;Lc8/Inq;Lc8/Hnq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final toMultimap(Lc8/Inq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+TK;>;)",
            "Lc8/Vlq",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 11243
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    new-instance v0, Lc8/xvq;

    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lc8/xvq;-><init>(Lc8/Inq;Lc8/Inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final toMultimap(Lc8/Inq;Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+TK;>;",
            "Lc8/Inq",
            "<-TT;+TV;>;)",
            "Lc8/Vlq",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 11271
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TV;>;"
    new-instance v0, Lc8/xvq;

    invoke-direct {v0, p1, p2}, Lc8/xvq;-><init>(Lc8/Inq;Lc8/Inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final toMultimap(Lc8/Inq;Lc8/Inq;Lc8/Hnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+TK;>;",
            "Lc8/Inq",
            "<-TT;+TV;>;",
            "Lc8/Hnq",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;)",
            "Lc8/Vlq",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 11301
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lc8/Hnq;, "Lrx/functions/Func0<+Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    new-instance v0, Lc8/xvq;

    invoke-direct {v0, p1, p2, p3}, Lc8/xvq;-><init>(Lc8/Inq;Lc8/Inq;Lc8/Hnq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final toMultimap(Lc8/Inq;Lc8/Inq;Lc8/Hnq;Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+TK;>;",
            "Lc8/Inq",
            "<-TT;+TV;>;",
            "Lc8/Hnq",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;",
            "Lc8/Inq",
            "<-TK;+",
            "Ljava/util/Collection",
            "<TV;>;>;)",
            "Lc8/Vlq",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 11333
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lc8/Hnq;, "Lrx/functions/Func0<+Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    .local p4, "collectionFactory":Lc8/Inq;, "Lrx/functions/Func1<-TK;+Ljava/util/Collection<TV;>;>;"
    new-instance v0, Lc8/xvq;

    invoke-direct {v0, p1, p2, p3, p4}, Lc8/xvq;-><init>(Lc8/Inq;Lc8/Inq;Lc8/Hnq;Lc8/Inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public toSingle()Lc8/Mmq;
    .locals 2
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Mmq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Mmq;

    invoke-static {p0}, Lc8/Kqq;->create(Lc8/Vlq;)Lc8/Kqq;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Mmq;-><init>(Lc8/Kmq;)V

    return-object v0
.end method

.method public final toSortedList()Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11358
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Evq;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lc8/Evq;-><init>(I)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(I)Lc8/Vlq;
    .locals 1
    .param p1, "initialCapacity"    # I
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11411
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Evq;

    invoke-direct {v0, p1}, Lc8/Evq;-><init>(I)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(Lc8/Jnq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Jnq",
            "<-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11382
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "sortFunction":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-TT;Ljava/lang/Integer;>;"
    new-instance v0, Lc8/Evq;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Lc8/Evq;-><init>(Lc8/Jnq;I)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(Lc8/Jnq;I)Lc8/Vlq;
    .locals 1
    .param p2, "initialCapacity"    # I
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Jnq",
            "<-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lc8/Vlq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11439
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "sortFunction":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-TT;Ljava/lang/Integer;>;"
    new-instance v0, Lc8/Evq;

    invoke-direct {v0, p1, p2}, Lc8/Evq;-><init>(Lc8/Jnq;I)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

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
    .line 9859
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    invoke-virtual {p1}, Lc8/Omq;->onStart()V

    .line 9861
    iget-object v3, p0, Lc8/Vlq;->onSubscribe:Lc8/Rlq;

    invoke-static {p0, v3}, Lc8/WAq;->onObservableStart(Lc8/Vlq;Lc8/Rlq;)Lc8/Rlq;

    move-result-object v3

    invoke-interface {v3, p1}, Lc8/Rlq;->call(Ljava/lang/Object;)V

    .line 9862
    invoke-static {p1}, Lc8/WAq;->onObservableReturn(Lc8/Pmq;)Lc8/Pmq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 9879
    :goto_0
    return-object v3

    .line 9863
    :catch_0
    move-exception v0

    .line 9865
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 9868
    :try_start_1
    invoke-static {v0}, Lc8/WAq;->onObservableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 9879
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v3

    goto :goto_0

    .line 9869
    :catch_1
    move-exception v1

    .line 9870
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 9873
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

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

    invoke-direct {v2, v3, v1}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9875
    .local v2, "r":Ljava/lang/RuntimeException;
    invoke-static {v2}, Lc8/WAq;->onObservableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9877
    throw v2
.end method

.method public final unsubscribeOn(Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11460
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Ivq;

    invoke-direct {v0, p1}, Lc8/Ivq;-><init>(Lc8/amq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final window(I)Lc8/Vlq;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc8/Vlq",
            "<",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11903
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p1}, Lc8/Vlq;->window(II)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final window(II)Lc8/Vlq;
    .locals 3
    .param p1, "count"    # I
    .param p2, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lc8/Vlq",
            "<",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11932
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    if-gtz p1, :cond_0

    .line 11933
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "count > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11935
    :cond_0
    if-gtz p2, :cond_1

    .line 11936
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11938
    :cond_1
    new-instance v0, Lc8/Tvq;

    invoke-direct {v0, p1, p2}, Lc8/Tvq;-><init>(II)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11970
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    const v7, 0x7fffffff

    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Lc8/Vlq;->window(JJLjava/util/concurrent/TimeUnit;ILc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;ILc8/amq;)Lc8/Vlq;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "count"    # I
    .param p7, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12040
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v1, Lc8/hwq;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lc8/hwq;-><init>(JJLjava/util/concurrent/TimeUnit;ILc8/amq;)V

    invoke-virtual {p0, v1}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12004
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    const v7, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lc8/Vlq;->window(JJLjava/util/concurrent/TimeUnit;ILc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lc8/Vlq",
            "<",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12070
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lc8/Vlq;->window(JJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;I)Lc8/Vlq;
    .locals 7
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)",
            "Lc8/Vlq",
            "<",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12104
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lc8/Vlq;->window(JLjava/util/concurrent/TimeUnit;ILc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;ILc8/amq;)Lc8/Vlq;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "count"    # I
    .param p5, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12140
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lc8/Vlq;->window(JJLjava/util/concurrent/TimeUnit;ILc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vlq;
    .locals 7
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12173
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    const v5, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lc8/Vlq;->window(JLjava/util/concurrent/TimeUnit;ILc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final window(Lc8/Hnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<+TTClosing;>;>;)",
            "Lc8/Vlq",
            "<",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11877
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "closingSelector":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/Observable<+TTClosing;>;>;"
    new-instance v0, Lc8/Ovq;

    invoke-direct {v0, p1}, Lc8/Ovq;-><init>(Lc8/Hnq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final window(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TU;>;)",
            "Lc8/Vlq",
            "<",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12232
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "boundary":Lc8/Vlq;, "Lrx/Observable<TU;>;"
    new-instance v0, Lc8/Lvq;

    invoke-direct {v0, p1}, Lc8/Lvq;-><init>(Lc8/Vlq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final window(Lc8/Vlq;Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TTOpening;>;",
            "Lc8/Inq",
            "<-TTOpening;+",
            "Lc8/Vlq",
            "<+TTClosing;>;>;)",
            "Lc8/Vlq",
            "<",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12205
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "windowOpenings":Lc8/Vlq;, "Lrx/Observable<+TTOpening;>;"
    .local p2, "closingSelector":Lc8/Inq;, "Lrx/functions/Func1<-TTOpening;+Lrx/Observable<+TTClosing;>;>;"
    new-instance v0, Lc8/Yvq;

    invoke-direct {v0, p1, p2}, Lc8/Yvq;-><init>(Lc8/Vlq;Lc8/Inq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final withLatestFrom(Lc8/Vlq;Lc8/Jnq;)Lc8/Vlq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TU;>;",
            "Lc8/Jnq",
            "<-TT;-TU;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 11494
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "other":Lc8/Vlq;, "Lrx/Observable<+TU;>;"
    .local p2, "resultSelector":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    new-instance v0, Lc8/kwq;

    invoke-direct {v0, p1, p2}, Lc8/kwq;-><init>(Lc8/Vlq;Lc8/Jnq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final withLatestFrom(Lc8/Vlq;Lc8/Vlq;Lc8/Knq;)Lc8/Vlq;
    .locals 4
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT1;>;",
            "Lc8/Vlq",
            "<TT2;>;",
            "Lc8/Knq",
            "<-TT;-TT1;-TT2;TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 11526
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "o1":Lc8/Vlq;, "Lrx/Observable<TT1;>;"
    .local p2, "o2":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    .local p3, "combiner":Lc8/Knq;, "Lrx/functions/Func3<-TT;-TT1;-TT2;TR;>;"
    new-instance v0, Lc8/nwq;

    const/4 v1, 0x2

    new-array v1, v1, [Lc8/Vlq;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x0

    invoke-static {p3}, Lc8/hoq;->fromFunc(Lc8/Knq;)Lc8/Rnq;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lc8/nwq;-><init>(Lc8/Vlq;[Lc8/Vlq;Ljava/lang/Iterable;Lc8/Rnq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final withLatestFrom(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Lnq;)Lc8/Vlq;
    .locals 4
    .annotation build Lc8/bnq;
    .end annotation

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
            "Lc8/Vlq",
            "<TT1;>;",
            "Lc8/Vlq",
            "<TT2;>;",
            "Lc8/Vlq",
            "<TT3;>;",
            "Lc8/Lnq",
            "<-TT;-TT1;-TT2;-TT3;TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 11563
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "o1":Lc8/Vlq;, "Lrx/Observable<TT1;>;"
    .local p2, "o2":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    .local p3, "o3":Lc8/Vlq;, "Lrx/Observable<TT3;>;"
    .local p4, "combiner":Lc8/Lnq;, "Lrx/functions/Func4<-TT;-TT1;-TT2;-TT3;TR;>;"
    new-instance v0, Lc8/nwq;

    const/4 v1, 0x3

    new-array v1, v1, [Lc8/Vlq;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x0

    invoke-static {p4}, Lc8/hoq;->fromFunc(Lc8/Lnq;)Lc8/Rnq;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lc8/nwq;-><init>(Lc8/Vlq;[Lc8/Vlq;Ljava/lang/Iterable;Lc8/Rnq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final withLatestFrom(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Mnq;)Lc8/Vlq;
    .locals 4
    .annotation build Lc8/bnq;
    .end annotation

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
            "Lc8/Vlq",
            "<TT1;>;",
            "Lc8/Vlq",
            "<TT2;>;",
            "Lc8/Vlq",
            "<TT3;>;",
            "Lc8/Vlq",
            "<TT4;>;",
            "Lc8/Mnq",
            "<-TT;-TT1;-TT2;-TT3;-TT4;TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 11603
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "o1":Lc8/Vlq;, "Lrx/Observable<TT1;>;"
    .local p2, "o2":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    .local p3, "o3":Lc8/Vlq;, "Lrx/Observable<TT3;>;"
    .local p4, "o4":Lc8/Vlq;, "Lrx/Observable<TT4;>;"
    .local p5, "combiner":Lc8/Mnq;, "Lrx/functions/Func5<-TT;-TT1;-TT2;-TT3;-TT4;TR;>;"
    new-instance v0, Lc8/nwq;

    const/4 v1, 0x4

    new-array v1, v1, [Lc8/Vlq;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x0

    invoke-static {p5}, Lc8/hoq;->fromFunc(Lc8/Mnq;)Lc8/Rnq;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lc8/nwq;-><init>(Lc8/Vlq;[Lc8/Vlq;Ljava/lang/Iterable;Lc8/Rnq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final withLatestFrom(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Nnq;)Lc8/Vlq;
    .locals 4
    .annotation build Lc8/bnq;
    .end annotation

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
            "Lc8/Vlq",
            "<TT1;>;",
            "Lc8/Vlq",
            "<TT2;>;",
            "Lc8/Vlq",
            "<TT1;>;",
            "Lc8/Vlq",
            "<TT2;>;",
            "Lc8/Vlq",
            "<TT1;>;",
            "Lc8/Nnq",
            "<-TT;-TT1;-TT2;-TT3;-TT4;-TT5;TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 11645
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "o1":Lc8/Vlq;, "Lrx/Observable<TT1;>;"
    .local p2, "o2":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    .local p3, "o3":Lc8/Vlq;, "Lrx/Observable<TT1;>;"
    .local p4, "o4":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    .local p5, "o5":Lc8/Vlq;, "Lrx/Observable<TT1;>;"
    .local p6, "combiner":Lc8/Nnq;, "Lrx/functions/Func6<-TT;-TT1;-TT2;-TT3;-TT4;-TT5;TR;>;"
    new-instance v0, Lc8/nwq;

    const/4 v1, 0x5

    new-array v1, v1, [Lc8/Vlq;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x0

    invoke-static {p6}, Lc8/hoq;->fromFunc(Lc8/Nnq;)Lc8/Rnq;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lc8/nwq;-><init>(Lc8/Vlq;[Lc8/Vlq;Ljava/lang/Iterable;Lc8/Rnq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final withLatestFrom(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Onq;)Lc8/Vlq;
    .locals 4
    .annotation build Lc8/bnq;
    .end annotation

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
            "Lc8/Vlq",
            "<TT1;>;",
            "Lc8/Vlq",
            "<TT2;>;",
            "Lc8/Vlq",
            "<TT1;>;",
            "Lc8/Vlq",
            "<TT2;>;",
            "Lc8/Vlq",
            "<TT1;>;",
            "Lc8/Vlq",
            "<TT2;>;",
            "Lc8/Onq",
            "<-TT;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 11690
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "o1":Lc8/Vlq;, "Lrx/Observable<TT1;>;"
    .local p2, "o2":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    .local p3, "o3":Lc8/Vlq;, "Lrx/Observable<TT1;>;"
    .local p4, "o4":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    .local p5, "o5":Lc8/Vlq;, "Lrx/Observable<TT1;>;"
    .local p6, "o6":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    .local p7, "combiner":Lc8/Onq;, "Lrx/functions/Func7<-TT;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;TR;>;"
    new-instance v0, Lc8/nwq;

    const/4 v1, 0x6

    new-array v1, v1, [Lc8/Vlq;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const/4 v2, 0x0

    invoke-static {p7}, Lc8/hoq;->fromFunc(Lc8/Onq;)Lc8/Rnq;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lc8/nwq;-><init>(Lc8/Vlq;[Lc8/Vlq;Ljava/lang/Iterable;Lc8/Rnq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final withLatestFrom(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Pnq;)Lc8/Vlq;
    .locals 4
    .annotation build Lc8/bnq;
    .end annotation

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
            "Lc8/Vlq",
            "<TT1;>;",
            "Lc8/Vlq",
            "<TT2;>;",
            "Lc8/Vlq",
            "<TT1;>;",
            "Lc8/Vlq",
            "<TT2;>;",
            "Lc8/Vlq",
            "<TT1;>;",
            "Lc8/Vlq",
            "<TT2;>;",
            "Lc8/Vlq",
            "<TT1;>;",
            "Lc8/Pnq",
            "<-TT;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 11738
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "o1":Lc8/Vlq;, "Lrx/Observable<TT1;>;"
    .local p2, "o2":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    .local p3, "o3":Lc8/Vlq;, "Lrx/Observable<TT1;>;"
    .local p4, "o4":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    .local p5, "o5":Lc8/Vlq;, "Lrx/Observable<TT1;>;"
    .local p6, "o6":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    .local p7, "o7":Lc8/Vlq;, "Lrx/Observable<TT1;>;"
    .local p8, "combiner":Lc8/Pnq;, "Lrx/functions/Func8<-TT;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;TR;>;"
    new-instance v0, Lc8/nwq;

    const/4 v1, 0x7

    new-array v1, v1, [Lc8/Vlq;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const/4 v2, 0x6

    aput-object p7, v1, v2

    const/4 v2, 0x0

    invoke-static {p8}, Lc8/hoq;->fromFunc(Lc8/Pnq;)Lc8/Rnq;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lc8/nwq;-><init>(Lc8/Vlq;[Lc8/Vlq;Ljava/lang/Iterable;Lc8/Rnq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final withLatestFrom(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Qnq;)Lc8/Vlq;
    .locals 4
    .annotation build Lc8/bnq;
    .end annotation

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
            "Lc8/Vlq",
            "<TT1;>;",
            "Lc8/Vlq",
            "<TT2;>;",
            "Lc8/Vlq",
            "<TT1;>;",
            "Lc8/Vlq",
            "<TT2;>;",
            "Lc8/Vlq",
            "<TT1;>;",
            "Lc8/Vlq",
            "<TT2;>;",
            "Lc8/Vlq",
            "<TT1;>;",
            "Lc8/Vlq",
            "<TT2;>;",
            "Lc8/Qnq",
            "<-TT;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 11788
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "o1":Lc8/Vlq;, "Lrx/Observable<TT1;>;"
    .local p2, "o2":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    .local p3, "o3":Lc8/Vlq;, "Lrx/Observable<TT1;>;"
    .local p4, "o4":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    .local p5, "o5":Lc8/Vlq;, "Lrx/Observable<TT1;>;"
    .local p6, "o6":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    .local p7, "o7":Lc8/Vlq;, "Lrx/Observable<TT1;>;"
    .local p8, "o8":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    .local p9, "combiner":Lc8/Qnq;, "Lrx/functions/Func9<-TT;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;TR;>;"
    new-instance v0, Lc8/nwq;

    const/16 v1, 0x8

    new-array v1, v1, [Lc8/Vlq;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const/4 v2, 0x6

    aput-object p7, v1, v2

    const/4 v2, 0x7

    aput-object p8, v1, v2

    const/4 v2, 0x0

    invoke-static {p9}, Lc8/hoq;->fromFunc(Lc8/Qnq;)Lc8/Rnq;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lc8/nwq;-><init>(Lc8/Vlq;[Lc8/Vlq;Ljava/lang/Iterable;Lc8/Rnq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final withLatestFrom(Ljava/lang/Iterable;Lc8/Rnq;)Lc8/Vlq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<",
            "Lc8/Vlq",
            "<*>;>;",
            "Lc8/Rnq",
            "<TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 11847
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "others":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lrx/Observable<*>;>;"
    .local p2, "combiner":Lc8/Rnq;, "Lrx/functions/FuncN<TR;>;"
    new-instance v0, Lc8/nwq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lc8/nwq;-><init>(Lc8/Vlq;[Lc8/Vlq;Ljava/lang/Iterable;Lc8/Rnq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final withLatestFrom([Lc8/Vlq;Lc8/Rnq;)Lc8/Vlq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Lc8/Vlq",
            "<*>;",
            "Lc8/Rnq",
            "<TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 11818
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "others":[Lc8/Vlq;, "[Lrx/Observable<*>;"
    .local p2, "combiner":Lc8/Rnq;, "Lrx/functions/FuncN<TR;>;"
    new-instance v0, Lc8/nwq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lc8/nwq;-><init>(Lc8/Vlq;[Lc8/Vlq;Ljava/lang/Iterable;Lc8/Rnq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final zipWith(Lc8/Vlq;Lc8/Jnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT2;>;",
            "Lc8/Jnq",
            "<-TT;-TT2;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 12311
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "other":Lc8/Vlq;, "Lrx/Observable<+TT2;>;"
    .local p2, "zipFunction":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-TT2;+TR;>;"
    invoke-static {p0, p1, p2}, Lc8/Vlq;->zip(Lc8/Vlq;Lc8/Vlq;Lc8/Jnq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public final zipWith(Ljava/lang/Iterable;Lc8/Jnq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT2;>;",
            "Lc8/Jnq",
            "<-TT;-TT2;+TR;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 12266
    .local p0, "this":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "other":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT2;>;"
    .local p2, "zipFunction":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-TT2;+TR;>;"
    new-instance v0, Lc8/swq;

    invoke-direct {v0, p1, p2}, Lc8/swq;-><init>(Ljava/lang/Iterable;Lc8/Jnq;)V

    invoke-virtual {p0, v0}, Lc8/Vlq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method
