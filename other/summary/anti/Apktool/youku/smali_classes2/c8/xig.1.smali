.class public final Lc8/xig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public t:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:I

.field public y:Ljava/lang/String;

.field public z:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Lc8/xig;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Lc8/xig;

    invoke-direct {v0}, Lc8/xig;-><init>()V

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "MicroMsg.SDK.GetQRCodeResult"

    const-string/jumbo v2, "parse fail, buf is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NetworkErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lc8/xig;->t:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "errcode"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v3, "MicroMsg.SDK.GetQRCodeResult"

    const-string/jumbo v4, "resp errcode = %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput-object v3, v0, Lc8/xig;->t:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput v1, v0, Lc8/xig;->x:I

    const-string/jumbo v1, "errmsg"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/xig;->y:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "MicroMsg.SDK.GetQRCodeResult"

    const-string/jumbo v3, "parse json fail, ex = %s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lc8/xig;->t:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "MicroMsg.SDK.GetQRCodeResult"

    const-string/jumbo v3, "parse fail, build String fail, ex = %s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lc8/xig;->t:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    goto :goto_0

    :cond_2
    :try_start_2
    const-string/jumbo v1, "qrcode"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v3, "qrcodebase64"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const-string/jumbo v1, "MicroMsg.SDK.GetQRCodeResult"

    const-string/jumbo v2, "parse fail, qrcodeBase64 is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_JsonDecodeErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lc8/xig;->t:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v3, v1

    if-nez v3, :cond_6

    :cond_5
    const-string/jumbo v1, "MicroMsg.SDK.GetQRCodeResult"

    const-string/jumbo v2, "parse fail, qrcodeBuf is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_JsonDecodeErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lc8/xig;->t:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lc8/yig;->b()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lc8/yig;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_7
    invoke-static {}, Lc8/yig;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lc8/xig;->a(Ljava/lang/String;[B)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v2, "MicroMsg.SDK.GetQRCodeResult"

    const-string/jumbo v3, "writeToFile fail, qrcodeBuf length = %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lc8/xig;->t:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_OK:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lc8/xig;->t:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    invoke-static {}, Lc8/yig;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/xig;->w:Ljava/lang/String;

    const-string/jumbo v1, "uuid"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/xig;->u:Ljava/lang/String;

    const-string/jumbo v1, "appname"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/xig;->v:Ljava/lang/String;

    const-string/jumbo v1, "parse succ, save in external storage, uuid = %s, appname = %s, imgPath = %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lc8/xig;->u:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lc8/xig;->v:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v0, Lc8/xig;->w:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    sget-object v3, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_OK:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput-object v3, v0, Lc8/xig;->t:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lc8/xig;->z:[B

    const-string/jumbo v1, "uuid"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/xig;->u:Ljava/lang/String;

    const-string/jumbo v1, "appname"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/xig;->v:Ljava/lang/String;

    const-string/jumbo v1, "parse succ, save in memory, uuid = %s, appname = %s, imgBufLength = %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lc8/xig;->u:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lc8/xig;->v:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v0, Lc8/xig;->z:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;[B)Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MicroMsg.SDK.GetQRCodeResult"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "fout.close() exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "write to file error, exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_0
    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "MicroMsg.SDK.GetQRCodeResult"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "fout.close() exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    const-string/jumbo v2, "MicroMsg.SDK.GetQRCodeResult"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fout.close() exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_2
.end method
