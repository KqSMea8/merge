.class public Lc8/qmq;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/rmq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/rmq;

.field final synthetic val$main:Lc8/Omq;

.field final synthetic val$serial:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/rmq;Lc8/Omq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 2001
    .local p0, "this":Lc8/qmq;, "Lrx/Single$20.2;"
    iput-object p1, p0, Lc8/qmq;->this$1:Lc8/rmq;

    iput-object p2, p0, Lc8/qmq;->val$main:Lc8/Omq;

    iput-object p3, p0, Lc8/qmq;->val$serial:Lc8/Omq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 2004
    .local p0, "this":Lc8/qmq;, "Lrx/Single$20.2;"
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v1, "Stream was canceled before emitting a terminal event."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc8/qmq;->onError(Ljava/lang/Throwable;)V

    .line 2005
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2009
    .local p0, "this":Lc8/qmq;, "Lrx/Single$20.2;"
    iget-object v0, p0, Lc8/qmq;->val$main:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 2010
    return-void
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 2014
    .local p0, "this":Lc8/qmq;, "Lrx/Single$20.2;"
    iget-object v0, p0, Lc8/qmq;->val$serial:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 2015
    return-void
.end method
