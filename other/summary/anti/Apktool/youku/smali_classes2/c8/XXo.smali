.class public Lc8/XXo;
.super Ljava/lang/Object;
.source "UserSystemUtils.java"


# static fields
.field private static sYoukuDataSource:Lc8/vdn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const/4 v1, 0x0

    sput-object v1, Lc8/XXo;->sYoukuDataSource:Lc8/vdn;

    .line 22
    :try_start_0
    const-class v1, Lc8/vdn;

    invoke-static {v1}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vdn;

    sput-object v1, Lc8/XXo;->sYoukuDataSource:Lc8/vdn;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 23
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 24
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    :try_start_0
    sget-object v1, Lc8/XXo;->sYoukuDataSource:Lc8/vdn;

    invoke-interface {v1}, Lc8/vdn;->getSToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const-string/jumbo v1, ""

    .line 139
    .local v0, "throwable":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 134
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    sget-object v1, Lc8/XXo;->sYoukuDataSource:Lc8/vdn;

    invoke-interface {v1}, Lc8/vdn;->getSToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .restart local v0    # "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getUserIdForLong()J
    .locals 4

    .prologue
    .line 97
    :try_start_0
    sget-object v1, Lc8/XXo;->sYoukuDataSource:Lc8/vdn;

    invoke-interface {v1}, Lc8/vdn;->getUserNumberId()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "userId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 99
    const-string/jumbo v0, "0"

    .line 101
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 106
    :goto_0
    return-wide v2

    :catch_0
    move-exception v1

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    :try_start_0
    sget-object v0, Lc8/XXo;->sYoukuDataSource:Lc8/vdn;

    invoke-interface {v0}, Lc8/vdn;->getUserName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static isLogin()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 35
    :try_start_0
    sget-object v2, Lc8/XXo;->sYoukuDataSource:Lc8/vdn;

    if-eqz v2, :cond_0

    sget-object v2, Lc8/XXo;->sYoukuDataSource:Lc8/vdn;

    invoke-interface {v2}, Lc8/vdn;->isLogined()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 39
    .local v0, "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return v1

    .line 36
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 37
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
