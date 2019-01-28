.class public interface abstract Lc8/zzk;
.super Ljava/lang/Object;
.source "PlaylistManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Czk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnBatchRemoveFavoriteListener"
.end annotation


# virtual methods
.method public abstract OnBatchRemoveFavoriteFail(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract OnBatchRemoveFavoriteSuccess(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
