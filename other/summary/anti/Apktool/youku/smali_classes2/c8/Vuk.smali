.class public interface abstract Lc8/Vuk;
.super Ljava/lang/Object;
.source "FavoriteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Yuk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnCheckFavoriteListListener"
.end annotation


# virtual methods
.method public abstract OnCheckFavoriteListFail(Ljava/util/List;Ljava/util/List;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract OnCheckFavoriteListSuccess(Ljava/util/List;Ljava/util/List;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation
.end method
