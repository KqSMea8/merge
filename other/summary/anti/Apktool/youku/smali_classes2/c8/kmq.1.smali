.class public Lc8/kmq;
.super Lc8/Omq;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mmq;->subscribe(Lc8/Nmq;)Lc8/Pmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Mmq;

.field final synthetic val$te:Lc8/Nmq;


# direct methods
.method constructor <init>(Lc8/Mmq;Lc8/Nmq;)V
    .locals 0

    .prologue
    .line 1874
    .local p0, "this":Lc8/kmq;, "Lrx/Single.18;"
    iput-object p1, p0, Lc8/kmq;->this$0:Lc8/Mmq;

    iput-object p2, p0, Lc8/kmq;->val$te:Lc8/Nmq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 1879
    .local p0, "this":Lc8/kmq;, "Lrx/Single.18;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1883
    .local p0, "this":Lc8/kmq;, "Lrx/Single.18;"
    iget-object v0, p0, Lc8/kmq;->val$te:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    .line 1884
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1888
    .local p0, "this":Lc8/kmq;, "Lrx/Single.18;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/kmq;->val$te:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onSuccess(Ljava/lang/Object;)V

    .line 1889
    return-void
.end method
