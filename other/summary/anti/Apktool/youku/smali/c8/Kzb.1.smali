.class public Lc8/Kzb;
.super Ljava/lang/Object;
.source "UTRealtimeConfBiz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Lzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTTopicItem"
.end annotation


# static fields
.field private static final KEY_ARG1:Ljava/lang/String; = "arg1"

.field private static final KEY_PG:Ljava/lang/String; = "pg"

.field private static final KEY_TOPICID:Ljava/lang/String; = "tp"


# instance fields
.field private mArg1TopicMap:Ljava/util/Map;
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

.field private mDefaultTopicId:I

.field private mPageTopicMap:Ljava/util/Map;
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


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Kzb;->mPageTopicMap:Ljava/util/Map;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Kzb;->mArg1TopicMap:Ljava/util/Map;

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lc8/Kzb;->mDefaultTopicId:I

    return-void
.end method

.method private getTopicName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p2, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "topicMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    .line 188
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 189
    .local v2, "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    .local v1, "lKey":Ljava/lang/String;
    const-string/jumbo v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "lContent":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 203
    .end local v0    # "lContent":Ljava/lang/String;
    .end local v1    # "lKey":Ljava/lang/String;
    .end local v2    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    return-object v3

    .line 197
    .restart local v1    # "lKey":Ljava/lang/String;
    .restart local v2    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 203
    .end local v1    # "lKey":Ljava/lang/String;
    .end local v2    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static parseJson(Ljava/lang/String;)Lc8/Kzb;
    .locals 10
    .param p0, "aJsonStr"    # Ljava/lang/String;

    .prologue
    .line 208
    :try_start_0
    new-instance v8, Lc8/Kzb;

    invoke-direct {v8}, Lc8/Kzb;-><init>()V

    .line 209
    .local v8, "lUTTopicItem":Lc8/Kzb;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 210
    .local v2, "lDataJson":Lorg/json/JSONObject;
    const-string/jumbo v9, "tp"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 211
    const-string/jumbo v9, "tp"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lc8/Lzb;->access$000(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lc8/Kzb;->mDefaultTopicId:I

    .line 214
    :cond_0
    const-string/jumbo v9, "pg"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 215
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 216
    .local v7, "lPageTopic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "pg"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 217
    .local v4, "lJsonPage":Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    .line 218
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 219
    .local v6, "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 220
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 221
    .local v5, "lKey":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    .end local v2    # "lDataJson":Lorg/json/JSONObject;
    .end local v4    # "lJsonPage":Lorg/json/JSONObject;
    .end local v5    # "lKey":Ljava/lang/String;
    .end local v6    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "lPageTopic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "lUTTopicItem":Lc8/Kzb;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    const/4 v8, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v8

    .line 224
    .restart local v2    # "lDataJson":Lorg/json/JSONObject;
    .restart local v4    # "lJsonPage":Lorg/json/JSONObject;
    .restart local v7    # "lPageTopic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "lUTTopicItem":Lc8/Kzb;
    :cond_2
    :try_start_1
    iput-object v7, v8, Lc8/Kzb;->mPageTopicMap:Ljava/util/Map;

    .line 227
    .end local v4    # "lJsonPage":Lorg/json/JSONObject;
    .end local v7    # "lPageTopic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v9, "arg1"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 228
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 229
    .local v1, "lArg1Topic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "arg1"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 230
    .local v3, "lJsonArg1":Lorg/json/JSONObject;
    if-eqz v3, :cond_4

    .line 231
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 232
    .restart local v6    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 233
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 234
    .restart local v5    # "lKey":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 237
    .end local v5    # "lKey":Ljava/lang/String;
    .end local v6    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    iput-object v1, v8, Lc8/Kzb;->mArg1TopicMap:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public getTopicId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "aPage"    # Ljava/lang/String;
    .param p2, "aArg1"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {p1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    iget-object v2, p0, Lc8/Kzb;->mPageTopicMap:Ljava/util/Map;

    invoke-direct {p0, v2, p1}, Lc8/Kzb;->getTopicName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "pageTopicName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 172
    invoke-static {v1}, Lc8/Lzb;->access$000(Ljava/lang/String;)I

    move-result v2

    .line 183
    .end local v1    # "pageTopicName":Ljava/lang/String;
    :goto_0
    return v2

    .line 176
    :cond_0
    invoke-static {p2}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    iget-object v2, p0, Lc8/Kzb;->mArg1TopicMap:Ljava/util/Map;

    invoke-direct {p0, v2, p2}, Lc8/Kzb;->getTopicName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "arg1TopicName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 179
    invoke-static {v0}, Lc8/Lzb;->access$000(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 183
    .end local v0    # "arg1TopicName":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lc8/Kzb;->mDefaultTopicId:I

    goto :goto_0
.end method
