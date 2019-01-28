.class public Lc8/nPg;
.super Ljava/lang/Object;
.source "EncryptAbilityImpl.java"

# interfaces
.implements Lc8/mPg;


# static fields
.field private static instance:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

.field private static secManager:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

.field private static vmpComp:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lc8/nPg;->vmpComp:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent;

    .line 22
    sput-object v0, Lc8/nPg;->instance:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

    .line 23
    sput-object v0, Lc8/nPg;->secManager:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, "EncryptAbilityImpl"

    iput-object v0, p0, Lc8/nPg;->TAG:Ljava/lang/String;

    return-void
.end method

.method private getDebugInfo(Lc8/rPg;)Ljava/lang/String;
    .locals 2
    .param p1, "param"    # Lc8/rPg;

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "antiTheftChainClientType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lc8/rPg;->getAntiTheftChainClientType()Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", authCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lc8/rPg;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ServerEnv  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lc8/rPg;->getServerEnv()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNeedEncryptString(Lc8/rPg;)Ljava/lang/String;
    .locals 4
    .param p1, "param"    # Lc8/rPg;

    .prologue
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ccode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lc8/rPg;->getCcode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&client_ip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    invoke-virtual {p1}, Lc8/rPg;->getClientIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&client_ts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    invoke-virtual {p1}, Lc8/rPg;->getClientTs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&utid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lc8/rPg;->getUtid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&vid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lc8/rPg;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "result":Ljava/lang/String;
    const-string/jumbo v1, "EncryptAbilityImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNeedEncryptString result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/lPg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-object v0
.end method


# virtual methods
.method public encrypt(Lc8/rPg;)Ljava/lang/String;
    .locals 15
    .param p1, "param"    # Lc8/rPg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/youku/antitheftchain/exception/AntiTheftChainException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct/range {p0 .. p1}, Lc8/nPg;->getNeedEncryptString(Lc8/rPg;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "input":Ljava/lang/String;
    const-string/jumbo v8, "EncryptAbilityImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getDebugInfo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct/range {p0 .. p1}, Lc8/nPg;->getDebugInfo(Lc8/rPg;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/lPg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v8, "EncryptAbilityImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "input: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/lPg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v8, 0x4

    new-array v3, v8, [B

    .line 82
    .local v3, "errorByte":[B
    invoke-virtual/range {p1 .. p1}, Lc8/rPg;->getServerEnv()I

    move-result v2

    .line 83
    .local v2, "env":I
    invoke-virtual/range {p1 .. p1}, Lc8/rPg;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lc8/rPg;->getAntiTheftChainClientType()Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lc8/rPg;->getAuthCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lc8/nPg;->initSecurityGuard(Landroid/content/Context;Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;Ljava/lang/String;)V

    .line 86
    :try_start_0
    const-class v9, Lc8/nPg;

    monitor-enter v9
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    sget-object v8, Lc8/nPg;->instance:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

    const-string/jumbo v10, "sign"

    const/4 v11, 0x0

    new-array v11, v11, [B

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 88
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x4

    aput-object v3, v12, v13

    const/4 v13, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 87
    invoke-interface {v8, v10, v11, v12}, Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;->invokeAVMP(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 89
    .local v6, "result":[B
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    .line 98
    .local v7, "resultStr":Ljava/lang/String;
    const-string/jumbo v8, "EncryptAbilityImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "before url encode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/lPg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "encodeStr":Ljava/lang/String;
    const-string/jumbo v8, "EncryptAbilityImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "after url encode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/lPg;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 102
    return-object v1

    .line 89
    .end local v1    # "encodeStr":Ljava/lang/String;
    .end local v6    # "result":[B
    .end local v7    # "resultStr":Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_4 .. :try_end_4} :catch_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 92
    .local v4, "errorCode":I
    new-instance v8, Lcom/youku/antitheftchain/exception/AntiTheftChainException;

    sget-object v9, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->AntiTheftChain_Invoke_Avmp_Sign_Error:Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getDebugInfo "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 94
    invoke-direct/range {p0 .. p1}, Lc8/nPg;->getDebugInfo(Lc8/rPg;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v0, v9, v4, v10}, Lcom/youku/antitheftchain/exception/AntiTheftChainException;-><init>(Ljava/lang/Throwable;Lc8/oPg;ILjava/lang/String;)V

    throw v8

    .line 103
    .end local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    .end local v4    # "errorCode":I
    .restart local v6    # "result":[B
    :catch_1
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v8, Lcom/youku/antitheftchain/exception/AntiTheftChainException;

    sget-object v9, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->AntiTheftChain_Url_Unsupported_Encoding_Error:Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getDebugInfo "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 105
    invoke-direct/range {p0 .. p1}, Lc8/nPg;->getDebugInfo(Lc8/rPg;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v0, v9, v10}, Lcom/youku/antitheftchain/exception/AntiTheftChainException;-><init>(Ljava/lang/Throwable;Lc8/oPg;Ljava/lang/String;)V

    throw v8
.end method

.method public initSecurityGuard(Landroid/content/Context;Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "antiTheftChainClientType"    # Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;
    .param p3, "authCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/youku/antitheftchain/exception/AntiTheftChainException;
        }
    .end annotation

    .prologue
    .line 36
    const-class v2, Lc8/nPg;

    monitor-enter v2

    .line 37
    :try_start_0
    sget-object v1, Lc8/nPg;->instance:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

    if-eqz v1, :cond_0

    .line 38
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    return-void

    .line 43
    :cond_0
    :try_start_1
    sget-object v1, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;->Unknown:Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    if-ne p2, v1, :cond_1

    .line 44
    new-instance v1, Lcom/youku/antitheftchain/exception/AntiTheftChainException;

    sget-object v3, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->AntiTheftChain_Param_Error:Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    const-string/jumbo v4, "antiTheftChainClientType is unknown"

    invoke-direct {v1, v3, v4}, Lcom/youku/antitheftchain/exception/AntiTheftChainException;-><init>(Lc8/oPg;Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    :try_start_2
    new-instance v1, Lcom/youku/antitheftchain/exception/AntiTheftChainException;

    sget-object v3, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->AntiTheftChain_Create_Avmp_Instance_Error:Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    .line 66
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDebugInfo antiTheftChainClientType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", authCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v3, v4, v5}, Lcom/youku/antitheftchain/exception/AntiTheftChainException;-><init>(Ljava/lang/Throwable;Lc8/oPg;ILjava/lang/String;)V

    throw v1

    .line 70
    .end local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 49
    :cond_1
    if-nez p1, :cond_2

    .line 50
    :try_start_3
    new-instance v1, Lcom/youku/antitheftchain/exception/AntiTheftChainException;

    sget-object v3, Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;->AntiTheftChain_Param_Error:Lcom/youku/antitheftchain/exception/AntiTheftChainException$ErrorCode;

    const-string/jumbo v4, "context is null"

    invoke-direct {v1, v3, v4}, Lcom/youku/antitheftchain/exception/AntiTheftChainException;-><init>(Lc8/oPg;Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    sput-object v1, Lc8/nPg;->secManager:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    const-class v3, Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent;

    .line 57
    invoke-virtual {v1, v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent;

    sput-object v1, Lc8/nPg;->vmpComp:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent;

    .line 59
    sget-object v1, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;->Internal:Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    if-ne p2, v1, :cond_4

    .line 60
    sget-object v1, Lc8/nPg;->vmpComp:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent;

    const-string/jumbo v3, "sgcipher"

    invoke-interface {v1, p3, v3}, Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent;->createAVMPInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

    move-result-object v1

    sput-object v1, Lc8/nPg;->instance:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;
    :try_end_3
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    :cond_3
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 61
    :cond_4
    :try_start_5
    sget-object v1, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;->External:Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    if-ne p2, v1, :cond_3

    .line 62
    sget-object v1, Lc8/nPg;->vmpComp:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent;

    const-string/jumbo v3, "0335_mwua"

    const-string/jumbo v4, "sgcipher"

    invoke-interface {v1, v3, v4}, Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent;->createAVMPInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

    move-result-object v1

    sput-object v1, Lc8/nPg;->instance:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;
    :try_end_5
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method
