.class public final Lc8/gqq;
.super Ljava/lang/Object;
.source "OnSubscribeOnAssemblyCompletable.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hqq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnAssemblyCompletableSubscriber"
.end annotation


# instance fields
.field final actual:Lc8/Nlq;

.field final stacktrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/Nlq;Ljava/lang/String;)V
    .locals 0
    .param p1, "actual"    # Lc8/Nlq;
    .param p2, "stacktrace"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lc8/gqq;->actual:Lc8/Nlq;

    .line 59
    iput-object p2, p0, Lc8/gqq;->stacktrace:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lc8/gqq;->actual:Lc8/Nlq;

    invoke-interface {v0}, Lc8/Nlq;->onCompleted()V

    .line 70
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    new-instance v0, Lrx/exceptions/AssemblyStackTraceException;

    iget-object v1, p0, Lc8/gqq;->stacktrace:Ljava/lang/String;

    invoke-direct {v0, v1}, Lrx/exceptions/AssemblyStackTraceException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lrx/exceptions/AssemblyStackTraceException;->attachTo(Ljava/lang/Throwable;)V

    .line 75
    iget-object v0, p0, Lc8/gqq;->actual:Lc8/Nlq;

    invoke-interface {v0, p1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 76
    return-void
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 64
    iget-object v0, p0, Lc8/gqq;->actual:Lc8/Nlq;

    invoke-interface {v0, p1}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 65
    return-void
.end method
