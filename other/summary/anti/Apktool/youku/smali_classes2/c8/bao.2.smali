.class public interface abstract Lc8/bao;
.super Ljava/lang/Object;
.source "CallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFailure(Lc8/aao;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/aao",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onResponse(Lc8/aao;Lc8/eao;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/aao",
            "<TT;>;",
            "Lc8/eao",
            "<TT;>;)V"
        }
    .end annotation
.end method
