.class public Lcom/meizu/cloud/pushsdk/notification/MPushMessage;
.super Ljava/lang/Object;
.source "MPushMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "MPushMessage"


# instance fields
.field private clickType:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isDiscard:Ljava/lang/String;

.field private notifyType:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pushType:Ljava/lang/String;

.field private taskId:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->extra:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->params:Ljava/util/Map;

    return-void
.end method

.method private static getParamsMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .param p0, "paramsJsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 243
    .local v3, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 244
    .local v1, "extraIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 245
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 246
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    .end local v1    # "extraIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 252
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v3
.end method

.method public static parsePushMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/notification/MPushMessage;
    .locals 10
    .param p0, "pushType"    # Ljava/lang/String;
    .param p1, "pushMessage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "taskId"    # Ljava/lang/String;

    .prologue
    .line 194
    new-instance v4, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;

    invoke-direct {v4}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;-><init>()V

    .line 196
    .local v4, "mPushMessage":Lcom/meizu/cloud/pushsdk/notification/MPushMessage;
    :try_start_0
    invoke-virtual {v4, p3}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setTaskId(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v4, p0}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setPushType(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v4, p2}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setPackageName(Ljava/lang/String;)V

    .line 199
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "contentPushMessageObj":Lorg/json/JSONObject;
    const-string/jumbo v7, "data"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 201
    .local v6, "pushMessageObj":Lorg/json/JSONObject;
    const-string/jumbo v7, "content"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 202
    const-string/jumbo v7, "content"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setContent(Ljava/lang/String;)V

    .line 204
    :cond_0
    const-string/jumbo v7, "isDiscard"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 205
    const-string/jumbo v7, "isDiscard"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setIsDiscard(Ljava/lang/String;)V

    .line 207
    :cond_1
    const-string/jumbo v7, "title"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 208
    const-string/jumbo v7, "title"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setTitle(Ljava/lang/String;)V

    .line 210
    :cond_2
    const-string/jumbo v7, "clickType"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 211
    const-string/jumbo v7, "clickType"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setClickType(Ljava/lang/String;)V

    .line 213
    :cond_3
    const-string/jumbo v7, "extra"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 214
    const-string/jumbo v7, "extra"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 215
    .local v2, "extraArray":Lorg/json/JSONObject;
    if-eqz v2, :cond_6

    .line 216
    const-string/jumbo v7, "parameters"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_5

    .line 217
    const/4 v5, 0x0

    .line 219
    .local v5, "parametersJsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v7, "parameters"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 223
    if-eqz v5, :cond_4

    .line 224
    :try_start_2
    invoke-static {v5}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->getParamsMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setParams(Ljava/util/Map;)V

    .line 226
    :cond_4
    const-string/jumbo v7, "parameters"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 229
    .end local v5    # "parametersJsonObject":Lorg/json/JSONObject;
    :cond_5
    :goto_0
    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->getParamsMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 230
    .local v3, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4, v3}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setExtra(Ljava/util/Map;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 236
    .end local v0    # "contentPushMessageObj":Lorg/json/JSONObject;
    .end local v2    # "extraArray":Lorg/json/JSONObject;
    .end local v3    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "pushMessageObj":Lorg/json/JSONObject;
    :cond_6
    :goto_1
    const-string/jumbo v7, "MPushMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " parsePushMessage "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-object v4

    .line 220
    .restart local v0    # "contentPushMessageObj":Lorg/json/JSONObject;
    .restart local v2    # "extraArray":Lorg/json/JSONObject;
    .restart local v5    # "parametersJsonObject":Lorg/json/JSONObject;
    .restart local v6    # "pushMessageObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    const-string/jumbo v7, "MPushMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parameter parse error message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    if-eqz v5, :cond_7

    .line 224
    :try_start_4
    invoke-static {v5}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->getParamsMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setParams(Ljava/util/Map;)V

    .line 226
    :cond_7
    const-string/jumbo v7, "parameters"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 233
    .end local v0    # "contentPushMessageObj":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "extraArray":Lorg/json/JSONObject;
    .end local v5    # "parametersJsonObject":Lorg/json/JSONObject;
    .end local v6    # "pushMessageObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 234
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string/jumbo v7, "MPushMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parse push message error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 223
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "contentPushMessageObj":Lorg/json/JSONObject;
    .restart local v2    # "extraArray":Lorg/json/JSONObject;
    .restart local v5    # "parametersJsonObject":Lorg/json/JSONObject;
    .restart local v6    # "pushMessageObj":Lorg/json/JSONObject;
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_8

    .line 224
    :try_start_5
    invoke-static {v5}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->getParamsMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->setParams(Ljava/util/Map;)V

    .line 226
    :cond_8
    const-string/jumbo v8, "parameters"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    throw v7
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
.end method


# virtual methods
.method public getClickType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->clickType:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->extra:Ljava/util/Map;

    return-object v0
.end method

.method public getIsDiscard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->isDiscard:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->notifyType:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getPushType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->pushType:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setClickType(Ljava/lang/String;)V
    .locals 0
    .param p1, "clickType"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->clickType:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->content:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setExtra(Ljava/util/Map;)V
    .locals 0
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

    .prologue
    .line 120
    .local p1, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->extra:Ljava/util/Map;

    .line 121
    return-void
.end method

.method public setIsDiscard(Ljava/lang/String;)V
    .locals 0
    .param p1, "isDiscard"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->isDiscard:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setNotifyType(Ljava/lang/String;)V
    .locals 0
    .param p1, "notifyType"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->notifyType:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->packageName:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
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

    .prologue
    .line 170
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->params:Ljava/util/Map;

    .line 171
    return-void
.end method

.method public setPushType(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushType"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->pushType:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->taskId:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->title:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MPushMessage{taskId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pushType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->pushType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", notifyType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->notifyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", clickType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->clickType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isDiscard=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->isDiscard:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->extra:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->params:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
