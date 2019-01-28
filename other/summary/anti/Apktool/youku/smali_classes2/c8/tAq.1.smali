.class public final Lc8/tAq;
.super Lc8/Omq;
.source "Subscribers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/wAq;->create(Lc8/inq;Lc8/inq;)Lc8/Omq;
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
.field final synthetic val$onError:Lc8/inq;

.field final synthetic val$onNext:Lc8/inq;


# direct methods
.method constructor <init>(Lc8/inq;Lc8/inq;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lc8/tAq;->val$onError:Lc8/inq;

    iput-object p2, p0, Lc8/tAq;->val$onNext:Lc8/inq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 142
    iget-object v0, p0, Lc8/tAq;->val$onError:Lc8/inq;

    invoke-interface {v0, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 143
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
    .line 147
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/tAq;->val$onNext:Lc8/inq;

    invoke-interface {v0, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 148
    return-void
.end method
