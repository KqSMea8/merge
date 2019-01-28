.class public Lc8/Hnf;
.super Ljava/lang/Object;
.source "OutgoingAppWhiteList.java"


# static fields
.field private static final PKGS_NAME:Ljava/lang/String; = "pkgs"

.field private static final SCHEMES_NAME:Ljava/lang/String; = "schemes"

.field private static final TIP_NAME:Ljava/lang/String; = "tip"

.field private static final URL_NAME:Ljava/lang/String; = "url"


# instance fields
.field private pkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private schemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tip:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/Hnf;->pkgs:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/Hnf;->schemes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized inWhiteList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 56
    monitor-enter p0

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 76
    :goto_0
    monitor-exit p0

    return v3

    .line 60
    :cond_0
    if-eqz p1, :cond_2

    .line 61
    :try_start_0
    iget-object v4, p0, Lc8/Hnf;->schemes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 68
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_4

    .line 69
    iget-object v4, p0, Lc8/Hnf;->pkgs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 76
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized update(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    const-string/jumbo v4, "pkgs"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 29
    .local v2, "pkgArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_1

    .line 30
    iget-object v4, p0, Lc8/Hnf;->pkgs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 32
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 33
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 34
    iget-object v4, p0, Lc8/Hnf;->pkgs:Ljava/util/List;

    check-cast v1, Ljava/lang/String;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "i":I
    :cond_1
    const-string/jumbo v4, "schemes"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 40
    .local v3, "schemeArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_3

    .line 41
    iget-object v4, p0, Lc8/Hnf;->schemes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 42
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 43
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 44
    .restart local v1    # "object":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 45
    iget-object v4, p0, Lc8/Hnf;->schemes:Ljava/util/List;

    check-cast v1, Ljava/lang/String;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 50
    .end local v0    # "i":I
    :cond_3
    const-string/jumbo v4, "tip"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/Hnf;->tip:Ljava/lang/String;

    .line 51
    const-string/jumbo v4, "url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/Hnf;->url:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 28
    .end local v2    # "pkgArray":Lorg/json/JSONArray;
    .end local v3    # "schemeArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
