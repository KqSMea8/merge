.class public Lc8/sdn;
.super Ljava/lang/Object;
.source "SyncUtils.java"


# static fields
.field private static final ACCOUNT_NAME:Ljava/lang/String; = "\u4f18\u9177\u4e3b\u5e10\u53f7"

.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "com.youku.auth"

.field private static final AUTHORITY:Ljava/lang/String; = "com.youku.auth.provider"

.field private static final SECONDS_PER_MINUTE:I = 0x3c


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSyncAccount(Landroid/content/Context;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncInterval"    # I

    .prologue
    .line 24
    :try_start_0
    const-string/jumbo v4, "account"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 25
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string/jumbo v4, "com.youku.auth"

    invoke-virtual {v0, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 27
    .local v1, "accounts":[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-eqz v4, :cond_0

    .line 28
    const/4 v4, 0x0

    aget-object v3, v1, v4

    .line 33
    .local v3, "mAccount":Landroid/accounts/Account;
    :goto_0
    const-string/jumbo v4, "com.youku.auth.provider"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 34
    const-string/jumbo v4, "com.youku.auth.provider"

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    mul-int/lit8 v6, p1, 0x3c

    int-to-long v6, v6

    invoke-static {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 38
    .end local v0    # "accountManager":Landroid/accounts/AccountManager;
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "mAccount":Landroid/accounts/Account;
    :goto_1
    return-void

    .line 30
    .restart local v0    # "accountManager":Landroid/accounts/AccountManager;
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    :cond_0
    new-instance v3, Landroid/accounts/Account;

    const-string/jumbo v4, "\u4f18\u9177\u4e3b\u5e10\u53f7"

    const-string/jumbo v5, "com.youku.auth"

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .restart local v3    # "mAccount":Landroid/accounts/Account;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    .end local v0    # "accountManager":Landroid/accounts/AccountManager;
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "mAccount":Landroid/accounts/Account;
    :catch_0
    move-exception v2

    .line 36
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1
.end method

.method public static removeSyncAccount(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    :try_start_0
    const-string/jumbo v4, "account"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 43
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string/jumbo v4, "com.youku.auth"

    invoke-virtual {v0, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 45
    .local v1, "accounts":[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-eqz v4, :cond_0

    .line 46
    const/4 v4, 0x0

    aget-object v3, v1, v4

    .line 47
    .local v3, "mAccount":Landroid/accounts/Account;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "accountManager":Landroid/accounts/AccountManager;
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "mAccount":Landroid/accounts/Account;
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
