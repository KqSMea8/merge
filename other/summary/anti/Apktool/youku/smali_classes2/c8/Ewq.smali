.class public final Lc8/Ewq;
.super Ljava/lang/Object;
.source "SingleOperatorOnErrorResumeNext.java"

# interfaces
.implements Lc8/Kmq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Kmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final originalSingle:Lc8/Mmq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Mmq",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final resumeFunctionInCaseOfError:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lc8/Mmq",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lc8/Mmq;Lc8/Inq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Inq",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lc8/Mmq",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lc8/Ewq;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNext<TT;>;"
    .local p1, "originalSingle":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p2, "resumeFunctionInCaseOfError":Lc8/Inq;, "Lrx/functions/Func1<Ljava/lang/Throwable;+Lrx/Single<+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "originalSingle must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "resumeFunctionInCaseOfError must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    iput-object p1, p0, Lc8/Ewq;->originalSingle:Lc8/Mmq;

    .line 38
    iput-object p2, p0, Lc8/Ewq;->resumeFunctionInCaseOfError:Lc8/Inq;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lc8/Ewq;)Lc8/Inq;
    .locals 1
    .param p0, "x0"    # Lc8/Ewq;

    .prologue
    .line 23
    iget-object v0, p0, Lc8/Ewq;->resumeFunctionInCaseOfError:Lc8/Inq;

    return-object v0
.end method

.method public static withFunction(Lc8/Mmq;Lc8/Inq;)Lc8/Ewq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Inq",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lc8/Mmq",
            "<+TT;>;>;)",
            "Lc8/Ewq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "originalSingle":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p1, "resumeFunctionInCaseOfError":Lc8/Inq;, "Lrx/functions/Func1<Ljava/lang/Throwable;+Lrx/Single<+TT;>;>;"
    new-instance v0, Lc8/Ewq;

    invoke-direct {v0, p0, p1}, Lc8/Ewq;-><init>(Lc8/Mmq;Lc8/Inq;)V

    return-object v0
.end method

.method public static withOther(Lc8/Mmq;Lc8/Mmq;)Lc8/Ewq;
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
            "Lc8/Ewq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "originalSingle":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p1, "resumeSingleInCaseOfError":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "resumeSingleInCaseOfError must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    new-instance v0, Lc8/Ewq;

    new-instance v1, Lc8/Cwq;

    invoke-direct {v1, p1}, Lc8/Cwq;-><init>(Lc8/Mmq;)V

    invoke-direct {v0, p0, v1}, Lc8/Ewq;-><init>(Lc8/Mmq;Lc8/Inq;)V

    return-object v0
.end method


# virtual methods
.method public call(Lc8/Nmq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lc8/Ewq;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNext<TT;>;"
    .local p1, "child":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lc8/Dwq;

    invoke-direct {v0, p0, p1}, Lc8/Dwq;-><init>(Lc8/Ewq;Lc8/Nmq;)V

    .line 76
    .local v0, "parent":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    invoke-virtual {p1, v0}, Lc8/Nmq;->add(Lc8/Pmq;)V

    .line 77
    iget-object v1, p0, Lc8/Ewq;->originalSingle:Lc8/Mmq;

    invoke-virtual {v1, v0}, Lc8/Mmq;->subscribe(Lc8/Nmq;)Lc8/Pmq;

    .line 78
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    .local p0, "this":Lc8/Ewq;, "Lrx/internal/operators/SingleOperatorOnErrorResumeNext<TT;>;"
    check-cast p1, Lc8/Nmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Ewq;->call(Lc8/Nmq;)V

    return-void
.end method
