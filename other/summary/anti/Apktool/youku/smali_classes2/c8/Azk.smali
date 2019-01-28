.class public interface abstract Lc8/Azk;
.super Ljava/lang/Object;
.source "PlaylistManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Czk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnCheckFavoriteListListener"
.end annotation


# virtual methods
.method public abstract OnCheckFavoriteListFail(Ljava/util/List;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract OnCheckFavoriteListSuccess(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation
.end method
