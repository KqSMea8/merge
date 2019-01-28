.class public interface abstract Lc8/thb;
.super Ljava/lang/Object;
.source "RpcService.java"


# virtual methods
.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract invoke(Lc8/Xgb;Ljava/lang/Class;)Lc8/Zgb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Xgb;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lc8/Zgb",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract invoke(Lc8/Xgb;)Ljava/lang/String;
.end method

.method public abstract logout()V
.end method

.method public abstract registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract remoteBusiness(Lc8/Xgb;Ljava/lang/Class;Lc8/Ygb;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc8/Zgb",
            "<*>;>(",
            "Lc8/Xgb;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lc8/Ygb;",
            ")V"
        }
    .end annotation
.end method
