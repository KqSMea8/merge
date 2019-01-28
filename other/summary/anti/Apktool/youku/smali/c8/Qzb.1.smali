.class public Lc8/Qzb;
.super Ljava/lang/Object;
.source "UTStreamConfBiz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTStreamItem"
.end annotation


# static fields
.field private static final KEY_ARG1:Ljava/lang/String; = "arg1"

.field private static final KEY_STM:Ljava/lang/String; = "stm"


# instance fields
.field private mArg1Stm:Ljava/util/Map;
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

.field private mDefaultStreamName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Qzb;->mArg1Stm:Ljava/util/Map;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Qzb;->mDefaultStreamName:Ljava/lang/String;

    return-void
.end method

.method private _getArg1StmName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "lArg1"    # Ljava/lang/String;

    .prologue
    .line 133
    if-eqz p1, :cond_2

    .line 134
    iget-object v3, p0, Lc8/Qzb;->mArg1Stm:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 135
    .local v2, "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, "lKey":Ljava/lang/String;
    const-string/jumbo v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "lContent":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    iget-object v3, p0, Lc8/Qzb;->mArg1Stm:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 149
    .end local v0    # "lContent":Ljava/lang/String;
    .end local v1    # "lKey":Ljava/lang/String;
    .end local v2    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    return-object v3

    .line 143
    .restart local v1    # "lKey":Ljava/lang/String;
    .restart local v2    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, p0, Lc8/Qzb;->mArg1Stm:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 149
    .end local v1    # "lKey":Ljava/lang/String;
    .end local v2    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static parseJson(Ljava/lang/String;)Lc8/Qzb;
    .locals 8
    .param p0, "aJsonStr"    # Ljava/lang/String;

    .prologue
    .line 155
    :try_start_0
    new-instance v6, Lc8/Qzb;

    invoke-direct {v6}, Lc8/Qzb;-><init>()V

    .line 156
    .local v6, "lSampleItem":Lc8/Qzb;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    .local v2, "lDataJson":Lorg/json/JSONObject;
    const-string/jumbo v7, "stm"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 158
    const-string/jumbo v7, "stm"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lc8/Qzb;->mDefaultStreamName:Ljava/lang/String;

    .line 161
    :cond_0
    const-string/jumbo v7, "arg1"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 162
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v1, "lArg1Stm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "arg1"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 164
    .local v3, "lJsonArg1":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 165
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 166
    .local v5, "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 167
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 168
    .local v4, "lKey":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v1    # "lArg1Stm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "lDataJson":Lorg/json/JSONObject;
    .end local v3    # "lJsonArg1":Lorg/json/JSONObject;
    .end local v4    # "lKey":Ljava/lang/String;
    .end local v5    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "lSampleItem":Lc8/Qzb;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    const/4 v6, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v6

    .line 171
    .restart local v1    # "lArg1Stm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "lDataJson":Lorg/json/JSONObject;
    .restart local v3    # "lJsonArg1":Lorg/json/JSONObject;
    .restart local v6    # "lSampleItem":Lc8/Qzb;
    :cond_2
    :try_start_1
    iput-object v1, v6, Lc8/Qzb;->mArg1Stm:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public getStmName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "aArg1"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-direct {p0, p1}, Lc8/Qzb;->_getArg1StmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "lStmName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 128
    .end local v0    # "lStmName":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/Qzb;->mDefaultStreamName:Ljava/lang/String;

    goto :goto_0
.end method
