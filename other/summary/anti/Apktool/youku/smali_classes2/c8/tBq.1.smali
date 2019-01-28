.class public final Lc8/tBq;
.super Ljava/lang/Object;
.source "AsyncSubject.java"

# interfaces
.implements Lc8/inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/uBq;->create()Lc8/uBq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/inq",
        "<",
        "Lc8/JBq",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$state:Lrx/subjects/SubjectSubscriptionManager;


# direct methods
.method constructor <init>(Lrx/subjects/SubjectSubscriptionManager;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lc8/tBq;->val$state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/JBq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/JBq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "o":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v2, p0, Lc8/tBq;->val$state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v2}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v1

    .line 76
    .local v1, "v":Ljava/lang/Object;
    iget-object v2, p0, Lc8/tBq;->val$state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v0, v2, Lrx/subjects/SubjectSubscriptionManager;->nl:Lc8/cpq;

    .line 77
    .local v0, "nl":Lc8/cpq;, "Lrx/internal/operators/NotificationLite<TT;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lc8/cpq;->isCompleted(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    :cond_0
    invoke-virtual {p1}, Lc8/JBq;->onCompleted()V

    .line 85
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {v0, v1}, Lc8/cpq;->isError(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {v0, v1}, Lc8/cpq;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lc8/JBq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v2, p1, Lc8/JBq;->actual:Lc8/Omq;

    new-instance v3, Lrx/internal/producers/SingleProducer;

    iget-object v4, p1, Lc8/JBq;->actual:Lc8/Omq;

    invoke-virtual {v0, v1}, Lc8/cpq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lrx/internal/producers/SingleProducer;-><init>(Lc8/Omq;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p1, Lc8/JBq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/tBq;->call(Lc8/JBq;)V

    return-void
.end method
