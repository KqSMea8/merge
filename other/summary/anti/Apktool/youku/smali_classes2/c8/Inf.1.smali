.class public Lc8/Inf;
.super Ljava/lang/Object;
.source "PluginBlackList.java"


# instance fields
.field private blackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/Inf;->blackList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public inBlackList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pluginKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 27
    if-eqz p1, :cond_0

    iget-object v3, p0, Lc8/Inf;->blackList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Inf;->blackList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v2

    .line 31
    :cond_1
    iget-object v3, p0, Lc8/Inf;->blackList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 32
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 33
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public update(Lorg/json/JSONArray;)V
    .locals 3
    .param p1, "array"    # Lorg/json/JSONArray;

    .prologue
    .line 41
    if-nez p1, :cond_1

    .line 53
    :cond_0
    return-void

    .line 45
    :cond_1
    iget-object v2, p0, Lc8/Inf;->blackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "item":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 50
    iget-object v2, p0, Lc8/Inf;->blackList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
