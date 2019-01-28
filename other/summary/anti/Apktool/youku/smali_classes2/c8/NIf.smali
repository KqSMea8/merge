.class public interface abstract Lc8/NIf;
.super Ljava/lang/Object;
.source "BaseConnection.java"

# interfaces
.implements Lc8/Ulq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/PIf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Converter2Msg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Ulq",
        "<TT;TR;>;"
    }
.end annotation


# virtual methods
.method public abstract convertResponse(ILjava/util/Map;)Lcom/taobao/tao/messagekit/core/model/Ack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taobao/tao/messagekit/core/model/Ack;"
        }
    .end annotation
.end method
