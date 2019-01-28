.class public Lc8/IIj;
.super Ljava/lang/Object;
.source "UrlRepositoryImpl.java"

# interfaces
.implements Lc8/FIj;


# instance fields
.field private mUrlItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/EIj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "youkunav_scheme"

    aput-object v3, v1, v2

    new-instance v2, Lc8/HIj;

    invoke-direct {v2, p0}, Lc8/HIj;-><init>(Lc8/IIj;)V

    invoke-virtual {v0, v1, v2}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lc8/IIj;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/IIj;

    .prologue
    .line 27
    invoke-direct {p0}, Lc8/IIj;->initConfig()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lc8/IIj;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lc8/IIj;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lc8/IIj;->updateConfig(Ljava/util/List;)V

    return-void
.end method

.method private static getOrangeConfig()Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    const-string/jumbo v1, "youkunav_scheme"

    const-string/jumbo v2, "urls"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initConfig()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/EIj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v5, "urlItems":Ljava/util/List;, "Ljava/util/List<Lcom/youku/navigation/UrlItem;>;"
    :try_start_0
    invoke-static {}, Lc8/IIj;->getOrangeConfig()Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "urls":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 67
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 69
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 70
    .local v3, "object":Lorg/json/JSONObject;
    new-instance v1, Lc8/EIj;

    invoke-direct {v1, v3}, Lc8/EIj;-><init>(Lorg/json/JSONObject;)V

    .line 71
    .local v1, "item":Lc8/EIj;
    iget-object v7, v1, Lc8/EIj;->mOriginUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 72
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    .end local v1    # "item":Lc8/EIj;
    .end local v3    # "object":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "size":I
    .end local v6    # "urls":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 79
    :cond_1
    return-object v5

    .restart local v0    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v4    # "size":I
    .restart local v6    # "urls":Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method private updateConfig(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/EIj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/youku/navigation/UrlItem;>;"
    iput-object p1, p0, Lc8/IIj;->mUrlItems:Ljava/util/List;

    .line 59
    return-void
.end method


# virtual methods
.method public getConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/EIj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lc8/IIj;->mUrlItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lc8/IIj;->mUrlItems:Ljava/util/List;

    .line 54
    :goto_0
    return-object v0

    .line 53
    :cond_0
    invoke-direct {p0}, Lc8/IIj;->initConfig()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/IIj;->updateConfig(Ljava/util/List;)V

    .line 54
    iget-object v0, p0, Lc8/IIj;->mUrlItems:Ljava/util/List;

    goto :goto_0
.end method
