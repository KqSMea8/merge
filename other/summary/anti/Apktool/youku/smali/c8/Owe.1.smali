.class public Lc8/Owe;
.super Ljava/lang/Object;
.source "Oauth2AccessToken.java"


# static fields
.field public static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final KEY_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field public static final KEY_PHONE_NUM:Ljava/lang/String; = "phone_num"

.field public static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field public static final KEY_UID:Ljava/lang/String; = "uid"


# instance fields
.field bundle:Landroid/os/Bundle;

.field private mAccessToken:Ljava/lang/String;

.field private mExpiresTime:J

.field private mPhoneNum:Ljava/lang/String;

.field private mRefreshToken:Ljava/lang/String;

.field private mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Owe;->mUid:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Owe;->mAccessToken:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Owe;->mRefreshToken:Ljava/lang/String;

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/Owe;->mExpiresTime:J

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Owe;->mPhoneNum:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "responseText"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v2, ""

    iput-object v2, p0, Lc8/Owe;->mUid:Ljava/lang/String;

    .line 44
    const-string/jumbo v2, ""

    iput-object v2, p0, Lc8/Owe;->mAccessToken:Ljava/lang/String;

    .line 46
    const-string/jumbo v2, ""

    iput-object v2, p0, Lc8/Owe;->mRefreshToken:Ljava/lang/String;

    .line 48
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lc8/Owe;->mExpiresTime:J

    .line 51
    const-string/jumbo v2, ""

    iput-object v2, p0, Lc8/Owe;->mPhoneNum:Ljava/lang/String;

    .line 62
    if-eqz p1, :cond_0

    .line 63
    const-string/jumbo v2, "{"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 65
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/Owe;->setUid(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v2, "access_token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/Owe;->setToken(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v2, "expires_in"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/Owe;->setExpiresIn(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v2, "refresh_token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/Owe;->setRefreshToken(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v2, "phone_num"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lc8/Owe;->setPhoneNum(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "expiresIn"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Owe;->mUid:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Owe;->mAccessToken:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Owe;->mRefreshToken:Ljava/lang/String;

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/Owe;->mExpiresTime:J

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Owe;->mPhoneNum:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lc8/Owe;->mAccessToken:Ljava/lang/String;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/Owe;->mExpiresTime:J

    .line 88
    if-eqz p2, :cond_0

    .line 89
    iget-wide v0, p0, Lc8/Owe;->mExpiresTime:J

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc8/Owe;->mExpiresTime:J

    .line 91
    :cond_0
    return-void
.end method

.method private static getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 256
    if-eqz p0, :cond_0

    .line 257
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 261
    .end local v0    # "value":Ljava/lang/String;
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public static parseAccessToken(Landroid/os/Bundle;)Lc8/Owe;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 130
    if-eqz p0, :cond_0

    .line 131
    new-instance v0, Lc8/Owe;

    invoke-direct {v0}, Lc8/Owe;-><init>()V

    .line 132
    .local v0, "accessToken":Lc8/Owe;
    const-string/jumbo v1, "uid"

    const-string/jumbo v2, ""

    invoke-static {p0, v1, v2}, Lc8/Owe;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Owe;->setUid(Ljava/lang/String;)V

    .line 133
    const-string/jumbo v1, "access_token"

    const-string/jumbo v2, ""

    invoke-static {p0, v1, v2}, Lc8/Owe;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Owe;->setToken(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v1, "expires_in"

    const-string/jumbo v2, ""

    invoke-static {p0, v1, v2}, Lc8/Owe;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Owe;->setExpiresIn(Ljava/lang/String;)V

    .line 135
    const-string/jumbo v1, "refresh_token"

    const-string/jumbo v2, ""

    invoke-static {p0, v1, v2}, Lc8/Owe;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Owe;->setRefreshToken(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v1, "phone_num"

    const-string/jumbo v2, ""

    invoke-static {p0, v1, v2}, Lc8/Owe;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Owe;->setPhoneNum(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, p0}, Lc8/Owe;->setBundle(Landroid/os/Bundle;)V

    .line 141
    .end local v0    # "accessToken":Lc8/Owe;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseAccessToken(Ljava/lang/String;)Lc8/Owe;
    .locals 4
    .param p0, "responseJsonText"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    const-string/jumbo v3, "{"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 104
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v2, Lc8/Owe;

    invoke-direct {v2}, Lc8/Owe;-><init>()V

    .line 106
    .local v2, "token":Lc8/Owe;
    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Owe;->setUid(Ljava/lang/String;)V

    .line 107
    const-string/jumbo v3, "access_token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Owe;->setToken(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v3, "expires_in"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Owe;->setExpiresIn(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v3, "refresh_token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Owe;->setRefreshToken(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v3, "phone_num"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/Owe;->setPhoneNum(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "token":Lc8/Owe;
    :goto_0
    return-object v2

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 119
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setPhoneNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPhoneNum"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lc8/Owe;->mPhoneNum:Ljava/lang/String;

    .line 275
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lc8/Owe;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getExpiresTime()J
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lc8/Owe;->mExpiresTime:J

    return-wide v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lc8/Owe;->mPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lc8/Owe;->mRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lc8/Owe;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lc8/Owe;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public isSessionValid()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lc8/Owe;->mAccessToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 282
    iput-object p1, p0, Lc8/Owe;->bundle:Landroid/os/Bundle;

    .line 283
    return-void
.end method

.method public setExpiresIn(Ljava/lang/String;)V
    .locals 6
    .param p1, "expiresIn"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lc8/Owe;->setExpiresTime(J)V

    .line 240
    :cond_0
    return-void
.end method

.method public setExpiresTime(J)V
    .locals 1
    .param p1, "mExpiresTime"    # J

    .prologue
    .line 228
    iput-wide p1, p0, Lc8/Owe;->mExpiresTime:J

    .line 229
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lc8/Owe;->mRefreshToken:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "mToken"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lc8/Owe;->mAccessToken:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lc8/Owe;->mUid:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Owe;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "access_token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Owe;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "refresh_token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Owe;->mRefreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "phone_num"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Owe;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "expires_in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/Owe;->mExpiresTime:J

    .line 160
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
