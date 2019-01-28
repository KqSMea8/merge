.class public final Lc8/Rtq;
.super Ljava/lang/Object;
.source "OperatorSequenceEqual.java"


# static fields
.field static final LOCAL_ONCOMPLETED:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/Rtq;->LOCAL_ONCOMPLETED:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static materializeLite(Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;)",
            "Lc8/Vlq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Ptq;

    invoke-direct {v0}, Lc8/Ptq;-><init>()V

    invoke-virtual {p0, v0}, Lc8/Vlq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    sget-object v1, Lc8/Rtq;->LOCAL_ONCOMPLETED:Ljava/lang/Object;

    invoke-static {v1}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Vlq;->concat(Lc8/Vlq;Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static sequenceEqual(Lc8/Vlq;Lc8/Vlq;Lc8/Jnq;)Lc8/Vlq;
    .locals 4
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
    .line 67
    .local p0, "first":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "second":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "equality":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-TT;Ljava/lang/Boolean;>;"
    invoke-static {p0}, Lc8/Rtq;->materializeLite(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    .line 68
    .local v0, "firstObservable":Lc8/Vlq;, "Lrx/Observable<Ljava/lang/Object;>;"
    invoke-static {p1}, Lc8/Rtq;->materializeLite(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v1

    .line 70
    .local v1, "secondObservable":Lc8/Vlq;, "Lrx/Observable<Ljava/lang/Object;>;"
    new-instance v2, Lc8/Qtq;

    invoke-direct {v2, p2}, Lc8/Qtq;-><init>(Lc8/Jnq;)V

    invoke-static {v0, v1, v2}, Lc8/Vlq;->zip(Lc8/Vlq;Lc8/Vlq;Lc8/Jnq;)Lc8/Vlq;

    move-result-object v2

    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Vlq;->all(Lc8/Inq;)Lc8/Vlq;

    move-result-object v2

    return-object v2
.end method
