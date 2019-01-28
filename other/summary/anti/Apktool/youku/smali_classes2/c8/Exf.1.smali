.class public interface abstract Lc8/Exf;
.super Ljava/lang/Object;
.source "HttpLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Dxf;
    }
.end annotation


# virtual methods
.method public abstract connectTimeout(I)V
.end method

.method public abstract load(Ljava/lang/String;Ljava/util/Map;Lc8/Dxf;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/Dxf;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract readTimeout(I)V
.end method
