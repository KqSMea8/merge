.class public Lc8/Xib;
.super Ljava/lang/Object;
.source "SecurityGuardWrapper.java"

# interfaces
.implements Lc8/uhb;


# static fields
.field private static final HISTORY_LOGIN_ACCOUNTS:Ljava/lang/String; = "taesdk_history_acounts"

.field private static final SEED_KEY:Ljava/lang/String; = "seed_key"

.field public static final TAG:Ljava/lang/String; = "SecurityGuardWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private _symDecrypt([BLjava/lang/String;)[B
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "seedKeyName"    # Ljava/lang/String;

    .prologue
    .line 156
    :try_start_0
    invoke-direct {p0}, Lc8/Xib;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticKeyEncryptComp()Lcom/alibaba/wireless/security/open/statickeyencrypt/IStaticKeyEncryptComponent;

    move-result-object v2

    const/16 v3, 0x10

    invoke-interface {v2, v3, p2, p1}, Lcom/alibaba/wireless/security/open/statickeyencrypt/IStaticKeyEncryptComponent;->decrypt(ILjava/lang/String;[B)[B
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 157
    .local v1, "ret":[B
    return-object v1

    .line 158
    .end local v1    # "ret":[B
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    new-instance v2, Lcom/ali/auth/third/core/exception/SecRuntimeException;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v3

    invoke-direct {v2, v3, v0}, Lcom/ali/auth/third/core/exception/SecRuntimeException;-><init>(ILjava/lang/Throwable;)V

    throw v2
.end method

.method private _symEncrypt([BLjava/lang/String;)[B
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "seedKeyName"    # Ljava/lang/String;

    .prologue
    .line 129
    :try_start_0
    invoke-direct {p0}, Lc8/Xib;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticKeyEncryptComp()Lcom/alibaba/wireless/security/open/statickeyencrypt/IStaticKeyEncryptComponent;

    move-result-object v2

    const/16 v3, 0x10

    invoke-interface {v2, v3, p2, p1}, Lcom/alibaba/wireless/security/open/statickeyencrypt/IStaticKeyEncryptComponent;->encrypt(ILjava/lang/String;[B)[B
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 131
    .local v1, "ret":[B
    return-object v1

    .line 132
    .end local v1    # "ret":[B
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    new-instance v2, Lcom/ali/auth/third/core/exception/SecRuntimeException;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v3

    invoke-direct {v2, v3, v0}, Lcom/ali/auth/third/core/exception/SecRuntimeException;-><init>(ILjava/lang/Throwable;)V

    throw v2
.end method

.method private getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    .locals 3

    .prologue
    .line 36
    :try_start_0
    sget-object v1, Lc8/Bgb;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    new-instance v1, Lcom/ali/auth/third/core/exception/SecRuntimeException;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/ali/auth/third/core/exception/SecRuntimeException;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.method private signForLogin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "beSigned"    # Ljava/lang/String;

    .prologue
    .line 250
    :try_start_0
    invoke-direct {p0}, Lc8/Xib;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSafeTokenComp()Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;

    move-result-object v1

    .line 251
    .local v1, "safeTokenComponent":Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, p1, v3, v4}, Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;->signWithToken(Ljava/lang/String;[BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 261
    .end local v1    # "safeTokenComponent":Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;
    :goto_0
    return-object v2

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 261
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 257
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_1

    .line 258
    .end local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :catch_2
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 267
    :try_start_0
    invoke-direct {p0}, Lc8/Xib;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    .line 268
    .local v0, "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    if-eqz v0, :cond_2

    .line 269
    invoke-interface {v0, p1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "decryptCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    .end local v0    # "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v1    # "decryptCode":Ljava/lang/String;
    .end local p1    # "code":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local v0    # "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .restart local v1    # "decryptCode":Ljava/lang/String;
    .restart local p1    # "code":Ljava/lang/String;
    :cond_1
    move-object p1, v1

    .line 273
    goto :goto_0

    .line 276
    .end local v1    # "decryptCode":Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string/jumbo v4, "SessionManagerDecryptNull"

    invoke-direct {v3, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .local v3, "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    const-string/jumbo v4, "Page_Extend"

    invoke-virtual {v3, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setEventPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    .line 278
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 279
    const-string/jumbo p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    .end local v0    # "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v3    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    :catch_0
    move-exception v2

    .line 282
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string/jumbo v4, "SessionManagerDecryptException"

    invoke-direct {v3, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .restart local v3    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    const-string/jumbo v4, "Page_Extend"

    invoke-virtual {v3, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setEventPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    .line 284
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 285
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 297
    :try_start_0
    invoke-direct {p0}, Lc8/Xib;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    .line 298
    .local v0, "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    if-eqz v0, :cond_2

    .line 299
    invoke-interface {v0, p1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "encodeCode":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    .end local v0    # "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v2    # "encodeCode":Ljava/lang/String;
    .end local p1    # "code":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local v0    # "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .restart local v2    # "encodeCode":Ljava/lang/String;
    .restart local p1    # "code":Ljava/lang/String;
    :cond_1
    move-object p1, v2

    .line 303
    goto :goto_0

    .line 306
    .end local v2    # "encodeCode":Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string/jumbo v4, "SessionManagerEncryptNull"

    invoke-direct {v3, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .local v3, "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    const-string/jumbo v4, "Page_Extend"

    invoke-virtual {v3, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setEventPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    .line 308
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    .end local v0    # "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v3    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string/jumbo v4, "SessionManagerEncodeException"

    invoke-direct {v3, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .restart local v3    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    const-string/jumbo v4, "Page_Extend"

    invoke-virtual {v3, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setEventPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    .line 313
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 314
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    :try_start_0
    invoke-direct {p0}, Lc8/Xib;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v1

    invoke-static {}, Lc8/zgb;->getAppKeyIndex()I

    move-result v2

    sget-object v3, Lc8/zgb;->POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    new-instance v1, Lcom/ali/auth/third/core/exception/SecRuntimeException;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/ali/auth/third/core/exception/SecRuntimeException;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.method public getDDpExValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    :try_start_0
    invoke-direct {p0}, Lc8/Xib;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->getStringDDpEx(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUmid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 166
    :try_start_0
    invoke-direct {p0}, Lc8/Xib;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getUMIDComp()Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;->getSecurityToken()Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 167
    .local v1, "ret":Ljava/lang/String;
    return-object v1

    .line 168
    .end local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    new-instance v2, Lcom/ali/auth/third/core/exception/SecRuntimeException;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v3

    invoke-direct {v2, v3, v0}, Lcom/ali/auth/third/core/exception/SecRuntimeException;-><init>(ILjava/lang/Throwable;)V

    throw v2
.end method

.method public getValue(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isDynamic"    # Z

    .prologue
    .line 45
    if-eqz p2, :cond_0

    .line 46
    :try_start_0
    invoke-direct {p0}, Lc8/Xib;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 48
    :cond_0
    invoke-direct {p0}, Lc8/Xib;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v0

    sget-object v1, Lc8/zgb;->POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getExtraData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putDDpExValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 81
    :try_start_0
    invoke-direct {p0}, Lc8/Xib;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->putStringDDpEx(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isDynamic"    # Z

    .prologue
    .line 58
    :try_start_0
    invoke-direct {p0}, Lc8/Xib;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->putString(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeDDpExValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    invoke-direct {p0}, Lc8/Xib;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->removeStringDDpEx(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeSafeToken(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 220
    :try_start_0
    invoke-direct {p0}, Lc8/Xib;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSafeTokenComp()Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;

    move-result-object v1

    .line 221
    .local v1, "safeTokenComponent":Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;
    invoke-interface {v1, p1}, Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;->removeToken(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    .end local v1    # "safeTokenComponent":Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0

    .line 225
    .end local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :catch_1
    move-exception v2

    .line 226
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public removeValue(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isDynamic"    # Z

    .prologue
    .line 68
    if-eqz p2, :cond_0

    .line 69
    :try_start_0
    invoke-direct {p0}, Lc8/Xib;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->removeString(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized saveSafeToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "salt"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 194
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {p0}, Lc8/Xib;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-nez v7, :cond_1

    .line 214
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .line 198
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lc8/Xib;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSafeTokenComp()Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;

    move-result-object v4

    .line 199
    .local v4, "safeTokenComponent":Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;
    if-eqz v4, :cond_0

    .line 200
    const/4 v3, 0x0

    .line 201
    .local v3, "index":I
    const/4 v7, 0x4

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, ""

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const-string/jumbo v8, ""

    aput-object v8, v1, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ""

    aput-object v8, v1, v7

    const/4 v7, 0x3

    const-string/jumbo v8, ""

    aput-object v8, v1, v7

    .line 202
    .local v1, "additions":[Ljava/lang/String;
    array-length v7, v1

    if-le v3, v7, :cond_2

    .line 203
    const/4 v3, 0x0

    .line 204
    :cond_2
    aget-object v0, v1, v3

    .line 205
    .local v0, "additional":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-interface {v4, p1, p2, v0, v7}, Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;->saveToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    goto :goto_0

    .line 209
    .end local v0    # "additional":Ljava/lang/String;
    .end local v1    # "additions":[Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "safeTokenComponent":Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;
    :catch_0
    move-exception v2

    .line 210
    .local v2, "e":Lcom/alibaba/wireless/security/open/SecException;
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 194
    .end local v2    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 211
    :catch_1
    move-exception v5

    .line 212
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setUmid(Ljava/lang/String;)V
    .locals 0
    .param p1, "umid"    # Ljava/lang/String;

    .prologue
    .line 177
    return-void
.end method

.method public signMap(Ljava/lang/String;Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 232
    .local p2, "signMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    const/4 v3, 0x0

    .line 242
    :goto_0
    return-object v3

    .line 236
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 238
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 240
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "beSigned":Ljava/lang/String;
    const-string/jumbo v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "map="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0, p1, v0}, Lc8/Xib;->signForLogin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public symDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "seedKeyName"    # Ljava/lang/String;

    .prologue
    .line 140
    const/16 v2, 0x8

    :try_start_0
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 141
    .local v0, "bytes":[B
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    const-string/jumbo p2, "seed_key"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lc8/Xib;->_symDecrypt([BLjava/lang/String;)[B

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Lcom/ali/auth/third/core/exception/SecRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Lcom/ali/auth/third/core/exception/SecRuntimeException;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 149
    .end local v0    # "bytes":[B
    .end local v1    # "e":Lcom/ali/auth/third/core/exception/SecRuntimeException;
    :catch_1
    move-exception v1

    .line 150
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public symEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "seedKeyName"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    .local v0, "bytes":[B
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    const-string/jumbo p2, "seed_key"

    .line 119
    :cond_0
    :try_start_1
    invoke-direct {p0, v0, p2}, Lc8/Xib;->_symEncrypt([BLjava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1
    .catch Lcom/ali/auth/third/core/exception/SecRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    .line 111
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 120
    .restart local v0    # "bytes":[B
    :catch_1
    move-exception v1

    .line 121
    .local v1, "e":Lcom/ali/auth/third/core/exception/SecRuntimeException;
    throw v1
.end method
