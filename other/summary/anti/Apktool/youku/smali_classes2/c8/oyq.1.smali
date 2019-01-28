.class public final Lc8/oyq;
.super Lc8/Vlq;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/nyq;,
        Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;,
        Lc8/myq;,
        Lc8/lyq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Vlq",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final STRONG_MODE:Z


# instance fields
.field final t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const-string/jumbo v1, "rx.just.strong-mode"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "wp":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lc8/oyq;->STRONG_MODE:Z

    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lc8/oyq;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lc8/lyq;

    invoke-direct {v0, p1}, Lc8/lyq;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lc8/WAq;->onCreate(Lc8/Rlq;)Lc8/Rlq;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Vlq;-><init>(Lc8/Rlq;)V

    .line 77
    iput-object p1, p0, Lc8/oyq;->t:Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public static create(Ljava/lang/Object;)Lc8/oyq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lc8/oyq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lc8/oyq;

    invoke-direct {v0, p0}, Lc8/oyq;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static createProducer(Lc8/Omq;Ljava/lang/Object;)Lc8/Xlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Omq",
            "<-TT;>;TT;)",
            "Lc8/Xlq;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "s":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    sget-boolean v0, Lc8/oyq;->STRONG_MODE:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lrx/internal/producers/SingleProducer;

    invoke-direct {v0, p0, p1}, Lrx/internal/producers/SingleProducer;-><init>(Lc8/Omq;Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/nyq;

    invoke-direct {v0, p0, p1}, Lc8/nyq;-><init>(Lc8/Omq;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lc8/oyq;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    iget-object v0, p0, Lc8/oyq;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public scalarFlatMap(Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TR;>;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lc8/oyq;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    .local p1, "func":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    new-instance v0, Lc8/kyq;

    invoke-direct {v0, p0, p1}, Lc8/kyq;-><init>(Lc8/oyq;Lc8/Inq;)V

    invoke-static {v0}, Lc8/oyq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public scalarScheduleOn(Lc8/amq;)Lc8/Vlq;
    .locals 4
    .param p1, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lc8/oyq;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    instance-of v2, p1, Lc8/Ywq;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 98
    check-cast v0, Lc8/Ywq;

    .line 99
    .local v0, "els":Lc8/Ywq;
    new-instance v1, Lc8/hyq;

    invoke-direct {v1, p0, v0}, Lc8/hyq;-><init>(Lc8/oyq;Lc8/Ywq;)V

    .line 125
    .end local v0    # "els":Lc8/Ywq;
    .local v1, "onSchedule":Lc8/Inq;, "Lrx/functions/Func1<Lrx/functions/Action0;Lrx/Subscription;>;"
    :goto_0
    new-instance v2, Lc8/myq;

    iget-object v3, p0, Lc8/oyq;->t:Ljava/lang/Object;

    invoke-direct {v2, v3, v1}, Lc8/myq;-><init>(Ljava/lang/Object;Lc8/Inq;)V

    invoke-static {v2}, Lc8/oyq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v2

    return-object v2

    .line 106
    .end local v1    # "onSchedule":Lc8/Inq;, "Lrx/functions/Func1<Lrx/functions/Action0;Lrx/Subscription;>;"
    :cond_0
    new-instance v1, Lc8/jyq;

    invoke-direct {v1, p0, p1}, Lc8/jyq;-><init>(Lc8/oyq;Lc8/amq;)V

    .restart local v1    # "onSchedule":Lc8/Inq;, "Lrx/functions/Func1<Lrx/functions/Action0;Lrx/Subscription;>;"
    goto :goto_0
.end method
