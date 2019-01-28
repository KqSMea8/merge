.class public Lc8/Ouk;
.super Ljava/lang/Object;
.source "FavoriteManager.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Yuk;->addOrCancelFavorite(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc8/Tuk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Yuk;

.field final synthetic val$addFavorite:Z

.field final synthetic val$backUid:Ljava/lang/String;

.field final synthetic val$listener:Lc8/Tuk;

.field final synthetic val$showId:Ljava/lang/String;

.field final synthetic val$src:Ljava/lang/String;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Yuk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Tuk;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lc8/Yuk;

    .prologue
    .line 171
    iput-object p1, p0, Lc8/Ouk;->this$0:Lc8/Yuk;

    iput-object p2, p0, Lc8/Ouk;->val$showId:Ljava/lang/String;

    iput-object p3, p0, Lc8/Ouk;->val$videoId:Ljava/lang/String;

    iput-object p4, p0, Lc8/Ouk;->val$backUid:Ljava/lang/String;

    iput-object p5, p0, Lc8/Ouk;->val$listener:Lc8/Tuk;

    iput-object p6, p0, Lc8/Ouk;->val$src:Ljava/lang/String;

    iput-boolean p7, p0, Lc8/Ouk;->val$addFavorite:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 18
    .param p1, "event"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 175
    invoke-virtual/range {p1 .. p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v16

    .line 176
    .local v16, "response":Lmtopsdk/mtop/domain/MtopResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addOrCancelFavorite onFinished, response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/Ouk;->this$0:Lc8/Yuk;

    invoke-static {v1}, Lc8/Yuk;->access$000(Lc8/Yuk;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/uZo;->showFlotLimitTip(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addOrCancelFavorite, isApiSuccess, showid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Ouk;->val$showId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";videoId =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Ouk;->val$videoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Ouk;->val$backUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; guid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    invoke-virtual/range {v16 .. v16}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v15

    .line 192
    .local v15, "json":Lorg/json/JSONObject;
    const-string/jumbo v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 193
    .local v17, "result":Z
    const-string/jumbo v1, "subCode"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "subCode":Ljava/lang/String;
    const-string/jumbo v1, "displayMsg"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "displayMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addOrCancelFavorite, listener onAddOrCancelFavoriteSuccess, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; subcode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\uff1b displayMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    if-eqz v17, :cond_1

    .line 197
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/Ouk;->val$listener:Lc8/Tuk;

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Ouk;->val$showId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ouk;->val$videoId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Ouk;->val$src:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lc8/Tuk;->onAddOrRemoveFavoriteSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/Ouk;->this$0:Lc8/Yuk;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lc8/Ouk;->val$addFavorite:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ouk;->val$showId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Ouk;->val$videoId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Ouk;->val$backUid:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v7}, Lc8/Yuk;->access$100(Lc8/Yuk;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .end local v5    # "subCode":Ljava/lang/String;
    .end local v6    # "displayMsg":Ljava/lang/String;
    .end local v15    # "json":Lorg/json/JSONObject;
    .end local v17    # "result":Z
    :goto_1
    return-void

    .line 182
    :catch_0
    move-exception v14

    .line 183
    .local v14, "e":Ljava/lang/Throwable;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 201
    .end local v14    # "e":Ljava/lang/Throwable;
    .restart local v5    # "subCode":Ljava/lang/String;
    .restart local v6    # "displayMsg":Ljava/lang/String;
    .restart local v15    # "json":Lorg/json/JSONObject;
    .restart local v17    # "result":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/Ouk;->val$listener:Lc8/Tuk;

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Ouk;->val$showId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Ouk;->val$videoId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Ouk;->val$src:Ljava/lang/String;

    sget-object v7, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface/range {v1 .. v7}, Lc8/Tuk;->onAddOrRemoveFavoriteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_1

    .line 206
    .end local v5    # "subCode":Ljava/lang/String;
    .end local v6    # "displayMsg":Ljava/lang/String;
    .end local v15    # "json":Lorg/json/JSONObject;
    .end local v17    # "result":Z
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 209
    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Ouk;->val$listener:Lc8/Tuk;

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Ouk;->val$showId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/Ouk;->val$videoId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/Ouk;->val$src:Ljava/lang/String;

    const-string/jumbo v11, "NONE"

    const-string/jumbo v12, ""

    sget-object v13, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_SESSION_INVALID:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface/range {v7 .. v13}, Lc8/Tuk;->onAddOrRemoveFavoriteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_1

    .line 210
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 213
    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Ouk;->val$listener:Lc8/Tuk;

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Ouk;->val$showId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/Ouk;->val$videoId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/Ouk;->val$src:Ljava/lang/String;

    const-string/jumbo v11, "NONE"

    const-string/jumbo v12, ""

    sget-object v13, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface/range {v7 .. v13}, Lc8/Tuk;->onAddOrRemoveFavoriteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_1

    .line 214
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual/range {v16 .. v16}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v1

    if-nez v1, :cond_5

    .line 215
    invoke-virtual/range {v16 .. v16}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual/range {v16 .. v16}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual/range {v16 .. v16}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 219
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Ouk;->val$listener:Lc8/Tuk;

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Ouk;->val$showId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/Ouk;->val$videoId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/Ouk;->val$src:Ljava/lang/String;

    const-string/jumbo v11, "NONE"

    const-string/jumbo v12, ""

    sget-object v13, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_SYSTEM:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface/range {v7 .. v13}, Lc8/Tuk;->onAddOrRemoveFavoriteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto/16 :goto_1

    .line 225
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Ouk;->val$listener:Lc8/Tuk;

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Ouk;->val$showId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/Ouk;->val$videoId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/Ouk;->val$src:Ljava/lang/String;

    const-string/jumbo v11, "NONE"

    const-string/jumbo v12, ""

    sget-object v13, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_BUSINESS:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface/range {v7 .. v13}, Lc8/Tuk;->onAddOrRemoveFavoriteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto/16 :goto_1
.end method
