.class public Lc8/rmq;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mmq;->takeUntil(Lc8/Plq;)Lc8/Mmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Mmq;

.field final synthetic val$other:Lc8/Plq;


# direct methods
.method constructor <init>(Lc8/Mmq;Lc8/Plq;)V
    .locals 0

    .prologue
    .line 1973
    .local p0, "this":Lc8/rmq;, "Lrx/Single.20;"
    iput-object p1, p0, Lc8/rmq;->this$0:Lc8/Mmq;

    iput-object p2, p0, Lc8/rmq;->val$other:Lc8/Plq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 4
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
    .local p0, "this":Lc8/rmq;, "Lrx/Single.20;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    const/4 v3, 0x0

    .line 1976
    new-instance v1, Lc8/qAq;

    invoke-direct {v1, p1, v3}, Lc8/qAq;-><init>(Lc8/Omq;Z)V

    .line 1978
    .local v1, "serial":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    new-instance v0, Lc8/pmq;

    invoke-direct {v0, p0, v1, v3, v1}, Lc8/pmq;-><init>(Lc8/rmq;Lc8/Omq;ZLc8/Omq;)V

    .line 2001
    .local v0, "main":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    new-instance v2, Lc8/qmq;

    invoke-direct {v2, p0, v0, v1}, Lc8/qmq;-><init>(Lc8/rmq;Lc8/Omq;Lc8/Omq;)V

    .line 2018
    .local v2, "so":Lc8/Nlq;
    invoke-virtual {v1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 2019
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 2021
    iget-object v3, p0, Lc8/rmq;->val$other:Lc8/Plq;

    invoke-virtual {v3, v2}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 2023
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1973
    .local p0, "this":Lc8/rmq;, "Lrx/Single.20;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/rmq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
