.class public final Lc8/PFd;
.super Ljava/lang/Object;
.source "AuthConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/OFd;,
        Lc8/NFd;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lc8/PFd;->a:I

    const-string/jumbo v0, ""

    sput-object v0, Lc8/PFd;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lc8/aGd;Ljava/lang/String;)Lc8/NFd;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc8/aGd;",
            "Ljava/lang/String;",
            ")",
            "Lc8/NFd;"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v3, 0x0

    new-instance v0, Lc8/NFd;

    invoke-direct {v0}, Lc8/NFd;-><init>()V

    :try_start_0
    new-instance v1, Lc8/XDd;

    invoke-direct {v1}, Lc8/XDd;-><init>()V
    :try_end_0
    .catch Lcom/loc/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v1, Lc8/OFd;

    invoke-direct {v1, p0, p1, p2}, Lc8/OFd;-><init>(Landroid/content/Context;Lc8/aGd;Ljava/lang/String;)V

    invoke-virtual {v1}, Lc8/OFd;->a()Z

    move-result v2

    invoke-static {v1, v2}, Lc8/XDd;->a(Lc8/eEd;Z)Lc8/fEd;
    :try_end_1
    .catch Lcom/loc/j; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    if-eqz v2, :cond_23

    :try_start_2
    iget-object v4, v2, Lc8/fEd;->a:[B
    :try_end_2
    .catch Lcom/loc/j; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_a

    :goto_0
    const/16 v1, 0x10

    :try_start_3
    new-array v1, v1, [B

    array-length v5, v4

    add-int/lit8 v5, v5, -0x10

    new-array v5, v5, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v4, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    array-length v8, v4

    add-int/lit8 v8, v8, -0x10

    invoke-static {v4, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v7, "AES"

    invoke-direct {v6, v1, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lc8/bGd;->b()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v8, 0x2

    invoke-virtual {v1, v8, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-static {v1}, Lc8/bGd;->a([B)Ljava/lang/String;
    :try_end_3
    .catch Lcom/loc/j; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b

    move-result-object v3

    move-object v1, v3

    move-object v3, v2

    :goto_1
    if-nez v4, :cond_1

    :cond_0
    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catch Lcom/loc/j; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :catch_1
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    :goto_3
    invoke-virtual {v1}, Lcom/loc/j;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lc8/NFd;->a:Ljava/lang/String;

    const-string/jumbo v5, "/v3/iasdkauth"

    invoke-static {p1, v5, v1}, Lc8/nGd;->a(Lc8/aGd;Ljava/lang/String;Lcom/loc/j;)V

    move-object v1, v3

    move-object v3, v2

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_5
    new-instance v1, Lcom/loc/j;

    const-string/jumbo v2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v1, v2}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Lcom/loc/j; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :catch_3
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    :goto_4
    move-object v1, v3

    move-object v3, v2

    goto :goto_1

    :catch_4
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    :goto_5
    const-string/jumbo v5, "ConfigManager"

    const-string/jumbo v6, "loadConfig"

    invoke-static {v1, v5, v6}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v4}, Lc8/bGd;->a([B)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :try_start_6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "status"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v9, :cond_1e

    const/4 v1, 0x1

    sput v1, Lc8/PFd;->a:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :cond_3
    :try_start_7
    const-string/jumbo v1, "ver"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "ver"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lc8/NFd;->b:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    :cond_4
    :goto_6
    :try_start_8
    const-string/jumbo v1, "result"

    invoke-static {v4, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lc8/JFd;

    invoke-direct {v1}, Lc8/JFd;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lc8/JFd;->a:Z

    const/4 v2, 0x0

    iput-boolean v2, v1, Lc8/JFd;->b:Z

    iput-object v1, v0, Lc8/NFd;->t:Lc8/JFd;

    const-string/jumbo v2, "result"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "11K"

    invoke-static {v2, v3}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    move-result v3

    if-eqz v3, :cond_5

    :try_start_9
    const-string/jumbo v3, "11K"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "able"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lc8/PFd;->a(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lc8/JFd;->a:Z

    const-string/jumbo v4, "off"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "off"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v1, Lc8/JFd;->c:Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    :cond_5
    :goto_7
    :try_start_a
    const-string/jumbo v1, "11B"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "11B"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lc8/NFd;->h:Lorg/json/JSONObject;

    :cond_6
    const-string/jumbo v1, "11C"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "11C"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lc8/NFd;->k:Lorg/json/JSONObject;

    :cond_7
    const-string/jumbo v1, "11I"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "11I"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lc8/NFd;->l:Lorg/json/JSONObject;

    :cond_8
    const-string/jumbo v1, "11H"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "11H"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lc8/NFd;->m:Lorg/json/JSONObject;

    :cond_9
    const-string/jumbo v1, "11E"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "11E"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lc8/NFd;->n:Lorg/json/JSONObject;

    :cond_a
    const-string/jumbo v1, "11F"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "11F"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lc8/NFd;->o:Lorg/json/JSONObject;

    :cond_b
    const-string/jumbo v1, "13A"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v1, "13A"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lc8/NFd;->q:Lorg/json/JSONObject;

    :cond_c
    const-string/jumbo v1, "13J"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string/jumbo v1, "13J"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lc8/NFd;->i:Lorg/json/JSONObject;

    :cond_d
    const-string/jumbo v1, "11G"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string/jumbo v1, "11G"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lc8/NFd;->p:Lorg/json/JSONObject;

    :cond_e
    const-string/jumbo v1, "001"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo v1, "001"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lc8/MFd;

    invoke-direct {v3}, Lc8/MFd;-><init>()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    if-eqz v1, :cond_f

    :try_start_b
    const-string/jumbo v4, "md5"

    invoke-static {v1, v4}, Lc8/PFd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "url"

    invoke-static {v1, v5}, Lc8/PFd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "sdkversion"

    invoke-static {v1, v6}, Lc8/PFd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8

    move-result v6

    if-eqz v6, :cond_22

    :cond_f
    :goto_8
    :try_start_c
    iput-object v3, v0, Lc8/NFd;->u:Lc8/MFd;

    :cond_10
    const-string/jumbo v1, "002"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo v1, "002"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lc8/LFd;

    invoke-direct {v3}, Lc8/LFd;-><init>()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    if-eqz v1, :cond_11

    :try_start_d
    const-string/jumbo v4, "md5"

    invoke-static {v1, v4}, Lc8/PFd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "url"

    invoke-static {v1, v5}, Lc8/PFd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v4, v3, Lc8/LFd;->b:Ljava/lang/String;

    iput-object v1, v3, Lc8/LFd;->a:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9

    :cond_11
    :goto_9
    :try_start_e
    iput-object v3, v0, Lc8/NFd;->v:Lc8/LFd;

    :cond_12
    const-string/jumbo v1, "006"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string/jumbo v1, "006"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lc8/NFd;->r:Lorg/json/JSONObject;

    :cond_13
    const-string/jumbo v1, "010"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string/jumbo v1, "010"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lc8/NFd;->s:Lorg/json/JSONObject;

    :cond_14
    const-string/jumbo v1, "11Z"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo v1, "11Z"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lc8/KFd;

    invoke-direct {v3}, Lc8/KFd;-><init>()V

    invoke-static {v1, v3}, Lc8/PFd;->a(Lorg/json/JSONObject;Lc8/KFd;)V

    iput-object v3, v0, Lc8/NFd;->w:Lc8/KFd;

    :cond_15
    const-string/jumbo v1, "135"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string/jumbo v1, "135"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lc8/NFd;->j:Lorg/json/JSONObject;

    :cond_16
    const-string/jumbo v1, "13S"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string/jumbo v1, "13S"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lc8/NFd;->g:Lorg/json/JSONObject;

    :cond_17
    const-string/jumbo v1, "121"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string/jumbo v1, "121"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lc8/KFd;

    invoke-direct {v3}, Lc8/KFd;-><init>()V

    invoke-static {v1, v3}, Lc8/PFd;->a(Lorg/json/JSONObject;Lc8/KFd;)V

    iput-object v3, v0, Lc8/NFd;->x:Lc8/KFd;

    :cond_18
    const-string/jumbo v1, "122"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string/jumbo v1, "122"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lc8/KFd;

    invoke-direct {v3}, Lc8/KFd;-><init>()V

    invoke-static {v1, v3}, Lc8/PFd;->a(Lorg/json/JSONObject;Lc8/KFd;)V

    iput-object v3, v0, Lc8/NFd;->y:Lc8/KFd;

    :cond_19
    const-string/jumbo v1, "123"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "123"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lc8/KFd;

    invoke-direct {v3}, Lc8/KFd;-><init>()V

    invoke-static {v1, v3}, Lc8/PFd;->a(Lorg/json/JSONObject;Lc8/KFd;)V

    iput-object v3, v0, Lc8/NFd;->z:Lc8/KFd;

    :cond_1a
    const-string/jumbo v1, "011"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "011"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lc8/NFd;->c:Lorg/json/JSONObject;

    :cond_1b
    const-string/jumbo v1, "012"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string/jumbo v1, "012"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lc8/NFd;->d:Lorg/json/JSONObject;

    :cond_1c
    const-string/jumbo v1, "013"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string/jumbo v1, "013"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lc8/NFd;->e:Lorg/json/JSONObject;

    :cond_1d
    const-string/jumbo v1, "014"

    invoke-static {v2, v1}, Lc8/bGd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "014"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lc8/NFd;->f:Lorg/json/JSONObject;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v1

    const-string/jumbo v2, "AuthConfigManager"

    const-string/jumbo v3, "loadConfig"

    invoke-static {v1, v2, v3}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1e
    if-nez v1, :cond_3

    :try_start_f
    const-string/jumbo v1, "authcsid"

    const-string/jumbo v2, "authgsid"

    if-eqz v3, :cond_1f

    iget-object v1, v3, Lc8/fEd;->c:Ljava/lang/String;

    iget-object v2, v3, Lc8/fEd;->d:Ljava/lang/String;

    :cond_1f
    invoke-static {p0, v1, v2, v4}, Lc8/bGd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v1, 0x0

    sput v1, Lc8/PFd;->a:I

    const-string/jumbo v1, "info"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string/jumbo v1, "info"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/PFd;->b:Ljava/lang/String;

    :cond_20
    const-string/jumbo v1, ""

    const-string/jumbo v3, "infocode"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string/jumbo v1, "infocode"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_21
    const-string/jumbo v3, "/v3/iasdkauth"

    sget-object v5, Lc8/PFd;->b:Ljava/lang/String;

    invoke-static {p1, v3, v5, v2, v1}, Lc8/nGd;->a(Lc8/aGd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lc8/PFd;->a:I

    if-nez v1, :cond_3

    sget-object v1, Lc8/PFd;->b:Ljava/lang/String;

    iput-object v1, v0, Lc8/NFd;->a:Ljava/lang/String;

    goto/16 :goto_2

    :catch_6
    move-exception v1

    const-string/jumbo v2, "AuthConfigManager"

    const-string/jumbo v3, "loadConfigVer"

    invoke-static {v1, v2, v3}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_7
    move-exception v1

    const-string/jumbo v3, "AuthConfigManager"

    const-string/jumbo v4, "loadException"

    invoke-static {v1, v3, v4}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_7

    :cond_22
    :try_start_10
    iput-object v5, v3, Lc8/MFd;->a:Ljava/lang/String;

    iput-object v4, v3, Lc8/MFd;->b:Ljava/lang/String;

    iput-object v1, v3, Lc8/MFd;->c:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_8

    :catch_8
    move-exception v1

    :try_start_11
    const-string/jumbo v4, "ConfigManager"

    const-string/jumbo v5, "parseSDKUpdate"

    invoke-static {v1, v4, v5}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_9
    move-exception v1

    const-string/jumbo v4, "ConfigManager"

    const-string/jumbo v5, "parseSDKCoordinate"

    invoke-static {v1, v4, v5}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_9

    :catch_a
    move-exception v1

    move-object v4, v3

    goto/16 :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_5

    :catch_c
    move-exception v1

    move-object v4, v3

    goto/16 :goto_4

    :catch_d
    move-exception v1

    goto/16 :goto_4

    :catch_e
    move-exception v1

    move-object v4, v3

    goto/16 :goto_3

    :catch_f
    move-exception v1

    goto/16 :goto_3

    :cond_23
    move-object v4, v3

    goto/16 :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_1

    const-string/jumbo v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lc8/IFd;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lc8/KFd;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "m"

    invoke-static {p0, v0}, Lc8/PFd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "u"

    invoke-static {p0, v1}, Lc8/PFd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "v"

    invoke-static {p0, v2}, Lc8/PFd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "able"

    invoke-static {p0, v3}, Lc8/PFd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v0, p1, Lc8/KFd;->c:Ljava/lang/String;

    iput-object v1, p1, Lc8/KFd;->b:Ljava/lang/String;

    iput-object v2, p1, Lc8/KFd;->d:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lc8/PFd;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lc8/KFd;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v2, "parsePluginEntity"

    invoke-static {v0, v1, v2}, Lc8/eGd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_0

    move p1, v0

    :goto_0
    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
