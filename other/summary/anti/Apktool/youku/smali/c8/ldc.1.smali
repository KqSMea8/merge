.class public Lc8/ldc;
.super Ljava/lang/Object;
.source "VerifyActivity.java"

# interfaces
.implements Lc8/Gdc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mdc;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/mdc;

.field final synthetic val$md5:Ljava/lang/String;

.field final synthetic val$newVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/mdc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1404
    iput-object p1, p0, Lc8/ldc;->this$1:Lc8/mdc;

    iput-object p2, p0, Lc8/ldc;->val$md5:Ljava/lang/String;

    iput-object p3, p0, Lc8/ldc;->val$newVersion:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadFinished(Ljava/io/File;)V
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const v11, 0x186ba

    .line 1412
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1414
    :try_start_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 1415
    .local v10, "messagedigest":Ljava/security/MessageDigest;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1416
    .local v8, "inputStream":Ljava/io/InputStream;
    const/16 v0, 0x2000

    new-array v6, v0, [B

    .line 1419
    .local v6, "buffer":[B
    :cond_0
    :goto_0
    invoke-virtual {v8, v6}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "length":I
    if-lez v9, :cond_1

    .line 1420
    if-eqz v10, :cond_0

    .line 1421
    const/4 v0, 0x0

    invoke-virtual {v10, v6, v0, v9}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1453
    .end local v6    # "buffer":[B
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "length":I
    .end local v10    # "messagedigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v7

    .line 1454
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1455
    iget-object v0, p0, Lc8/ldc;->this$1:Lc8/mdc;

    iget-object v0, v0, Lc8/mdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v0, v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerResRequest:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1460
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1424
    .restart local v6    # "buffer":[B
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "length":I
    .restart local v10    # "messagedigest":Ljava/security/MessageDigest;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lc8/ldc;->val$md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v10, :cond_3

    .line 1425
    iget-object v0, p0, Lc8/ldc;->val$md5:Ljava/lang/String;

    iget-object v1, p0, Lc8/ldc;->this$1:Lc8/mdc;

    iget-object v1, v1, Lc8/mdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$4400(Lcom/alibaba/verificationsdk/ui/VerifyActivity;[B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1428
    new-instance v0, Lc8/Ndc;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$4500()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lc8/kdc;

    invoke-direct {v5, p0}, Lc8/kdc;-><init>(Lc8/ldc;)V

    invoke-direct/range {v0 .. v5}, Lc8/Ndc;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ZLc8/Kdc;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lc8/Ndc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 1448
    :cond_2
    iget-object v0, p0, Lc8/ldc;->this$1:Lc8/mdc;

    iget-object v0, v0, Lc8/mdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v0, v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerResRequest:Landroid/os/Handler;

    const v1, 0x186ba

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1451
    :cond_3
    iget-object v0, p0, Lc8/ldc;->this$1:Lc8/mdc;

    iget-object v0, v0, Lc8/mdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v0, v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerResRequest:Landroid/os/Handler;

    const v1, 0x186ba

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1458
    .end local v6    # "buffer":[B
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "length":I
    .end local v10    # "messagedigest":Ljava/security/MessageDigest;
    :cond_4
    iget-object v0, p0, Lc8/ldc;->this$1:Lc8/mdc;

    iget-object v0, v0, Lc8/mdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v0, v0, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->handlerResRequest:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public downloadStart()V
    .locals 0

    .prologue
    .line 1408
    return-void
.end method
