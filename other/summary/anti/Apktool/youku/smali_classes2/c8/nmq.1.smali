.class public Lc8/nmq;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lc8/Kmq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mmq;->subscribeOn(Lc8/amq;)Lc8/Mmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Kmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Mmq;

.field final synthetic val$scheduler:Lc8/amq;


# direct methods
.method constructor <init>(Lc8/Mmq;Lc8/amq;)V
    .locals 0

    .prologue
    .line 1917
    .local p0, "this":Lc8/nmq;, "Lrx/Single.19;"
    iput-object p1, p0, Lc8/nmq;->this$0:Lc8/Mmq;

    iput-object p2, p0, Lc8/nmq;->val$scheduler:Lc8/amq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 1920
    .local p0, "this":Lc8/nmq;, "Lrx/Single.19;"
    .local p1, "t":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    iget-object v1, p0, Lc8/nmq;->val$scheduler:Lc8/amq;

    invoke-virtual {v1}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v0

    .line 1921
    .local v0, "w":Lc8/Zlq;
    invoke-virtual {p1, v0}, Lc8/Nmq;->add(Lc8/Pmq;)V

    .line 1923
    new-instance v1, Lc8/mmq;

    invoke-direct {v1, p0, p1, v0}, Lc8/mmq;-><init>(Lc8/nmq;Lc8/Nmq;Lc8/Zlq;)V

    invoke-virtual {v0, v1}, Lc8/Zlq;->schedule(Lc8/hnq;)Lc8/Pmq;

    .line 1951
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1917
    .local p0, "this":Lc8/nmq;, "Lrx/Single.19;"
    check-cast p1, Lc8/Nmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/nmq;->call(Lc8/Nmq;)V

    return-void
.end method
