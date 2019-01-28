.class public interface abstract Lc8/lyf;
.super Ljava/lang/Object;
.source "ChainConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OUT:",
        "Ljava/lang/Object;",
        "NEXT_OUT:",
        "Ljava/lang/Object;",
        "CONTEXT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract consumeCancellation(Lc8/oyf;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;)V"
        }
    .end annotation
.end method

.method public abstract consumeFailure(Lc8/oyf;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract consumeNewResult(Lc8/oyf;ZLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;ZTNEXT_OUT;)V"
        }
    .end annotation
.end method

.method public abstract consumeOn(Lc8/Nyf;)Lc8/lyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nyf;",
            ")",
            "Lc8/lyf",
            "<TOUT;TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation
.end method

.method public abstract consumeProgressUpdate(Lc8/oyf;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;F)V"
        }
    .end annotation
.end method

.method public abstract getConsumeScheduler()Lc8/Nyf;
.end method
