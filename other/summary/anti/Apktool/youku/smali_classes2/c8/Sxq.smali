.class public final Lc8/Sxq;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RetryNotificationDematerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<",
        "Lc8/Vlq",
        "<+",
        "Lc8/Qlq",
        "<*>;>;",
        "Lc8/Vlq",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final notificationHandler:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lc8/Vlq",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Inq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lc8/Vlq",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "notificationHandler":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Throwable;>;+Lrx/Observable<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lc8/Sxq;->notificationHandler:Lc8/Inq;

    .line 219
    return-void
.end method


# virtual methods
.method public call(Lc8/Vlq;)Lc8/Vlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Qlq",
            "<*>;>;)",
            "Lc8/Vlq",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "notifications":Lc8/Vlq;, "Lrx/Observable<+Lrx/Notification<*>;>;"
    iget-object v0, p0, Lc8/Sxq;->notificationHandler:Lc8/Inq;

    sget-object v1, Lrx/internal/util/InternalObservableUtils;->ERROR_EXTRACTOR:Lc8/Jxq;

    invoke-virtual {p1, v1}, Lc8/Vlq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Vlq;

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 214
    check-cast p1, Lc8/Vlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Sxq;->call(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method
