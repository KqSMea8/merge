.class public interface abstract Lc8/fyb;
.super Ljava/lang/Object;
.source "WorkFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Flowable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/eyb;,
        Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract countFlow(Ljava/util/concurrent/CountDownLatch;)Lc8/Zxb;
.end method

.method public abstract currentThread()Lc8/dyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/dyb",
            "<TT;TR;>;"
        }
    .end annotation
.end method

.method public abstract flow()Lc8/Zxb;
.end method

.method public abstract flowToNext(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract getContext()Lc8/Zxb;
.end method

.method public abstract getResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public abstract hasNext()Z
.end method

.method public abstract isLooping()Z
.end method

.method public abstract newThread()Lc8/dyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/dyb",
            "<TT;TR;>;"
        }
    .end annotation
.end method

.method public abstract next()Lc8/fyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/fyb",
            "<TR;*>;"
        }
    .end annotation
.end method

.method public abstract onActionCall(Lc8/eyb;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/eyb",
            "<TR;>;)V"
        }
    .end annotation
.end method

.method public abstract prior()Lc8/fyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/fyb",
            "<*TT;>;"
        }
    .end annotation
.end method

.method public abstract scheduleFlow(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract setAction(Lc8/Hxb;)Lc8/fyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lc8/Hxb",
            "<TT;TR;>;>(TA;)",
            "Lc8/fyb",
            "<TT;TR;>;"
        }
    .end annotation
.end method

.method public abstract setContext(Lc8/Zxb;)Lc8/fyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Zxb;",
            ")",
            "Lc8/fyb",
            "<TT;TR;>;"
        }
    .end annotation
.end method

.method public abstract setNext(Lc8/fyb;)Lc8/fyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/fyb",
            "<TR;*>;)",
            "Lc8/fyb",
            "<TT;TR;>;"
        }
    .end annotation
.end method

.method public abstract setPrior(Lc8/fyb;)Lc8/fyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/fyb",
            "<*TT;>;)",
            "Lc8/fyb",
            "<TT;TR;>;"
        }
    .end annotation
.end method

.method public abstract subThread()Lc8/dyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/dyb",
            "<TT;TR;>;"
        }
    .end annotation
.end method

.method public abstract uiThread()Lc8/dyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/dyb",
            "<TT;TR;>;"
        }
    .end annotation
.end method
