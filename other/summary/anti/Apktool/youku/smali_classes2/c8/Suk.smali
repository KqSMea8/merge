.class public Lc8/Suk;
.super Ljava/lang/Object;
.source "FavoriteManager.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Yuk;->mergeFavorite(Ljava/lang/String;Lc8/Xuk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Yuk;

.field final synthetic val$backUid:Ljava/lang/String;

.field final synthetic val$listener:Lc8/Xuk;


# direct methods
.method constructor <init>(Lc8/Yuk;Ljava/lang/String;Lc8/Xuk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Yuk;

    .prologue
    .line 533
    iput-object p1, p0, Lc8/Suk;->this$0:Lc8/Yuk;

    iput-object p2, p0, Lc8/Suk;->val$backUid:Ljava/lang/String;

    iput-object p3, p0, Lc8/Suk;->val$listener:Lc8/Xuk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 6
    .param p1, "event"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 537
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v2

    .line 538
    .local v2, "response":Lmtopsdk/mtop/domain/MtopResponse;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mergeFavorite onFinished, response:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    :try_start_0
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 542
    iget-object v4, p0, Lc8/Suk;->this$0:Lc8/Yuk;

    invoke-static {v4}, Lc8/Yuk;->access$000(Lc8/Yuk;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lc8/uZo;->showFlotLimitTip(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 549
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 550
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "result"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 551
    .local v3, "success":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mergeFavorite, isApiSuccess, uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/Suk;->val$backUid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; guid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; success = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    if-eqz v3, :cond_1

    .line 553
    iget-object v4, p0, Lc8/Suk;->val$listener:Lc8/Xuk;

    invoke-interface {v4}, Lc8/Xuk;->onMergeFavoriteSuccess()V

    .line 580
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "success":Z
    :goto_1
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 555
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v3    # "success":Z
    :cond_1
    iget-object v4, p0, Lc8/Suk;->val$listener:Lc8/Xuk;

    sget-object v5, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface {v4, v5}, Lc8/Xuk;->onMergeFavoriteFail(Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_1

    .line 559
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "success":Z
    :cond_2
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 562
    iget-object v4, p0, Lc8/Suk;->val$listener:Lc8/Xuk;

    sget-object v5, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_SESSION_INVALID:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface {v4, v5}, Lc8/Xuk;->onMergeFavoriteFail(Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_1

    .line 563
    :cond_3
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 566
    iget-object v4, p0, Lc8/Suk;->val$listener:Lc8/Xuk;

    sget-object v5, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface {v4, v5}, Lc8/Xuk;->onMergeFavoriteFail(Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_1

    .line 567
    :cond_4
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v4

    if-nez v4, :cond_5

    .line 568
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 572
    :cond_5
    iget-object v4, p0, Lc8/Suk;->val$listener:Lc8/Xuk;

    sget-object v5, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_SYSTEM:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface {v4, v5}, Lc8/Xuk;->onMergeFavoriteFail(Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_1

    .line 578
    :cond_6
    iget-object v4, p0, Lc8/Suk;->val$listener:Lc8/Xuk;

    sget-object v5, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface {v4, v5}, Lc8/Xuk;->onMergeFavoriteFail(Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_1
.end method
