.class public final Lc8/wsq;
.super Ljava/lang/Object;
.source "OperatorMapNotification.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vsq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TR;TT;>;"
    }
.end annotation


# instance fields
.field final onCompleted:Lc8/Hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hnq",
            "<+TR;>;"
        }
    .end annotation
.end field

.field final onError:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-",
            "Ljava/lang/Throwable;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final onNext:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Inq;Lc8/Inq;Lc8/Hnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;+TR;>;",
            "Lc8/Inq",
            "<-",
            "Ljava/lang/Throwable;",
            "+TR;>;",
            "Lc8/Hnq",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lc8/wsq;, "Lrx/internal/operators/OperatorMapNotification<TT;TR;>;"
    .local p1, "onNext":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TR;>;"
    .local p2, "onError":Lc8/Inq;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+TR;>;"
    .local p3, "onCompleted":Lc8/Hnq;, "Lrx/functions/Func0<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lc8/wsq;->onNext:Lc8/Inq;

    .line 41
    iput-object p2, p0, Lc8/wsq;->onError:Lc8/Inq;

    .line 42
    iput-object p3, p0, Lc8/wsq;->onCompleted:Lc8/Hnq;

    .line 43
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lc8/wsq;, "Lrx/internal/operators/OperatorMapNotification<TT;TR;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lc8/vsq;

    iget-object v1, p0, Lc8/wsq;->onNext:Lc8/Inq;

    iget-object v2, p0, Lc8/wsq;->onError:Lc8/Inq;

    iget-object v3, p0, Lc8/wsq;->onCompleted:Lc8/Hnq;

    invoke-direct {v0, p1, v1, v2, v3}, Lc8/vsq;-><init>(Lc8/Omq;Lc8/Inq;Lc8/Inq;Lc8/Hnq;)V

    .line 48
    .local v0, "parent":Lc8/vsq;, "Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber<TT;TR;>;"
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 49
    new-instance v1, Lc8/usq;

    invoke-direct {v1, p0, v0}, Lc8/usq;-><init>(Lc8/wsq;Lc8/vsq;)V

    invoke-virtual {p1, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 55
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lc8/wsq;, "Lrx/internal/operators/OperatorMapNotification<TT;TR;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/wsq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
