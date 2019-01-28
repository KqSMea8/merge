.class public Lc8/Qrq;
.super Lc8/Omq;
.source "OperatorDistinct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Srq;->call(Lc8/Omq;)Lc8/Omq;
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
.field keyMemory:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TU;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/Srq;

.field final synthetic val$child:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/Srq;Lc8/Omq;Lc8/Omq;)V
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lc8/Qrq;, "Lrx/internal/operators/OperatorDistinct.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/Qrq;->this$0:Lc8/Srq;

    iput-object p3, p0, Lc8/Qrq;->val$child:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/Qrq;->keyMemory:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 77
    .local p0, "this":Lc8/Qrq;, "Lrx/internal/operators/OperatorDistinct.1;"
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Qrq;->keyMemory:Ljava/util/Set;

    .line 78
    iget-object v0, p0, Lc8/Qrq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 79
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    .local p0, "this":Lc8/Qrq;, "Lrx/internal/operators/OperatorDistinct.1;"
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Qrq;->keyMemory:Ljava/util/Set;

    .line 72
    iget-object v0, p0, Lc8/Qrq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lc8/Qrq;, "Lrx/internal/operators/OperatorDistinct.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lc8/Qrq;->this$0:Lc8/Srq;

    iget-object v1, v1, Lc8/Srq;->keySelector:Lc8/Inq;

    invoke-interface {v1, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    .local v0, "key":Ljava/lang/Object;, "TU;"
    iget-object v1, p0, Lc8/Qrq;->keyMemory:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lc8/Qrq;->val$child:Lc8/Omq;

    invoke-virtual {v1, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lc8/Qrq;->request(J)V

    goto :goto_0
.end method
