.class public Lc8/QG;
.super Ljava/lang/Object;
.source "ZipPrefixesManager.java"


# static fields
.field public static final DATA_KEY:Ljava/lang/String; = "WVZipPrefixesData"

.field public static final SPNAME:Ljava/lang/String; = "WVZipPrefixes"

.field private static zipPrefixesManager:Lc8/QG;


# instance fields
.field private TAG:Ljava/lang/String;

.field private localPrefixes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private zipAppsName:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lc8/QG;->zipPrefixesManager:Lc8/QG;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "PackageApp-ZipPrefixesManager"

    iput-object v0, p0, Lc8/QG;->TAG:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    .line 26
    iput-object v1, p0, Lc8/QG;->zipAppsName:Ljava/util/HashSet;

    return-void
.end method

.method public static getInstance()Lc8/QG;
    .locals 5

    .prologue
    .line 29
    sget-object v1, Lc8/QG;->zipPrefixesManager:Lc8/QG;

    if-nez v1, :cond_1

    .line 30
    const-class v2, Lc8/QG;

    monitor-enter v2

    .line 31
    :try_start_0
    sget-object v1, Lc8/QG;->zipPrefixesManager:Lc8/QG;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lc8/QG;

    invoke-direct {v1}, Lc8/QG;-><init>()V

    sput-object v1, Lc8/QG;->zipPrefixesManager:Lc8/QG;

    .line 33
    const-string/jumbo v1, "WVZipPrefixes"

    const-string/jumbo v3, "WVZipPrefixesData"

    const-string/jumbo v4, ""

    invoke-static {v1, v3, v4}, Lc8/MH;->getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "prefixes":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 35
    sget-object v1, Lc8/QG;->zipPrefixesManager:Lc8/QG;

    invoke-static {v0}, Lc8/fH;->parsePrefixes(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v3

    iput-object v3, v1, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    .line 36
    sget-object v1, Lc8/QG;->zipPrefixesManager:Lc8/QG;

    iget-object v1, v1, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    if-eqz v1, :cond_2

    sget-object v1, Lc8/QG;->zipPrefixesManager:Lc8/QG;

    iget-object v1, v1, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 37
    sget-object v1, Lc8/QG;->zipPrefixesManager:Lc8/QG;

    invoke-direct {v1}, Lc8/QG;->parseZipAppsName()V

    .line 38
    const-string/jumbo v1, "ZipPrefixesManager"

    const-string/jumbo v3, "zipPrefixes parse success"

    invoke-static {v1, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v1, Lc8/QG;->zipPrefixesManager:Lc8/QG;

    return-object v1

    .line 40
    :cond_2
    :try_start_1
    const-string/jumbo v1, "ZipPrefixesManager"

    const-string/jumbo v3, "zipPrefixes parse failed"

    invoke-static {v1, v3}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lc8/uG;->getInstance()Lc8/uG;

    move-result-object v1

    invoke-virtual {v1}, Lc8/uG;->resetConfig()V

    .line 43
    const-string/jumbo v1, "wv_main_config"

    const-string/jumbo v3, "prefixes"

    const-string/jumbo v4, "0"

    invoke-static {v1, v3, v4}, Lc8/MH;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 46
    :cond_3
    :try_start_2
    const-string/jumbo v1, "ZipPrefixesManager"

    const-string/jumbo v3, "zipPrefixes readFile is empty data"

    invoke-static {v1, v3}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized parseZipAppsName()V
    .locals 5

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 127
    iget-object v3, p0, Lc8/QG;->zipAppsName:Ljava/util/HashSet;

    if-nez v3, :cond_0

    .line 128
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lc8/QG;->zipAppsName:Ljava/util/HashSet;

    .line 130
    :cond_0
    iget-object v3, p0, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 131
    .local v1, "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 133
    .local v2, "localKey":Ljava/lang/String;
    iget-object v3, p0, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 134
    .local v0, "data":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 135
    iget-object v3, p0, Lc8/QG;->zipAppsName:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 126
    .end local v0    # "data":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2    # "localKey":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 138
    .restart local v1    # "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    iget-object v3, p0, Lc8/QG;->TAG:Ljava/lang/String;

    iget-object v4, p0, Lc8/QG;->zipAppsName:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v1    # "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 141
    :cond_4
    :try_start_2
    iget-object v3, p0, Lc8/QG;->zipAppsName:Ljava/util/HashSet;

    if-eqz v3, :cond_3

    .line 142
    iget-object v3, p0, Lc8/QG;->zipAppsName:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getZipAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 59
    iget-object v8, p0, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v7

    .line 63
    :cond_1
    const-string/jumbo v8, "http:"

    const-string/jumbo v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "https:"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "matchingUrl":Ljava/lang/String;
    iget-object v8, p0, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 65
    .local v1, "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 66
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 67
    .local v3, "localKey":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 69
    const-string/jumbo v8, ""

    invoke-virtual {v4, v3, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    iget-object v8, p0, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    invoke-virtual {v8, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Hashtable;

    .line 72
    .local v6, "prefixData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    .line 74
    const-string/jumbo v8, "*"

    invoke-virtual {v6, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 75
    const-string/jumbo v7, "*"

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 78
    .local v2, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 79
    .local v0, "hasEmptyRule":Z
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 80
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 81
    .local v5, "prefixAppKey":Ljava/lang/String;
    const-string/jumbo v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 82
    const/4 v0, 0x1

    .line 83
    goto :goto_1

    .line 85
    :cond_5
    const-string/jumbo v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 88
    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto/16 :goto_0

    .line 90
    :cond_6
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 92
    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto/16 :goto_0

    .line 96
    .end local v5    # "prefixAppKey":Ljava/lang/String;
    :cond_7
    if-eqz v0, :cond_2

    .line 98
    const-string/jumbo v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 99
    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public declared-synchronized isAvailableApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/QG;->zipAppsName:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/QG;->zipAppsName:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    const/4 v0, 0x1

    .line 155
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lc8/QG;->zipAppsName:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mergePrefixes(Ljava/util/Hashtable;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "onlinePrefixes":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;>;"
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    if-nez v10, :cond_0

    .line 170
    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    iput-object v10, p0, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    .line 172
    :cond_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 173
    .local v2, "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 174
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 175
    .local v8, "onlineKey":Ljava/lang/String;
    invoke-virtual {p1, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Hashtable;

    .line 177
    .local v7, "onlineData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "//"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 178
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "//"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 181
    :cond_2
    const-string/jumbo v10, "*"

    invoke-virtual {v7, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 182
    const-string/jumbo v10, "*"

    invoke-virtual {v7, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 183
    .local v6, "onLinePrefixAppName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 184
    const-string/jumbo v10, "-1"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 186
    iget-object v10, p0, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    invoke-virtual {v10, v8}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v10, p0, Lc8/QG;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mergPrefixes : removeAll :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 169
    .end local v2    # "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v6    # "onLinePrefixAppName":Ljava/lang/String;
    .end local v7    # "onlineData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "onlineKey":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 189
    .restart local v2    # "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v6    # "onLinePrefixAppName":Ljava/lang/String;
    .restart local v7    # "onlineData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "onlineKey":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 190
    .local v3, "localData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "*"

    invoke-virtual {v3, v10, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v10, p0, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    invoke-virtual {v10, v8, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 196
    .end local v3    # "localData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "onLinePrefixAppName":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 197
    .local v5, "needSaveData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v10, p0, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    invoke-virtual {v10, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    .line 198
    .restart local v3    # "localData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_7

    .line 199
    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 200
    .local v4, "localkeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 201
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    .local v0, "appKey":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    .local v1, "appName":Ljava/lang/String;
    const-string/jumbo v10, "*"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 206
    const-string/jumbo v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 207
    const-string/jumbo v10, "/"

    const-string/jumbo v11, ""

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    :cond_6
    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v10, p0, Lc8/QG;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mergPrefixes : retain :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ";  appPrefix : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 215
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "appName":Ljava/lang/String;
    .end local v4    # "localkeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {v7}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v9

    .line 216
    .local v9, "onlinekeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_8
    :goto_2
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 217
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .restart local v0    # "appKey":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 219
    .restart local v1    # "appName":Ljava/lang/String;
    const-string/jumbo v10, "-1"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 221
    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 222
    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v10, p0, Lc8/QG;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mergPrefixes : remove :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ";  appPrefix : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 227
    :cond_9
    const-string/jumbo v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 228
    const-string/jumbo v10, "/"

    const-string/jumbo v11, ""

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    :cond_a
    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v10, p0, Lc8/QG;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mergPrefixes : add :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ";  appPrefix : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 235
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "appName":Ljava/lang/String;
    :cond_b
    iget-object v10, p0, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    invoke-virtual {v10, v8, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 239
    .end local v3    # "localData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "needSaveData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "onlineData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "onlineKey":Ljava/lang/String;
    .end local v9    # "onlinekeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_c
    invoke-virtual {p0}, Lc8/QG;->saveLocalPrefixesData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    const/4 v10, 0x1

    monitor-exit p0

    return v10
.end method

.method public declared-synchronized saveLocalPrefixesData()V
    .locals 5

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 120
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lc8/QG;->localPrefixes:Ljava/util/Hashtable;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 116
    .local v1, "object":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "data":Ljava/lang/String;
    const-string/jumbo v2, "WVZipPrefixes"

    const-string/jumbo v3, "WVZipPrefixesData"

    invoke-static {v2, v3, v0}, Lc8/MH;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lc8/QG;->parseZipAppsName()V

    .line 119
    iget-object v2, p0, Lc8/QG;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveLocalPrefixesData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "object":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
