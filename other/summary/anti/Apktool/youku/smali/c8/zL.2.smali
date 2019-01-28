.class public Lc8/zL;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkHostValidAndNotIp(Ljava/lang/String;)Z
    .locals 6
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 50
    .local v0, "bytes":[C
    array-length v4, v0

    if-lez v4, :cond_2

    array-length v4, v0

    const/16 v5, 0xff

    if-le v4, v5, :cond_3

    :cond_2
    move v1, v3

    .line 51
    goto :goto_0

    .line 53
    :cond_3
    const/4 v1, 0x0

    .line 54
    .local v1, "containLetter":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 55
    aget-char v4, v0, v2

    const/16 v5, 0x41

    if-lt v4, v5, :cond_4

    aget-char v4, v0, v2

    const/16 v5, 0x5a

    if-le v4, v5, :cond_6

    :cond_4
    aget-char v4, v0, v2

    const/16 v5, 0x61

    if-lt v4, v5, :cond_5

    aget-char v4, v0, v2

    const/16 v5, 0x7a

    if-le v4, v5, :cond_6

    :cond_5
    aget-char v4, v0, v2

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_8

    .line 56
    :cond_6
    const/4 v1, 0x1

    .line 54
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57
    :cond_8
    aget-char v4, v0, v2

    const/16 v5, 0x30

    if-lt v4, v5, :cond_9

    aget-char v4, v0, v2

    const/16 v5, 0x39

    if-le v4, v5, :cond_7

    :cond_9
    aget-char v4, v0, v2

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_7

    aget-char v4, v0, v2

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_7

    move v1, v3

    .line 59
    goto :goto_0
.end method

.method public static encodeQueryParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "encoding"    # Ljava/lang/String;
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
    .line 86
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    :cond_0
    const-string/jumbo v4, ""

    .line 105
    :goto_0
    return-object v4

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 92
    .local v0, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 93
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 96
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lc8/cM;->stringNull2Empty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "+"

    const-string/jumbo v7, "%20"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 102
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "Request"

    const-string/jumbo v5, "format params failed"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v1, v7}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 105
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 101
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static getHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .line 66
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 78
    :goto_0
    return-object v3

    .line 70
    :cond_1
    const/4 v2, 0x0

    .line 72
    .local v2, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 73
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v2, Ljava/util/List;

    .restart local v2    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 78
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_3
    if-nez v2, :cond_4

    move-object v3, v4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0
.end method

.method public static isIPV4Address(Ljava/lang/String;)Z
    .locals 7
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v4

    .line 23
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 24
    .local v0, "bytes":[C
    array-length v5, v0

    const/4 v6, 0x7

    if-lt v5, v6, :cond_0

    array-length v5, v0

    const/16 v6, 0xf

    if-gt v5, v6, :cond_0

    .line 28
    const/4 v3, 0x0

    .line 29
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_3

    .line 30
    aget-char v1, v0, v2

    .line 31
    .local v1, "c":C
    const/16 v5, 0x30

    if-lt v1, v5, :cond_2

    const/16 v5, 0x39

    if-gt v1, v5, :cond_2

    .line 32
    mul-int/lit8 v5, v3, 0xa

    add-int/2addr v5, v1

    add-int/lit8 v3, v5, -0x30

    .line 33
    const/16 v5, 0xff

    if-gt v3, v5, :cond_0

    .line 29
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 36
    :cond_2
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_0

    .line 37
    const/4 v3, 0x0

    goto :goto_2

    .line 42
    .end local v1    # "c":C
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static stringNull2Empty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 82
    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    return-object p0
.end method
