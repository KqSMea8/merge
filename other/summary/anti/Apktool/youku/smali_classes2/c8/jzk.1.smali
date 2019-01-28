.class public Lc8/jzk;
.super Ljava/lang/Object;
.source "OfflineSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/izk;,
        Lc8/hzk;
    }
.end annotation


# static fields
.field public static final ACTION_MERGER_FAILED:Ljava/lang/String; = "com.youku.action.merger_failed"

.field public static final ACTION_MERGER_SUCCESS:Ljava/lang/String; = "com.youku.action.merger_success"

.field public static final OFFLINE_SUBSCRIBE_HAS_DONE_CODE:I = -0x12e

.field public static final OFFLINE_SUBSCRIBE_LOGIN_MORE_CODE:I = -0x12c

.field public static final OFFLINE_SUBSCRIBE_NOT_EXIST_CODE:I = -0x12f

.field public static final OFFLINE_SUBSCRIBE_SUCCESS_CODE:I = 0x1

.field public static final OFFLINE_SUBSCRIBE_UID_NOT_EXIST:I = -0x71

.field private static final TAG:Ljava/lang/String; = "OfflineSubscribe"

.field private static mOfflineSubscribe:Lc8/jzk;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lc8/jzk;->mOfflineSubscribe:Lc8/jzk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lc8/jzk;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/jzk;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/jzk;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lc8/jzk;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lc8/jzk;->mOfflineSubscribe:Lc8/jzk;

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lc8/jzk;->syncInit()V

    .line 42
    :cond_0
    sget-object v0, Lc8/jzk;->mOfflineSubscribe:Lc8/jzk;

    return-object v0
.end method

.method private httpRequestURL(Ljava/lang/String;Lc8/hzk;)V
    .locals 4
    .param p1, "urlAddress"    # Ljava/lang/String;
    .param p2, "mIOfflineSubscribeCallBack"    # Lc8/hzk;

    .prologue
    const/4 v3, 0x1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "====urladdress====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    const-class v0, Lc8/TIj;

    invoke-static {v0, v3}, Lc8/ddn;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/TIj;

    new-instance v1, Lcom/youku/network/HttpIntent;

    const-string/jumbo v2, "POST"

    invoke-direct {v1, p1, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Lc8/gzk;

    invoke-direct {v2, p0, p2}, Lc8/gzk;-><init>(Lc8/jzk;Lc8/hzk;)V

    invoke-interface {v0, v1, v2}, Lc8/TIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 157
    return-void
.end method

.method private static declared-synchronized syncInit()V
    .locals 2

    .prologue
    .line 46
    const-class v1, Lc8/jzk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/jzk;->mOfflineSubscribe:Lc8/jzk;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lc8/jzk;

    invoke-direct {v0}, Lc8/jzk;-><init>()V

    sput-object v0, Lc8/jzk;->mOfflineSubscribe:Lc8/jzk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    monitor-exit v1

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public createOfflineSubscribe(Lc8/hzk;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .param p1, "mIOfflineSubscribeCallBack"    # Lc8/hzk;
    .param p2, "friendId"    # Ljava/lang/String;
    .param p3, "from"    # Ljava/lang/String;
    .param p4, "isMedia"    # Z
    .param p5, "showIdString"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Lc8/lzk;->getCreateOfflinURL()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "createOfflineSubscribeURL":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    if-eqz p4, :cond_0

    .line 62
    const-string/jumbo v2, "&is_media="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v2, "&showid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :goto_0
    const-string/jumbo v2, "&from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request subscribe creat url OFFonline:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lc8/jzk;->httpRequestURL(Ljava/lang/String;Lc8/hzk;)V

    .line 72
    return-void

    .line 65
    :cond_0
    const-string/jumbo v2, "&is_media="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v2, "&showid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string/jumbo v2, "&friend="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public deleteOfflineSubscribe(Lc8/hzk;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .param p1, "mIOfflineSubscribeCallBack"    # Lc8/hzk;
    .param p2, "friendId"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showIdString"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/lzk;->getDeleteOfflineUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&friend="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "deleteOfflineSubscribeURL":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    if-eqz p3, :cond_0

    .line 80
    const-string/jumbo v2, "&is_media="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string/jumbo v2, "&showid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lc8/jzk;->httpRequestURL(Ljava/lang/String;Lc8/hzk;)V

    .line 88
    return-void

    .line 83
    :cond_0
    const-string/jumbo v2, "&is_media="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v2, "&showid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v2, "&friend="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getOfflineSubscribeList()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lc8/lzk;->getOfflineSubscribeListURL()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "listOfflineSubscribeURL":Ljava/lang/String;
    new-instance v1, Lc8/ezk;

    invoke-direct {v1, p0}, Lc8/ezk;-><init>(Lc8/jzk;)V

    invoke-direct {p0, v0, v1}, Lc8/jzk;->httpRequestURL(Ljava/lang/String;Lc8/hzk;)V

    .line 106
    return-void
.end method

.method public mergeOfflineSubscribeList()V
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lc8/lzk;->getMergeOfflineListUrl()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "mergeSubscribeURL":Ljava/lang/String;
    new-instance v1, Lc8/fzk;

    invoke-direct {v1, p0}, Lc8/fzk;-><init>(Lc8/jzk;)V

    invoke-direct {p0, v0, v1}, Lc8/jzk;->httpRequestURL(Ljava/lang/String;Lc8/hzk;)V

    .line 130
    return-void
.end method

.method public pareOfflineErrorResult(Ljava/lang/String;)Lc8/izk;
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, "mOfflineSubscribeInfo":Lc8/izk;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 204
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "success"

    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 206
    const-string/jumbo v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    new-instance v3, Lc8/izk;

    invoke-direct {v3, p0}, Lc8/izk;-><init>(Lc8/jzk;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v2    # "mOfflineSubscribeInfo":Lc8/izk;
    .local v3, "mOfflineSubscribeInfo":Lc8/izk;
    :try_start_1
    const-string/jumbo v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lc8/izk;->codeStr:I

    .line 209
    const-string/jumbo v4, "desc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lc8/izk;->desStr:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 216
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "mOfflineSubscribeInfo":Lc8/izk;
    .restart local v2    # "mOfflineSubscribeInfo":Lc8/izk;
    :cond_0
    :goto_0
    return-object v2

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    const-string/jumbo v4, "OfflineSubscribe"

    invoke-static {v4, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 212
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "mOfflineSubscribeInfo":Lc8/izk;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "mOfflineSubscribeInfo":Lc8/izk;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "mOfflineSubscribeInfo":Lc8/izk;
    .restart local v2    # "mOfflineSubscribeInfo":Lc8/izk;
    goto :goto_1
.end method

.method public pareOfflineSubscribeListJsonResult(Ljava/lang/String;)V
    .locals 9
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pareOfflineSubscribeListJsonResult, str = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 173
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    .local v5, "mJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "status"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "success"

    const-string/jumbo v8, "status"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 175
    const-string/jumbo v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 176
    const-string/jumbo v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 177
    .local v4, "mJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 178
    .local v0, "arrayLength":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v6, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 180
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    .local v1, "childFriend_id":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "===childFriend==="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "childFriend_id":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lc8/kzk;->getInstance()Lc8/kzk;

    move-result-object v7

    invoke-virtual {v7, v6}, Lc8/kzk;->addOfflinSubscribeSP(Ljava/util/ArrayList;)V

    .line 195
    .end local v0    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "mJsonArray":Lorg/json/JSONArray;
    .end local v5    # "mJsonObject":Lorg/json/JSONObject;
    .end local v6    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-void

    .line 186
    .restart local v5    # "mJsonObject":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v7, "code"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, -0x71

    const-string/jumbo v8, "code"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 187
    invoke-static {}, Lc8/kzk;->getInstance()Lc8/kzk;

    move-result-object v7

    invoke-virtual {v7}, Lc8/kzk;->clearOfflineSub()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 191
    .end local v5    # "mJsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v7, "OfflineSubscribe"

    invoke-static {v7, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    iput-object p1, p0, Lc8/jzk;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method
