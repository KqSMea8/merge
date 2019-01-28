.class public abstract Lc8/BAq;
.super Ljava/lang/Object;
.source "RxJavaCompletableExecutionHook.java"


# annotations
.annotation build Lc8/bnq;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lc8/Llq;)Lc8/Llq;
    .locals 0
    .param p1, "f"    # Lc8/Llq;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    return-object p1
.end method

.method public onLift(Lc8/Mlq;)Lc8/Mlq;
    .locals 0
    .param p1, "lift"    # Lc8/Mlq;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    return-object p1
.end method

.method public onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    return-object p1
.end method

.method public onSubscribeStart(Lc8/Plq;Lc8/Llq;)Lc8/Llq;
    .locals 0
    .param p1, "completableInstance"    # Lc8/Plq;
    .param p2, "onSubscribe"    # Lc8/Llq;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    return-object p2
.end method
