.class public final Lc8/iqq;
.super Lc8/Nmq;
.source "OnSubscribeOnAssemblySingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jqq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnAssemblySingleSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Nmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lc8/Nmq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Nmq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final stacktrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/Nmq;Ljava/lang/String;)V
    .locals 0
    .param p2, "stacktrace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lc8/iqq;, "Lrx/internal/operators/OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber<TT;>;"
    .local p1, "actual":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    invoke-direct {p0}, Lc8/Nmq;-><init>()V

    .line 57
    iput-object p1, p0, Lc8/iqq;->actual:Lc8/Nmq;

    .line 58
    iput-object p2, p0, Lc8/iqq;->stacktrace:Ljava/lang/String;

    .line 59
    invoke-virtual {p1, p0}, Lc8/Nmq;->add(Lc8/Pmq;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    .local p0, "this":Lc8/iqq;, "Lrx/internal/operators/OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber<TT;>;"
    new-instance v0, Lrx/exceptions/AssemblyStackTraceException;

    iget-object v1, p0, Lc8/iqq;->stacktrace:Ljava/lang/String;

    invoke-direct {v0, v1}, Lrx/exceptions/AssemblyStackTraceException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lrx/exceptions/AssemblyStackTraceException;->attachTo(Ljava/lang/Throwable;)V

    .line 65
    iget-object v0, p0, Lc8/iqq;->actual:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lc8/iqq;, "Lrx/internal/operators/OnSubscribeOnAssemblySingle$OnAssemblySingleSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/iqq;->actual:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onSuccess(Ljava/lang/Object;)V

    .line 71
    return-void
.end method
