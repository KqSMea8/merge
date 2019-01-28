.class public interface abstract Lc8/ehb;
.super Ljava/lang/Object;
.source "ServiceRegistry.java"


# virtual methods
.method public abstract getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public abstract getServices(Ljava/lang/Class;Ljava/util/Map;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[TT;"
        }
    .end annotation
.end method

.method public abstract registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/dhb;"
        }
    .end annotation
.end method

.method public abstract unregisterService(Lc8/dhb;)Ljava/lang/Object;
.end method
