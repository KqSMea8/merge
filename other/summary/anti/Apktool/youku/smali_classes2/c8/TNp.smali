.class public Lc8/TNp;
.super Lc8/SNp;
.source "MtopCacheListenerProxy.java"

# interfaces
.implements Lc8/INp;


# static fields
.field private static final TAG:Ljava/lang/String; = "MtopCacheListenerProxy"


# direct methods
.method public constructor <init>(Lc8/QNp;)V
    .locals 0
    .param p1, "listener"    # Lc8/QNp;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lc8/SNp;-><init>(Lc8/QNp;)V

    .line 13
    return-void
.end method


# virtual methods
.method public onCached(Lc8/HNp;Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Lc8/HNp;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 17
    iget-object v0, p0, Lc8/TNp;->listener:Lc8/QNp;

    instance-of v0, v0, Lc8/INp;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lc8/TNp;->listener:Lc8/QNp;

    check-cast v0, Lc8/INp;

    invoke-interface {v0, p1, p2}, Lc8/INp;->onCached(Lc8/HNp;Ljava/lang/Object;)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/TNp;->isCached:Z

    .line 21
    :cond_0
    return-void
.end method
