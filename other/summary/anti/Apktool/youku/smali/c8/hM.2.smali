.class public interface abstract Lc8/hM;
.super Ljava/lang/Object;
.source "Network.java"


# virtual methods
.method public abstract asyncSend(Lc8/uM;Ljava/lang/Object;Landroid/os/Handler;Lc8/sM;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/uM;",
            "Ljava/lang/Object;",
            "Landroid/os/Handler;",
            "Lc8/sM;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lc8/vM;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnection(Lc8/uM;Ljava/lang/Object;)Lc8/yM;
.end method

.method public abstract syncSend(Lc8/uM;Ljava/lang/Object;)Lc8/vM;
.end method
