.class public interface abstract Lc8/gog;
.super Ljava/lang/Object;
.source "AntTracker.java"


# virtual methods
.method public abstract registerABTestInfoOnPage(Ljava/lang/String;)V
.end method

.method public abstract registerAndValidateServerABTestInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerCustomABTestInfoOnPage(Ljava/lang/String;)V
.end method

.method public abstract registerExtInfoOnPage(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerServerABTestInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateExtInfoOnPage(Ljava/lang/Object;)V
.end method

.method public abstract validateServerABTest(Ljava/lang/String;Ljava/lang/String;)V
.end method
