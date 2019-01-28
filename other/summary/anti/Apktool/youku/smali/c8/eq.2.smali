.class public interface abstract Lc8/eq;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/gq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BackgroundCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract loadTile(II)V
.end method

.method public abstract recycleTile(Lc8/hq;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hq",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract refresh(I)V
.end method

.method public abstract updateRange(IIIII)V
.end method
