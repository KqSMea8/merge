.class public interface abstract Lc8/uyf;
.super Ljava/lang/Object;
.source "Producer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OUT:",
        "Ljava/lang/Object;",
        "CONTEXT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getProduceScheduler()Lc8/Nyf;
.end method

.method public abstract produceOn(Lc8/Nyf;)Lc8/uyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nyf;",
            ")",
            "Lc8/uyf",
            "<TOUT;TCONTEXT;>;"
        }
    .end annotation
.end method

.method public abstract produceResults(Lc8/oyf;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;)V"
        }
    .end annotation
.end method
