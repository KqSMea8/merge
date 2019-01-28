.class public Lc8/Nzb;
.super Ljava/lang/Object;
.source "UTSampleConfBiz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Pzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTSampleItem"
.end annotation


# static fields
.field private static final KEY_ARG1:Ljava/lang/String; = "arg1"

.field private static final KEY_CP:Ljava/lang/String; = "cp"

.field private static final s_random:Ljava/util/Random;


# instance fields
.field private mArg1CP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultCP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lc8/Nzb;->s_random:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lc8/Nzb;->mDefaultCP:I

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Nzb;->mArg1CP:Ljava/util/Map;

    return-void
.end method

.method private _isArg1SampleSuccess(Ljava/lang/String;)Z
    .locals 7
    .param p1, "lArg1"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 187
    if-eqz p1, :cond_4

    .line 189
    :try_start_0
    iget-object v3, p0, Lc8/Nzb;->mArg1CP:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 190
    .local v2, "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 191
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 192
    .local v1, "lKey":Ljava/lang/String;
    const-string/jumbo v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "lContent":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    iget-object v3, p0, Lc8/Nzb;->mArg1CP:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lc8/Nzb;->_isSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 214
    .end local v0    # "lContent":Ljava/lang/String;
    .end local v1    # "lKey":Ljava/lang/String;
    .end local v2    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    return v3

    .restart local v0    # "lContent":Ljava/lang/String;
    .restart local v1    # "lKey":Ljava/lang/String;
    .restart local v2    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    move v3, v5

    .line 198
    goto :goto_0

    .line 202
    .end local v0    # "lContent":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    iget-object v3, p0, Lc8/Nzb;->mArg1CP:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lc8/Nzb;->_isSuccess(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    .line 204
    goto :goto_0

    :cond_3
    move v3, v5

    .line 206
    goto :goto_0

    .end local v1    # "lKey":Ljava/lang/String;
    .end local v2    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 214
    :cond_4
    iget v3, p0, Lc8/Nzb;->mDefaultCP:I

    invoke-direct {p0, v3}, Lc8/Nzb;->_isSuccess(I)Z

    move-result v3

    goto :goto_0
.end method

.method private _isSuccess(I)Z
    .locals 4
    .param p1, "aNumber"    # I

    .prologue
    const/4 v1, 0x0

    .line 218
    if-nez p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v1

    .line 221
    :cond_1
    sget-object v2, Lc8/Nzb;->s_random:Ljava/util/Random;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 222
    .local v0, "aRandomNumber":I
    if-ge v0, p1, :cond_0

    .line 223
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static parseJson(Ljava/lang/String;)Lc8/Nzb;
    .locals 8
    .param p0, "aJsonStr"    # Ljava/lang/String;

    .prologue
    .line 231
    :try_start_0
    new-instance v6, Lc8/Nzb;

    invoke-direct {v6}, Lc8/Nzb;-><init>()V

    .line 232
    .local v6, "lSampleItem":Lc8/Nzb;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 233
    .local v2, "lDataJson":Lorg/json/JSONObject;
    const-string/jumbo v7, "cp"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 234
    const-string/jumbo v7, "cp"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lc8/Nzb;->mDefaultCP:I

    .line 237
    :cond_0
    const-string/jumbo v7, "arg1"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 238
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 239
    .local v1, "lArg1CP":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v7, "arg1"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 240
    .local v3, "lJsonArg1":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 241
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 242
    .local v5, "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 243
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 244
    .local v4, "lKey":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    .end local v1    # "lArg1CP":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "lDataJson":Lorg/json/JSONObject;
    .end local v3    # "lJsonArg1":Lorg/json/JSONObject;
    .end local v4    # "lKey":Ljava/lang/String;
    .end local v5    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "lSampleItem":Lc8/Nzb;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    const/4 v6, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v6

    .line 247
    .restart local v1    # "lArg1CP":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2    # "lDataJson":Lorg/json/JSONObject;
    .restart local v3    # "lJsonArg1":Lorg/json/JSONObject;
    .restart local v6    # "lSampleItem":Lc8/Nzb;
    :cond_2
    :try_start_1
    iput-object v1, v6, Lc8/Nzb;->mArg1CP:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public isSampleSuccess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "aArg1"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lc8/Nzb;->_isArg1SampleSuccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
