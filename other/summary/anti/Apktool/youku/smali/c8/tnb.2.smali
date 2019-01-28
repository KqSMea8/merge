.class public Lc8/tnb;
.super Ljava/lang/Object;
.source "ALPDeepLinkInfo.java"


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
.field private action:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentTime:J

.field public packageName:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "sign"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "categories"

    aput-object v2, v0, v1

    sput-object v0, Lc8/tnb;->ignoreArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p5, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "appKey":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lc8/tnb;->appKey:Ljava/lang/String;

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p2, ""

    .end local p2    # "url":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lc8/tnb;->url:Ljava/lang/String;

    .line 58
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p3, ""

    .end local p3    # "packageName":Ljava/lang/String;
    :cond_2
    iput-object p3, p0, Lc8/tnb;->packageName:Ljava/lang/String;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/tnb;->currentTime:J

    .line 60
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p4, ""

    .end local p4    # "action":Ljava/lang/String;
    :cond_3
    iput-object p4, p0, Lc8/tnb;->action:Ljava/lang/String;

    .line 61
    if-nez p5, :cond_4

    new-instance p5, Ljava/util/ArrayList;

    .end local p5    # "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    iput-object p5, p0, Lc8/tnb;->categories:Ljava/util/List;

    .line 62
    return-void
.end method

.method private getSign(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 11
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 99
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 101
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 103
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 105
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Lc8/tnb;->isInIgnoreArray(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 108
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v7, "ALPDeepLinkInfo"

    const-string/jumbo v8, "getSign"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "json error : e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "ali_applink_deeplink_sign"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 121
    .local v1, "chars":[C
    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    .line 122
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    .line 125
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lc8/sob;->md5Digest([B)Ljava/lang/String;

    move-result-object v5

    .line 127
    return-object v5
.end method

.method private static isInIgnoreArray(Ljava/lang/String;)Z
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 137
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v4

    .line 140
    :cond_1
    sget-object v0, Lc8/tnb;->ignoreArray:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 142
    .local v2, "ignoreKey":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    const/4 v4, 0x1

    goto :goto_0

    .line 140
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getJsonString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 71
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v1, "object":Lorg/json/JSONObject;
    const-string/jumbo v3, "appKey"

    iget-object v4, p0, Lc8/tnb;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string/jumbo v3, "url"

    iget-object v4, p0, Lc8/tnb;->url:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string/jumbo v3, "currentTime"

    iget-wide v4, p0, Lc8/tnb;->currentTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string/jumbo v3, "packageName"

    iget-object v4, p0, Lc8/tnb;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string/jumbo v3, "action"

    iget-object v4, p0, Lc8/tnb;->action:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string/jumbo v3, "categories"

    iget-object v4, p0, Lc8/tnb;->categories:Ljava/util/List;

    invoke-static {v4}, Lc8/qob;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string/jumbo v3, "sign"

    invoke-direct {p0, v1}, Lc8/tnb;->getSign(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 89
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local v2    # "result":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ALPDeepLinkInfo"

    const-string/jumbo v4, "getJsonString"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "json error : e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v3, ""

    goto :goto_0
.end method
