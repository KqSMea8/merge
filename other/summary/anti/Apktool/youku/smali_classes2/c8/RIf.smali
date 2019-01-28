.class public abstract Lc8/RIf;
.super Ljava/lang/Object;
.source "IMsgRouter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IMsgRouter"


# instance fields
.field private inited:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract downObserver()Lc8/Wlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Wlq",
            "<",
            "Lc8/RJf;",
            ">;"
        }
    .end annotation
.end method

.method protected init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 31
    iget-boolean v0, p0, Lc8/RIf;->inited:Z

    if-nez v0, :cond_0

    .line 32
    const-string/jumbo v0, "IMsgRouter"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "init"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/ZJf;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {}, Lc8/DIf;->getInstance()Lc8/DIf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/DIf;->getDownStream()Lc8/VJf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/VJf;->getObservable()Lc8/Vlq;

    move-result-object v0

    invoke-static {}, Lc8/hBq;->computation()Lc8/amq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->subscribeOn(Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/QIf;

    invoke-direct {v1, p0}, Lc8/QIf;-><init>(Lc8/RIf;)V

    .line 34
    invoke-virtual {v0, v1}, Lc8/Vlq;->filter(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lc8/RIf;->downObserver()Lc8/Wlq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->subscribe(Lc8/Wlq;)Lc8/Pmq;

    .line 44
    iput-boolean v4, p0, Lc8/RIf;->inited:Z

    .line 46
    :cond_0
    return-void
.end method

.method public abstract returnCode()I
.end method
