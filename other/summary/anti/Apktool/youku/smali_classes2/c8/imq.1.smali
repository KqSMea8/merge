.class public Lc8/imq;
.super Lc8/Omq;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mmq;->subscribe(Lc8/inq;Lc8/inq;)Lc8/Pmq;
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

.field final synthetic val$onError:Lc8/inq;

.field final synthetic val$onSuccess:Lc8/inq;


# direct methods
.method constructor <init>(Lc8/Mmq;Lc8/inq;Lc8/inq;)V
    .locals 0

    .prologue
    .line 1667
    .local p0, "this":Lc8/imq;, "Lrx/Single.16;"
    iput-object p1, p0, Lc8/imq;->this$0:Lc8/Mmq;

    iput-object p2, p0, Lc8/imq;->val$onError:Lc8/inq;

    iput-object p3, p0, Lc8/imq;->val$onSuccess:Lc8/inq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 1672
    .local p0, "this":Lc8/imq;, "Lrx/Single.16;"
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1676
    .local p0, "this":Lc8/imq;, "Lrx/Single.16;"
    iget-object v0, p0, Lc8/imq;->val$onError:Lc8/inq;

    invoke-interface {v0, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 1677
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1681
    .local p0, "this":Lc8/imq;, "Lrx/Single.16;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/imq;->val$onSuccess:Lc8/inq;

    invoke-interface {v0, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 1682
    return-void
.end method
