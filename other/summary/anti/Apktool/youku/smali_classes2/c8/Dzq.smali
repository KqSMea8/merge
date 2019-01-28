.class public final Lc8/Dzq;
.super Lc8/Jzq;
.source "AsyncOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Jzq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AsyncOnSubscribeImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Jzq",
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

.field private final next:Lc8/Knq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Knq",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lc8/Wlq",
            "<",
            "Lc8/Vlq",
            "<+TT;>;>;+TS;>;"
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
.method public constructor <init>(Lc8/Hnq;Lc8/Knq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Hnq",
            "<+TS;>;",
            "Lc8/Knq",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lc8/Wlq",
            "<",
            "Lc8/Vlq",
            "<+TT;>;>;+TS;>;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lc8/Dzq;, "Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "generator":Lc8/Hnq;, "Lrx/functions/Func0<+TS;>;"
    .local p2, "next":Lc8/Knq;, "Lrx/functions/Func3<-TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;+TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/Dzq;-><init>(Lc8/Hnq;Lc8/Knq;Lc8/inq;)V

    .line 285
    return-void
.end method

.method constructor <init>(Lc8/Hnq;Lc8/Knq;Lc8/inq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Hnq",
            "<+TS;>;",
            "Lc8/Knq",
            "<-TS;",
            "Ljava/lang/Long;",
            "-",
            "Lc8/Wlq",
            "<",
            "Lc8/Vlq",
            "<+TT;>;>;+TS;>;",
            "Lc8/inq",
            "<-TS;>;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lc8/Dzq;, "Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "generator":Lc8/Hnq;, "Lrx/functions/Func0<+TS;>;"
    .local p2, "next":Lc8/Knq;, "Lrx/functions/Func3<-TS;Ljava/lang/Long;-Lrx/Observer<Lrx/Observable<+TT;>;>;+TS;>;"
    .local p3, "onUnsubscribe":Lc8/inq;, "Lrx/functions/Action1<-TS;>;"
    invoke-direct {p0}, Lc8/Jzq;-><init>()V

    .line 278
    iput-object p1, p0, Lc8/Dzq;->generator:Lc8/Hnq;

    .line 279
    iput-object p2, p0, Lc8/Dzq;->next:Lc8/Knq;

    .line 280
    iput-object p3, p0, Lc8/Dzq;->onUnsubscribe:Lc8/inq;

    .line 281
    return-void
.end method

.method public constructor <init>(Lc8/Knq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Knq",
            "<TS;",
            "Ljava/lang/Long;",
            "Lc8/Wlq",
            "<",
            "Lc8/Vlq",
            "<+TT;>;>;TS;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Dzq;, "Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "nextFunc":Lc8/Knq;, "Lrx/functions/Func3<TS;Ljava/lang/Long;Lrx/Observer<Lrx/Observable<+TT;>;>;TS;>;"
    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, v0, p1, v0}, Lc8/Dzq;-><init>(Lc8/Hnq;Lc8/Knq;Lc8/inq;)V

    .line 293
    return-void
.end method

.method public constructor <init>(Lc8/Knq;Lc8/inq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Knq",
            "<TS;",
            "Ljava/lang/Long;",
            "Lc8/Wlq",
            "<",
            "Lc8/Vlq",
            "<+TT;>;>;TS;>;",
            "Lc8/inq",
            "<-TS;>;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lc8/Dzq;, "Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "next":Lc8/Knq;, "Lrx/functions/Func3<TS;Ljava/lang/Long;Lrx/Observer<Lrx/Observable<+TT;>;>;TS;>;"
    .local p2, "onUnsubscribe":Lc8/inq;, "Lrx/functions/Action1<-TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lc8/Dzq;-><init>(Lc8/Hnq;Lc8/Knq;Lc8/inq;)V

    .line 289
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 272
    .local p0, "this":Lc8/Dzq;, "Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl<TS;TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lc8/Jzq;->call(Lc8/Omq;)V

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
    .line 297
    .local p0, "this":Lc8/Dzq;, "Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl<TS;TT;>;"
    iget-object v0, p0, Lc8/Dzq;->generator:Lc8/Hnq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/Dzq;->generator:Lc8/Hnq;

    invoke-interface {v0}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected next(Ljava/lang/Object;JLc8/Wlq;)Ljava/lang/Object;
    .locals 2
    .param p2, "requested"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;J",
            "Lc8/Wlq",
            "<",
            "Lc8/Vlq",
            "<+TT;>;>;)TS;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lc8/Dzq;, "Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p4, "observer":Lc8/Wlq;, "Lrx/Observer<Lrx/Observable<+TT;>;>;"
    iget-object v0, p0, Lc8/Dzq;->next:Lc8/Knq;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1, p4}, Lc8/Knq;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 307
    .local p0, "this":Lc8/Dzq;, "Lrx/observables/AsyncOnSubscribe$AsyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lc8/Dzq;->onUnsubscribe:Lc8/inq;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lc8/Dzq;->onUnsubscribe:Lc8/inq;

    invoke-interface {v0, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 310
    :cond_0
    return-void
.end method
