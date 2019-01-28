.class public final Lc8/dAq;
.super Lc8/eAq;
.source "SyncOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/eAq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncOnSubscribeImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/eAq",
        "<TS;TT;>;"
    }
.end annotation


# instance fields
.field private final generator:Lc8/Hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hnq",
            "<+TS;>;"
        }
    .end annotation
.end field

.field private final next:Lc8/Jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Jnq",
            "<-TS;-",
            "Lc8/Wlq",
            "<-TT;>;+TS;>;"
        }
    .end annotation
.end field

.field private final onUnsubscribe:Lc8/inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/inq",
            "<-TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Hnq;Lc8/Jnq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Hnq",
            "<+TS;>;",
            "Lc8/Jnq",
            "<-TS;-",
            "Lc8/Wlq",
            "<-TT;>;+TS;>;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lc8/dAq;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "generator":Lc8/Hnq;, "Lrx/functions/Func0<+TS;>;"
    .local p2, "next":Lc8/Jnq;, "Lrx/functions/Func2<-TS;-Lrx/Observer<-TT;>;+TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/dAq;-><init>(Lc8/Hnq;Lc8/Jnq;Lc8/inq;)V

    .line 295
    return-void
.end method

.method constructor <init>(Lc8/Hnq;Lc8/Jnq;Lc8/inq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Hnq",
            "<+TS;>;",
            "Lc8/Jnq",
            "<-TS;-",
            "Lc8/Wlq",
            "<-TT;>;+TS;>;",
            "Lc8/inq",
            "<-TS;>;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lc8/dAq;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "generator":Lc8/Hnq;, "Lrx/functions/Func0<+TS;>;"
    .local p2, "next":Lc8/Jnq;, "Lrx/functions/Func2<-TS;-Lrx/Observer<-TT;>;+TS;>;"
    .local p3, "onUnsubscribe":Lc8/inq;, "Lrx/functions/Action1<-TS;>;"
    invoke-direct {p0}, Lc8/eAq;-><init>()V

    .line 288
    iput-object p1, p0, Lc8/dAq;->generator:Lc8/Hnq;

    .line 289
    iput-object p2, p0, Lc8/dAq;->next:Lc8/Jnq;

    .line 290
    iput-object p3, p0, Lc8/dAq;->onUnsubscribe:Lc8/inq;

    .line 291
    return-void
.end method

.method public constructor <init>(Lc8/Jnq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Jnq",
            "<TS;",
            "Lc8/Wlq",
            "<-TT;>;TS;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/dAq;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "nextFunc":Lc8/Jnq;, "Lrx/functions/Func2<TS;Lrx/Observer<-TT;>;TS;>;"
    const/4 v0, 0x0

    .line 302
    invoke-direct {p0, v0, p1, v0}, Lc8/dAq;-><init>(Lc8/Hnq;Lc8/Jnq;Lc8/inq;)V

    .line 303
    return-void
.end method

.method public constructor <init>(Lc8/Jnq;Lc8/inq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Jnq",
            "<TS;",
            "Lc8/Wlq",
            "<-TT;>;TS;>;",
            "Lc8/inq",
            "<-TS;>;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lc8/dAq;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "next":Lc8/Jnq;, "Lrx/functions/Func2<TS;Lrx/Observer<-TT;>;TS;>;"
    .local p2, "onUnsubscribe":Lc8/inq;, "Lrx/functions/Action1<-TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lc8/dAq;-><init>(Lc8/Hnq;Lc8/Jnq;Lc8/inq;)V

    .line 299
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 282
    .local p0, "this":Lc8/dAq;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lc8/eAq;->call(Lc8/Omq;)V

    return-void
.end method

.method protected generateState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lc8/dAq;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    iget-object v0, p0, Lc8/dAq;->generator:Lc8/Hnq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/dAq;->generator:Lc8/Hnq;

    invoke-interface {v0}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected next(Ljava/lang/Object;Lc8/Wlq;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lc8/Wlq",
            "<-TT;>;)TS;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lc8/dAq;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p2, "observer":Lc8/Wlq;, "Lrx/Observer<-TT;>;"
    iget-object v0, p0, Lc8/dAq;->next:Lc8/Jnq;

    invoke-interface {v0, p1, p2}, Lc8/Jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onUnsubscribe(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lc8/dAq;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lc8/dAq;->onUnsubscribe:Lc8/inq;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lc8/dAq;->onUnsubscribe:Lc8/inq;

    invoke-interface {v0, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 320
    :cond_0
    return-void
.end method
