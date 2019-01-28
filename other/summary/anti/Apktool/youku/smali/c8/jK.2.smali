.class public Lc8/jK;
.super Ljava/lang/Object;
.source "SecurityGuardImpl.java"

# interfaces
.implements Lc8/gK;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static algorithMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mSecurityGuardValid:Z


# instance fields
.field private authCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 22
    const-string/jumbo v0, "awcn.DefaultSecurityGuard"

    sput-object v0, Lc8/jK;->TAG:Ljava/lang/String;

    .line 23
    sput-boolean v3, Lc8/jK;->mSecurityGuardValid:Z

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lc8/jK;->algorithMap:Ljava/util/Map;

    .line 27
    :try_start_0
    const-string/jumbo v0, "com.alibaba.wireless.security.open.SecurityGuardManager"

    invoke-static {v0}, Lc8/jK;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lc8/jK;->mSecurityGuardValid:Z

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    sput-object v0, Lc8/jK;->algorithMap:Ljava/util/Map;

    const-string/jumbo v1, "HMAC_SHA1"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lc8/jK;->algorithMap:Ljava/util/Map;

    const-string/jumbo v1, "ASE128"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    sput-boolean v3, Lc8/jK;->mSecurityGuardValid:Z

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/jK;->authCode:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lc8/jK;->authCode:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decrypt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cipherAlgorithm"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "needProcessValue"    # [B

    .prologue
    const/4 v4, 0x0

    .line 71
    sget-boolean v5, Lc8/jK;->mSecurityGuardValid:Z

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lc8/jK;->algorithMap:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-object v4

    .line 78
    :cond_1
    sget-object v5, Lc8/jK;->algorithMap:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 79
    .local v0, "cipherMode":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    .line 84
    .local v2, "sgm":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    .line 86
    .local v1, "comp":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lc8/jK;->authCode:Ljava/lang/String;

    invoke-interface {v1, v5, p3, p4, v6}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecryptNoB64(ILjava/lang/String;[BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 90
    .end local v1    # "comp":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    .end local v2    # "sgm":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :catch_0
    move-exception v3

    .line 91
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v5, Lc8/jK;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "staticBinarySafeDecryptNoB64"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v3, v7}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getBytes(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "bytes":[B
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v1, v0

    .line 136
    .end local v0    # "bytes":[B
    .local v1, "bytes":[B
    :goto_0
    return-object v1

    .line 125
    .end local v1    # "bytes":[B
    .restart local v0    # "bytes":[B
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    .line 126
    .local v3, "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    if-eqz v3, :cond_2

    .line 127
    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v2

    .line 128
    .local v2, "ddsComp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    if-eqz v2, :cond_2

    .line 129
    invoke-interface {v2, p2}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->getByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v2    # "ddsComp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    .end local v3    # "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :cond_2
    :goto_1
    move-object v1, v0

    .line 136
    .end local v0    # "bytes":[B
    .restart local v1    # "bytes":[B
    goto :goto_0

    .line 132
    .end local v1    # "bytes":[B
    .restart local v0    # "bytes":[B
    :catch_0
    move-exception v4

    .line 133
    .local v4, "t":Ljava/lang/Throwable;
    sget-object v5, Lc8/jK;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getBytes"

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v4, v8}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public isSecOff()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public saveBytes(Landroid/content/Context;Ljava/lang/String;[B)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # [B

    .prologue
    const/4 v6, 0x0

    .line 98
    const/4 v2, 0x0

    .line 99
    .local v2, "ret":Z
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v3, v2

    .line 115
    .end local v2    # "ret":Z
    .local v3, "ret":I
    :goto_0
    return v3

    .line 103
    .end local v3    # "ret":I
    .restart local v2    # "ret":Z
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v4

    .line 104
    .local v4, "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    if-eqz v4, :cond_2

    .line 105
    invoke-virtual {v4}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v1

    .line 106
    .local v1, "ddsComp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    if-eqz v1, :cond_2

    .line 107
    invoke-interface {v1, p2, p3}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->putByteArray(Ljava/lang/String;[B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 108
    .local v0, "code":I
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .end local v0    # "code":I
    .end local v1    # "ddsComp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    .end local v4    # "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :cond_2
    :goto_1
    move v3, v2

    .line 115
    .restart local v3    # "ret":I
    goto :goto_0

    .end local v3    # "ret":I
    .restart local v0    # "code":I
    .restart local v1    # "ddsComp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    .restart local v4    # "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :cond_3
    move v2, v6

    .line 108
    goto :goto_1

    .line 111
    .end local v0    # "code":I
    .end local v1    # "ddsComp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    .end local v4    # "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :catch_0
    move-exception v5

    .line 112
    .local v5, "t":Ljava/lang/Throwable;
    sget-object v7, Lc8/jK;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "saveBytes"

    const/4 v9, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v5, v6}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "signAlgorithm"    # Ljava/lang/String;
    .param p3, "appkey"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 46
    sget-boolean v4, Lc8/jK;->mSecurityGuardValid:Z

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lc8/jK;->algorithMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v5

    .line 66
    :goto_0
    return-object v4

    .line 54
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    .line 55
    .local v1, "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v3

    .line 56
    .local v3, "ssComp":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    if-eqz v3, :cond_2

    .line 57
    new-instance v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 58
    .local v2, "sgc":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    iput-object p3, v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 59
    iget-object v4, v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const-string/jumbo v6, "INPUT"

    invoke-interface {v4, v6, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v4, Lc8/jK;->algorithMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 61
    iget-object v4, p0, Lc8/jK;->authCode:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 63
    .end local v1    # "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    .end local v2    # "sgc":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    .end local v3    # "ssComp":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v4, Lc8/jK;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Securityguard sign request failed."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v5, v0, v7}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    move-object v4, v5

    .line 66
    goto :goto_0
.end method
