.class public Lc8/Emq;
.super Lc8/Nmq;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Fmq;->call(Lc8/Nmq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Nmq",
        "<",
        "Lc8/Mmq",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Fmq;

.field final synthetic val$child:Lc8/Nmq;


# direct methods
.method constructor <init>(Lc8/Fmq;Lc8/Nmq;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lc8/Emq;->this$0:Lc8/Fmq;

    iput-object p2, p0, Lc8/Emq;->val$child:Lc8/Nmq;

    invoke-direct {p0}, Lc8/Nmq;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 696
    iget-object v0, p0, Lc8/Emq;->val$child:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    .line 697
    return-void
.end method

.method public onSuccess(Lc8/Mmq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mmq",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 691
    .local p1, "innerSingle":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    iget-object v0, p0, Lc8/Emq;->val$child:Lc8/Nmq;

    invoke-virtual {p1, v0}, Lc8/Mmq;->subscribe(Lc8/Nmq;)Lc8/Pmq;

    .line 692
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 687
    check-cast p1, Lc8/Mmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Emq;->onSuccess(Lc8/Mmq;)V

    return-void
.end method
