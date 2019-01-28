.class public final Lc8/uAq;
.super Lc8/Omq;
.source "Subscribers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/wAq;->create(Lc8/inq;Lc8/inq;Lc8/hnq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$onComplete:Lc8/hnq;

.field final synthetic val$onError:Lc8/inq;

.field final synthetic val$onNext:Lc8/inq;


# direct methods
.method constructor <init>(Lc8/hnq;Lc8/inq;Lc8/inq;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lc8/uAq;->val$onComplete:Lc8/hnq;

    iput-object p2, p0, Lc8/uAq;->val$onError:Lc8/inq;

    iput-object p3, p0, Lc8/uAq;->val$onNext:Lc8/inq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lc8/uAq;->val$onComplete:Lc8/hnq;

    invoke-interface {v0}, Lc8/hnq;->call()V

    .line 188
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 192
    iget-object v0, p0, Lc8/uAq;->val$onError:Lc8/inq;

    invoke-interface {v0, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 193
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
    .line 197
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/uAq;->val$onNext:Lc8/inq;

    invoke-interface {v0, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 198
    return-void
.end method
