.class public Lc8/jQp;
.super Lc8/eQp;
.source "InnerSignImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.InnerSignImpl"


# instance fields
.field private volatile mAVMPInstance:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

.field private sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lc8/eQp;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/jQp;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    return-void
.end method

.method static synthetic access$000(Lc8/jQp;Landroid/content/Context;)Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;
    .locals 1
    .param p0, "x0"    # Lc8/jQp;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lc8/jQp;->getAVMPInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized avmpSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 290
    monitor-enter p0

    const/4 v1, 0x0

    .line 291
    .local v1, "avmpSign":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, ""

    .line 292
    .local v6, "random":Ljava/lang/String;
    const/4 v9, 0x4

    new-array v4, v9, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    .local v4, "errorByte":[B
    if-nez p1, :cond_0

    .line 295
    :try_start_1
    const-string/jumbo p1, ""

    .line 296
    const-string/jumbo v9, "mtopsdk.InnerSignImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/jQp;->getInstanceId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " [avmpSign] input is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    iget-object v9, p0, Lc8/jQp;->mtopConfig:Lc8/kOp;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lc8/jQp;->mtopConfig:Lc8/kOp;

    iget-object v3, v9, Lc8/kOp;->context:Landroid/content/Context;

    .line 299
    .local v3, "context":Landroid/content/Context;
    :goto_0
    invoke-direct {p0, v3}, Lc8/jQp;->getAVMPInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 300
    .local v0, "avmpInstance":Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;
    if-nez v0, :cond_2

    move-object v2, v1

    .line 315
    .end local v0    # "avmpInstance":Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;
    .end local v1    # "avmpSign":Ljava/lang/String;
    .end local v3    # "context":Landroid/content/Context;
    .local v2, "avmpSign":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-object v2

    .line 298
    .end local v2    # "avmpSign":Ljava/lang/String;
    .restart local v1    # "avmpSign":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-static {}, Lc8/uMp;->getContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_0

    .line 303
    .restart local v0    # "avmpInstance":Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;
    .restart local v3    # "context":Landroid/content/Context;
    :cond_2
    const-string/jumbo v9, "sign"

    const/4 v10, 0x0

    new-array v10, v10, [B

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object v6, v11, v12

    const/4 v12, 0x4

    aput-object v4, v11, v12

    const/4 v12, 0x5

    invoke-virtual {p0}, Lc8/jQp;->getEnv()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v0, v9, v10, v11}, Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;->invokeAVMP(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 304
    .local v7, "result":[B
    if-eqz v7, :cond_3

    .line 305
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "avmpSign":Ljava/lang/String;
    .restart local v2    # "avmpSign":Ljava/lang/String;
    move-object v1, v2

    .end local v0    # "avmpInstance":Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;
    .end local v2    # "avmpSign":Ljava/lang/String;
    .end local v3    # "context":Landroid/content/Context;
    .end local v7    # "result":[B
    .restart local v1    # "avmpSign":Ljava/lang/String;
    :cond_3
    :goto_2
    move-object v2, v1

    .line 315
    .end local v1    # "avmpSign":Ljava/lang/String;
    .restart local v2    # "avmpSign":Ljava/lang/String;
    goto :goto_1

    .line 307
    .end local v2    # "avmpSign":Ljava/lang/String;
    .restart local v1    # "avmpSign":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 308
    .local v8, "t":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 310
    .local v5, "errorCode":I
    :try_start_3
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    .line 313
    :goto_3
    :try_start_4
    const-string/jumbo v9, "mtopsdk.InnerSignImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/jQp;->getInstanceId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " [avmpSign] call avmpInstance.invokeAVMP error.errorCode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 290
    .end local v4    # "errorByte":[B
    .end local v5    # "errorCode":I
    .end local v6    # "random":Ljava/lang/String;
    .end local v8    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .restart local v4    # "errorByte":[B
    .restart local v5    # "errorCode":I
    .restart local v6    # "random":Ljava/lang/String;
    .restart local v8    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v9

    goto :goto_3
.end method

.method private getAVMPInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 324
    iget-object v2, p0, Lc8/jQp;->mAVMPInstance:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

    if-nez v2, :cond_1

    .line 325
    const-class v3, Lc8/jQp;

    monitor-enter v3

    .line 326
    :try_start_0
    iget-object v2, p0, Lc8/jQp;->mAVMPInstance:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 328
    :try_start_1
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    const-class v4, Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent;

    invoke-virtual {v2, v4}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent;

    .line 329
    .local v0, "avmpComp":Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent;
    const-string/jumbo v2, "mwua"

    const-string/jumbo v4, "sgcipher"

    invoke-interface {v0, v2, v4}, Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent;->createAVMPInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

    move-result-object v2

    iput-object v2, p0, Lc8/jQp;->mAVMPInstance:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

    .line 330
    iget-object v2, p0, Lc8/jQp;->mAVMPInstance:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

    if-nez v2, :cond_0

    .line 331
    const-string/jumbo v2, "mtopsdk.InnerSignImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/jQp;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " [getAVMPInstance] call createAVMPInstance return null."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    .end local v0    # "avmpComp":Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    :cond_1
    iget-object v2, p0, Lc8/jQp;->mAVMPInstance:Lcom/alibaba/wireless/security/open/avmp/IAVMPGenericComponent$IAVMPGenericInstance;

    return-object v2

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v2, "mtopsdk.InnerSignImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/jQp;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " [getAVMPInstance] call createAVMPInstance error."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 337
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private initUmidToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "authCode"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p0}, Lc8/jQp;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "instanceId":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lc8/jQp;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getUMIDComp()Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    move-result-object v2

    .line 96
    .local v2, "umidComponent":Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    if-eqz v2, :cond_1

    .line 97
    invoke-virtual {p0}, Lc8/jQp;->getEnv()I

    move-result v3

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    .end local p2    # "authCode":Ljava/lang/String;
    :cond_0
    new-instance v4, Lc8/iQp;

    invoke-direct {v4, p0, v1}, Lc8/iQp;-><init>(Lc8/jQp;Ljava/lang/String;)V

    invoke-interface {v2, p1, v3, p2, v4}, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;->initUMID(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/wireless/security/open/umid/IUMIDInitListenerEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v2    # "umidComponent":Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    :cond_1
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "mtopsdk.InnerSignImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "[initUmidToken]IUMIDComponent initUMID error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public convertInnerBaseStrMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 20
    .param p2, "appkey"    # Ljava/lang/String;
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "originMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v18

    if-gtz v18, :cond_1

    .line 187
    :cond_0
    const/4 v9, 0x0

    .line 230
    :goto_0
    return-object v9

    .line 193
    :cond_1
    const-string/jumbo v18, "utdid"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 194
    .local v15, "utdid":Ljava/lang/String;
    const-string/jumbo v18, "uid"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 195
    .local v14, "uid":Ljava/lang/String;
    const-string/jumbo v18, "reqbiz-ext"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 196
    .local v10, "reqbiz_ext":Ljava/lang/String;
    const-string/jumbo v18, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 197
    .local v4, "data":Ljava/lang/String;
    const-string/jumbo v18, "t"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 198
    .local v12, "t":Ljava/lang/String;
    const-string/jumbo v18, "api"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 199
    .local v2, "api":Ljava/lang/String;
    const-string/jumbo v18, "v"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 200
    .local v16, "v":Ljava/lang/String;
    const-string/jumbo v18, "sid"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 201
    .local v11, "sid":Ljava/lang/String;
    const-string/jumbo v18, "ttid"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 202
    .local v13, "ttid":Ljava/lang/String;
    const-string/jumbo v18, "deviceId"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 203
    .local v5, "deviceId":Ljava/lang/String;
    const-string/jumbo v18, "lat"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 204
    .local v7, "lat":Ljava/lang/String;
    const-string/jumbo v18, "lng"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 205
    .local v8, "lng":Ljava/lang/String;
    const-string/jumbo v18, "extdata"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 206
    .local v6, "ext":Ljava/lang/String;
    const-string/jumbo v18, "x-features"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 209
    .local v17, "x_features":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v18, 0x40

    move/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 210
    .local v3, "baseStr":Ljava/lang/StringBuilder;
    invoke-static {v15}, Lc8/nQp;->convertNull2Default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {v14}, Lc8/nQp;->convertNull2Default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {v10}, Lc8/nQp;->convertNull2Default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-static {v4}, Lc8/nQp;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-static {v11}, Lc8/nQp;->convertNull2Default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-static {v13}, Lc8/nQp;->convertNull2Default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {v5}, Lc8/nQp;->convertNull2Default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-static {v7}, Lc8/nQp;->convertNull2Default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {v8}, Lc8/nQp;->convertNull2Default(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-static {v6}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 224
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_2
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    new-instance v9, Ljava/util/HashMap;

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 229
    .local v9, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v18, "INPUT"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public getAppKey(Lc8/fQp;)Ljava/lang/String;
    .locals 6
    .param p1, "ctx"    # Lc8/fQp;

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    .line 123
    :cond_0
    iget-object v3, p0, Lc8/jQp;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v2

    .line 124
    .local v2, "sdsComp":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    const/4 v0, 0x0

    .line 126
    .local v0, "appkey":Ljava/lang/String;
    :try_start_0
    iget v3, p1, Lc8/fQp;->index:I

    iget-object v4, p1, Lc8/fQp;->authCode:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    const-string/jumbo v3, "mtopsdk.InnerSignImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/jQp;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " [getAppKey]getAppKeyByIndex error.errorCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lc8/fQp;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",authCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lc8/fQp;->authCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :catch_1
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "mtopsdk.InnerSignImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/jQp;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " [getAppKey]getAppKeyByIndex error.index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lc8/fQp;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",authCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lc8/fQp;->authCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public getAvmpSign(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "authCode"    # Ljava/lang/String;
    .param p3, "flag"    # I

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lc8/jQp;->avmpSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "avmpSign":Ljava/lang/String;
    invoke-static {v0}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    const-string/jumbo v1, "mtopsdk.InnerSignImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/jQp;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [getAvmpSign] call avmpSign return null.degrade call getSecBodyDataEx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2, p2, p3}, Lc8/jQp;->getSecBodyDataEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 282
    :cond_0
    return-object v0
.end method

.method public getCommonHmacSha1Sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "baseStr"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 237
    invoke-virtual {p0}, Lc8/jQp;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "instanceId":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-object v4

    .line 241
    :cond_1
    iget-object v6, p0, Lc8/jQp;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    if-nez v6, :cond_2

    .line 242
    const-string/jumbo v6, "mtopsdk.InnerSignImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " [getCommonHmacSha1Sign]SecurityGuardManager is null,please call ISign init()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_2
    const/4 v4, 0x0

    .line 248
    .local v4, "sign":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 249
    .local v2, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "INPUT"

    invoke-interface {v2, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 251
    .local v3, "sgContext":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    iput-object p2, v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 252
    const/4 v6, 0x3

    iput v6, v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 253
    iput-object v2, v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    .line 254
    iget-object v6, p0, Lc8/jQp;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v6}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v5

    .line 255
    .local v5, "ssComponent":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    invoke-virtual {p0}, Lc8/jQp;->getAuthCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 256
    .end local v2    # "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "sgContext":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    .end local v5    # "ssComponent":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "mtopsdk.InnerSignImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " [getCommonHmacSha1Sign] ISecureSignatureComponent signRequest error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getMtopApiSign(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "authCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 138
    invoke-virtual {p0}, Lc8/jQp;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "instanceId":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 140
    const-string/jumbo v7, "mtopsdk.InnerSignImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " [getMtopApiSign] params is null.appKey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-object v5

    .line 144
    :cond_0
    if-nez p2, :cond_1

    .line 145
    const-string/jumbo v7, "SG_ERROR_CODE"

    const-string/jumbo v8, "AppKey is null"

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v7, "mtopsdk.InnerSignImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " [getMtopApiSign] AppKey is null."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v7, p0, Lc8/jQp;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    if-nez v7, :cond_2

    .line 151
    const-string/jumbo v7, "SG_ERROR_CODE"

    const-string/jumbo v8, "SGManager is null"

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v7, "mtopsdk.InnerSignImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " [getMtopApiSign]SecurityGuardManager is null,please call ISign init()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_2
    const/4 v5, 0x0

    .line 157
    .local v5, "sign":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v4}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 158
    .local v4, "sgContext":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    iput-object p2, v4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 159
    const/4 v7, 0x7

    iput v7, v4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 160
    invoke-virtual {p0, p1, p2}, Lc8/jQp;->convertInnerBaseStrMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 162
    .local v3, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_3

    const/4 v7, 0x2

    invoke-virtual {p0}, Lc8/jQp;->getEnv()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 163
    const-string/jumbo v7, "ATLAS"

    const-string/jumbo v8, "daily"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_3
    iput-object v3, v4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    .line 166
    iget-object v7, p0, Lc8/jQp;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v7}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v6

    .line 167
    .local v6, "ssComponent":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    invoke-interface {v6, v4, p3}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    .line 168
    .end local v3    # "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "sgContext":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    .end local v6    # "ssComponent":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v1

    .line 170
    .local v1, "errorCode":I
    const-string/jumbo v7, "SG_ERROR_CODE"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string/jumbo v7, "mtopsdk.InnerSignImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " [getMtopApiSign] ISecureSignatureComponent signRequest error,errorCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 172
    .end local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    .end local v1    # "errorCode":I
    :catch_1
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "mtopsdk.InnerSignImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " [getMtopApiSign] ISecureSignatureComponent signRequest error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public getSecBodyDataEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "authCode"    # Ljava/lang/String;
    .param p4, "flag"    # I

    .prologue
    .line 264
    const/4 v8, 0x0

    .line 267
    .local v8, "wua":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lc8/jQp;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    const-class v2, Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;

    invoke-virtual {v1, v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;

    .line 268
    .local v0, "securityBodyComp":Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;
    const/4 v4, 0x0

    invoke-virtual {p0}, Lc8/jQp;->getEnv()I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;->getSecurityBodyDataEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 272
    .end local v0    # "securityBodyComp":Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;
    :goto_0
    return-object v8

    .line 269
    :catch_0
    move-exception v7

    .line 270
    .local v7, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "mtopsdk.InnerSignImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/jQp;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [getSecBodyDataEx] ISecurityBodyComponent getSecurityBodyDataEx  error,flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public init(Lc8/kOp;)V
    .locals 12
    .param p1, "mtopConfig"    # Lc8/kOp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-super {p0, p1}, Lc8/eQp;->init(Lc8/kOp;)V

    .line 50
    invoke-virtual {p0}, Lc8/jQp;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "instanceId":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 54
    .local v4, "initStart":J
    iget-object v7, p0, Lc8/jQp;->mtopConfig:Lc8/kOp;

    iget-object v7, v7, Lc8/kOp;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v7

    iput-object v7, p0, Lc8/jQp;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    .line 57
    iget-object v7, p0, Lc8/jQp;->sgMgr:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v7}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v6

    .line 58
    .local v6, "sdsComp":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    iget v7, p1, Lc8/kOp;->appKeyIndex:I

    invoke-virtual {p0}, Lc8/jQp;->getAuthCode()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "appKey":Ljava/lang/String;
    sget-object v7, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v7}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 61
    const-string/jumbo v7, "mtopsdk.InnerSignImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " [init]ISign get appKey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",authCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lc8/jQp;->getAuthCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lc8/jQp;->getAuthCode()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v7}, Lc8/jQp;->initUmidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v7, p0, Lc8/jQp;->mtopConfig:Lc8/kOp;

    iget-object v1, v7, Lc8/kOp;->context:Landroid/content/Context;

    .line 69
    .local v1, "context":Landroid/content/Context;
    new-instance v7, Lc8/hQp;

    invoke-direct {v7, p0, v1}, Lc8/hQp;-><init>(Lc8/jQp;Landroid/content/Context;)V

    invoke-static {v7}, Lc8/mPp;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 76
    sget-object v7, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v7}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 77
    const-string/jumbo v7, "mtopsdk.InnerSignImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " [init]ISign init SecurityGuard succeed.init time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    .end local v4    # "initStart":J
    .end local v6    # "sdsComp":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    :cond_1
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Lcom/alibaba/wireless/security/open/SecException;
    const-string/jumbo v7, "mtopsdk.InnerSignImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " [init]ISign init SecurityGuard error.errorCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 81
    .end local v2    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :catch_1
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "mtopsdk.InnerSignImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " [init]ISign init SecurityGuard error."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
