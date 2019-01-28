.class public interface abstract Lc8/lM;
.super Ljava/lang/Object;
.source "NetworkCallBack.java"

# interfaces
.implements Lc8/sM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseCodeListener"
.end annotation


# virtual methods
.method public abstract onResponseCode(ILjava/util/Map;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method
