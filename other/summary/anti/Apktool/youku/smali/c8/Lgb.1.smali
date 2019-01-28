.class public Lc8/Lgb;
.super Ljava/lang/Object;
.source "AccountHistoryManager.java"


# static fields
.field private static volatile singleton:Lc8/Lgb;


# instance fields
.field private final HISTORY_LOGIN_ACCOUNTS:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "taesdk_history_acounts"

    iput-object v0, p0, Lc8/Lgb;->HISTORY_LOGIN_ACCOUNTS:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static getInstance()Lc8/Lgb;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lc8/Lgb;->singleton:Lc8/Lgb;

    if-nez v0, :cond_1

    .line 30
    const-class v1, Lc8/Lgb;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lc8/Lgb;->singleton:Lc8/Lgb;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lc8/Lgb;

    invoke-direct {v0}, Lc8/Lgb;-><init>()V

    sput-object v0, Lc8/Lgb;->singleton:Lc8/Lgb;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Lc8/Lgb;->singleton:Lc8/Lgb;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private parseObject(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "loginJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/Rgb;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v1, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/model/HistoryAccount;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 132
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 133
    .local v2, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 134
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 135
    .local v4, "obj":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 136
    new-instance v0, Lc8/Rgb;

    invoke-direct {v0}, Lc8/Rgb;-><init>()V

    .line 137
    .local v0, "account":Lc8/Rgb;
    const-string/jumbo v5, "userId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lc8/Rgb;->userId:Ljava/lang/String;

    .line 138
    const-string/jumbo v5, "tokenKey"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lc8/Rgb;->tokenKey:Ljava/lang/String;

    .line 139
    const-string/jumbo v5, "mobile"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lc8/Rgb;->mobile:Ljava/lang/String;

    .line 140
    const-string/jumbo v5, "nick"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lc8/Rgb;->nick:Ljava/lang/String;

    .line 141
    const-string/jumbo v5, "email"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lc8/Rgb;->email:Ljava/lang/String;

    .line 142
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v0    # "account":Lc8/Rgb;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "obj":Lorg/json/JSONObject;
    :cond_1
    const/4 v1, 0x0

    .end local v1    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/model/HistoryAccount;>;"
    :cond_2
    return-object v1
.end method

.method private toJSONString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Rgb;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "historyAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/model/HistoryAccount;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 153
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 155
    .local v1, "array":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Rgb;

    .line 156
    .local v0, "account":Lc8/Rgb;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 158
    .local v3, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "userId"

    iget-object v6, v0, Lc8/Rgb;->userId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string/jumbo v5, "tokenKey"

    iget-object v6, v0, Lc8/Rgb;->tokenKey:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string/jumbo v5, "nick"

    iget-object v6, v0, Lc8/Rgb;->nick:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string/jumbo v5, "email"

    iget-object v6, v0, Lc8/Rgb;->email:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string/jumbo v5, "mobile"

    iget-object v6, v0, Lc8/Rgb;->mobile:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 166
    const-string/jumbo v4, ""

    .line 171
    .end local v0    # "account":Lc8/Rgb;
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "object":Lorg/json/JSONObject;
    :goto_1
    return-object v4

    .line 169
    .restart local v1    # "array":Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 171
    .end local v1    # "array":Lorg/json/JSONArray;
    :cond_1
    const-string/jumbo v4, ""

    goto :goto_1
.end method


# virtual methods
.method public findHistoryAccount(Ljava/lang/String;)Lc8/Rgb;
    .locals 5
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lc8/Lgb;->getHistoryAccounts()Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/model/HistoryAccount;>;"
    if-eqz v0, :cond_2

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Rgb;

    .line 84
    .local v1, "ha":Lc8/Rgb;
    iget-object v4, v1, Lc8/Rgb;->userId:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lc8/Rgb;->userId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    .end local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/model/HistoryAccount;>;"
    .end local v1    # "ha":Lc8/Rgb;
    :goto_0
    return-object v1

    .restart local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/model/HistoryAccount;>;"
    :cond_1
    move-object v1, v2

    .line 88
    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 90
    goto :goto_0

    .line 92
    .end local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/model/HistoryAccount;>;"
    :catch_0
    move-exception v3

    move-object v1, v2

    goto :goto_0
.end method

.method public getHistoryAccounts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Rgb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    const-class v2, Lc8/uhb;

    invoke-static {v2}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/uhb;

    const-string/jumbo v3, "taesdk_history_acounts"

    invoke-interface {v2, v3}, Lc8/uhb;->getDDpExValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "loginHistoryJson":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/model/HistoryAccount;>;"
    :goto_0
    return-object v0

    .line 117
    .end local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/model/HistoryAccount;>;"
    :cond_0
    :try_start_0
    invoke-direct {p0, v1}, Lc8/Lgb;->parseObject(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/model/HistoryAccount;>;"
    goto :goto_0

    .line 120
    .end local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/model/HistoryAccount;>;"
    :catch_0
    move-exception v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .restart local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/model/HistoryAccount;>;"
    const-class v2, Lc8/uhb;

    invoke-static {v2}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/uhb;

    const-string/jumbo v3, "taesdk_history_acounts"

    invoke-interface {v2, v3}, Lc8/uhb;->removeDDpExValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public matchHistoryAccount(Ljava/lang/String;)Lc8/Rgb;
    .locals 4
    .param p1, "userInput"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-virtual {p0}, Lc8/Lgb;->getHistoryAccounts()Ljava/util/List;

    move-result-object v1

    .line 98
    .local v1, "historyAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/model/HistoryAccount;>;"
    if-eqz v1, :cond_2

    .line 99
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Rgb;

    .line 100
    .local v0, "ha":Lc8/Rgb;
    iget-object v3, v0, Lc8/Rgb;->nick:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lc8/Rgb;->email:Ljava/lang/String;

    .line 101
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lc8/Rgb;->mobile:Ljava/lang/String;

    .line 102
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    .end local v0    # "ha":Lc8/Rgb;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putLoginHistory(Lc8/Rgb;Ljava/lang/String;)V
    .locals 7
    .param p1, "historyAccount"    # Lc8/Rgb;
    .param p2, "salt"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {}, Lc8/zgb;->getInstance()Lc8/zgb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/zgb;->isSaveHistoryWithSalt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    const-class v4, Lc8/uhb;

    invoke-static {v4}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/uhb;

    iget-object v5, p1, Lc8/Rgb;->tokenKey:Ljava/lang/String;

    invoke-interface {v4, v5, p2}, Lc8/uhb;->saveSafeToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lc8/Lgb;->getHistoryAccounts()Ljava/util/List;

    move-result-object v1

    .line 50
    .local v1, "historyAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/model/HistoryAccount;>;"
    if-eqz v1, :cond_4

    .line 51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v3, "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/model/HistoryAccount;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Rgb;

    .line 54
    .local v0, "ha":Lc8/Rgb;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_3

    .line 57
    iget-object v5, v0, Lc8/Rgb;->userId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v0, Lc8/Rgb;->userId:Ljava/lang/String;

    iget-object v6, p1, Lc8/Rgb;->userId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 60
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 64
    .end local v0    # "ha":Lc8/Rgb;
    :cond_3
    move-object v1, v3

    .line 68
    invoke-direct {p0, v1}, Lc8/Lgb;->toJSONString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "savedJson":Ljava/lang/String;
    const-class v4, Lc8/uhb;

    invoke-static {v4}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/uhb;

    const-string/jumbo v5, "taesdk_history_acounts"

    invoke-interface {v4, v5, v2}, Lc8/uhb;->putDDpExValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v2    # "savedJson":Ljava/lang/String;
    .end local v3    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/model/HistoryAccount;>;"
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "historyAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/model/HistoryAccount;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .restart local v1    # "historyAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/auth/third/core/model/HistoryAccount;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-direct {p0, v1}, Lc8/Lgb;->toJSONString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .restart local v2    # "savedJson":Ljava/lang/String;
    const-class v4, Lc8/uhb;

    invoke-static {v4}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/uhb;

    const-string/jumbo v5, "taesdk_history_acounts"

    invoke-interface {v4, v5, v2}, Lc8/uhb;->putDDpExValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
