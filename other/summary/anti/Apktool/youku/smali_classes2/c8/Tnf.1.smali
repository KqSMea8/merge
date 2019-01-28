.class public Lc8/Tnf;
.super Ljava/lang/Object;
.source "DeepLinkInfo.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final APPKEY:Ljava/lang/String; = "appKey"

.field public static final CATEGORIES:Ljava/lang/String; = "categories"

.field public static final CURRENT_TIME:Ljava/lang/String; = "currentTime"

.field public static final PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final SIGN:Ljava/lang/String; = "sign"

.field public static final SIGN_KEY:Ljava/lang/String; = "ali_applink_deeplink_sign"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final ignoreArray:[Ljava/lang/String;


# instance fields
.field public action:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field public categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public currentTime:J

.field public packageName:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "sign"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "categories"

    aput-object v2, v0, v1

    sput-object v0, Lc8/Tnf;->ignoreArray:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method private static checkSign(Lorg/json/JSONObject;)Z
    .locals 11
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 123
    if-nez p0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v8

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 130
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 132
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 134
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Lc8/Tnf;->isInIgnoreArray(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 141
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "ali_applink_deeplink_sign"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 146
    .local v1, "chars":[C
    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    .line 147
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    .line 149
    .local v5, "result":Ljava/lang/String;
    invoke-static {v5}, Lc8/jpf;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "localSign":Ljava/lang/String;
    const-string/jumbo v9, "sign"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "sign":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 155
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;)Lc8/Tnf;
    .locals 4
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    :goto_0
    return-object v2

    .line 68
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1}, Lc8/Tnf;->create(Lorg/json/JSONObject;)Lc8/Tnf;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 70
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static create(Lorg/json/JSONObject;)Lc8/Tnf;
    .locals 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 80
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lc8/Tnf;->checkSign(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "LinkManagerSDK"

    const-string/jumbo v4, "DeepLinkInfo:create checkSign error"

    invoke-static {v3, v4}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    new-instance v1, Lc8/Tnf;

    invoke-direct {v1}, Lc8/Tnf;-><init>()V

    .line 92
    .local v1, "info":Lc8/Tnf;
    const-string/jumbo v3, "appKey"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lc8/Tnf;->appKey:Ljava/lang/String;

    .line 95
    const-string/jumbo v3, "url"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lc8/Tnf;->url:Ljava/lang/String;

    .line 98
    const-string/jumbo v3, "currentTime"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lc8/Tnf;->currentTime:J

    .line 101
    const-string/jumbo v3, "packageName"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lc8/Tnf;->packageName:Ljava/lang/String;

    .line 104
    const-string/jumbo v3, "action"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lc8/Tnf;->action:Ljava/lang/String;

    .line 108
    :try_start_1
    const-string/jumbo v3, "categories"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lc8/ipf;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 109
    .local v2, "list":Ljava/util/List;
    iput-object v2, v1, Lc8/Tnf;->categories:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .end local v2    # "list":Ljava/util/List;
    :goto_1
    const-string/jumbo v3, "sign"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lc8/Tnf;->sign:Ljava/lang/String;

    goto :goto_0

    .line 110
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LinkManagerSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get \u89e3\u6790categories error. e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static isInIgnoreArray(Ljava/lang/String;)Z
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v4

    .line 187
    :cond_1
    sget-object v0, Lc8/Tnf;->ignoreArray:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 189
    .local v2, "ignoreKey":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 190
    const/4 v4, 0x1

    goto :goto_0

    .line 187
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public checkData()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lc8/Tnf;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Tnf;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSourceVC()Ljava/lang/String;
    .locals 6

    .prologue
    .line 205
    iget-object v3, p0, Lc8/Tnf;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    const-string/jumbo v3, "LinkManagerSDK"

    const-string/jumbo v4, "\u5f53\u524durl\u4e3a\u7a7a,\u65e0\u6cd5\u83b7\u53d6sourceVC"

    invoke-static {v3, v4}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v3, ""

    .line 241
    :goto_0
    return-object v3

    .line 210
    :cond_0
    const-string/jumbo v3, "LinkManagerSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u83b7\u53d6sourceVC,\u5f53\u524d\u7684url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/Tnf;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :try_start_0
    iget-object v3, p0, Lc8/Tnf;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    .local v0, "data":Landroid/net/Uri;
    :goto_1
    if-nez v0, :cond_1

    .line 223
    const-string/jumbo v3, ""

    goto :goto_0

    .line 217
    .end local v0    # "data":Landroid/net/Uri;
    :catch_0
    move-exception v3

    const-string/jumbo v3, "LinkManagerSDK"

    const-string/jumbo v4, "Uri\u8f6c\u6362\u5931\u8d25,\u65e0\u6cd5\u83b7\u53d6sourceVC"

    invoke-static {v3, v4}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x0

    .restart local v0    # "data":Landroid/net/Uri;
    goto :goto_1

    .line 227
    :cond_1
    const-string/jumbo v3, "params"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "paramsString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 229
    const-string/jumbo v3, "LinkManagerSDK"

    const-string/jumbo v4, "paramsString\u4e3a\u7a7a,\u65e0\u6cd5\u83b7\u53d6sourceVC"

    invoke-static {v3, v4}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string/jumbo v3, ""

    goto :goto_0

    .line 234
    :cond_2
    invoke-static {v2}, Lc8/ipf;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 235
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_3

    const-string/jumbo v3, "sourceVC"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 236
    :cond_3
    const-string/jumbo v3, "LinkManagerSDK"

    const-string/jumbo v4, "json\u4e3a\u7a7a,\u6216\u8005\u91cc\u9762\u7684sourceVC\u4e3a\u7a7a"

    invoke-static {v3, v4}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string/jumbo v3, ""

    goto :goto_0

    .line 241
    :cond_4
    const-string/jumbo v3, "sourceVC"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getVisa()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lc8/Tnf;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    :try_start_0
    iget-object v0, p0, Lc8/Tnf;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "visa"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeepLinkInfo{appKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Tnf;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Tnf;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", currentTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/Tnf;->currentTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sign=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Tnf;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Tnf;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Tnf;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Tnf;->categories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
