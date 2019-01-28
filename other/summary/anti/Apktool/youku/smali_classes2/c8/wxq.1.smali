.class public final Lc8/wxq;
.super Ljava/lang/Object;
.source "ActionNotificationObserver.java"

# interfaces
.implements Lc8/Wlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Wlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final onNotification:Lc8/inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/inq",
            "<",
            "Lc8/Qlq",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/inq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<",
            "Lc8/Qlq",
            "<-TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lc8/wxq;, "Lrx/internal/util/ActionNotificationObserver<TT;>;"
    .local p1, "onNotification":Lc8/inq;, "Lrx/functions/Action1<Lrx/Notification<-TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lc8/wxq;->onNotification:Lc8/inq;

    .line 32
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 46
    .local p0, "this":Lc8/wxq;, "Lrx/internal/util/ActionNotificationObserver<TT;>;"
    iget-object v0, p0, Lc8/wxq;->onNotification:Lc8/inq;

    invoke-static {}, Lc8/Qlq;->createOnCompleted()Lc8/Qlq;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    .local p0, "this":Lc8/wxq;, "Lrx/internal/util/ActionNotificationObserver<TT;>;"
    iget-object v0, p0, Lc8/wxq;->onNotification:Lc8/inq;

    invoke-static {p1}, Lc8/Qlq;->createOnError(Ljava/lang/Throwable;)Lc8/Qlq;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lc8/wxq;, "Lrx/internal/util/ActionNotificationObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/wxq;->onNotification:Lc8/inq;

    invoke-static {p1}, Lc8/Qlq;->createOnNext(Ljava/lang/Object;)Lc8/Qlq;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 37
    return-void
.end method
