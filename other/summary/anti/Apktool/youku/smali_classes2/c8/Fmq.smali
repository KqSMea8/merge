.class public final Lc8/Fmq;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lc8/Kmq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mmq;->merge(Lc8/Mmq;)Lc8/Mmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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
.field final synthetic val$source:Lc8/Mmq;


# direct methods
.method constructor <init>(Lc8/Mmq;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lc8/Fmq;->val$source:Lc8/Mmq;

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
    .line 687
    .local p1, "child":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lc8/Emq;

    invoke-direct {v0, p0, p1}, Lc8/Emq;-><init>(Lc8/Fmq;Lc8/Nmq;)V

    .line 700
    .local v0, "parent":Lc8/Nmq;, "Lrx/SingleSubscriber<Lrx/Single<+TT;>;>;"
    invoke-virtual {p1, v0}, Lc8/Nmq;->add(Lc8/Pmq;)V

    .line 701
    iget-object v1, p0, Lc8/Fmq;->val$source:Lc8/Mmq;

    invoke-virtual {v1, v0}, Lc8/Mmq;->subscribe(Lc8/Nmq;)Lc8/Pmq;

    .line 702
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 683
    check-cast p1, Lc8/Nmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Fmq;->call(Lc8/Nmq;)V

    return-void
.end method
