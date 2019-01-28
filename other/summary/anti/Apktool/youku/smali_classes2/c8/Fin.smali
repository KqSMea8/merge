.class public Lc8/Fin;
.super Ljava/lang/Thread;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/service/update/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadThread"
.end annotation


# instance fields
.field private apkUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/service/update/UpdateService;


# direct methods
.method public constructor <init>(Lcom/youku/service/update/UpdateService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/service/update/UpdateService;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 221
    iput-object p2, p0, Lc8/Fin;->apkUrl:Ljava/lang/String;

    .line 222
    return-void
.end method

.method private downloadApk()V
    .locals 17

    .prologue
    .line 230
    invoke-static {}, Lcom/youku/service/update/UpdateService;->access$200()Ljava/lang/String;

    .line 231
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v15}, Lcom/youku/service/update/UpdateService;->access$1400(Lcom/youku/service/update/UpdateService;)Ljava/io/File;

    .line 232
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v15}, Lcom/youku/service/update/UpdateService;->access$1500(Lcom/youku/service/update/UpdateService;)Ljava/io/File;

    move-result-object v15

    if-nez v15, :cond_1

    .line 233
    sget v15, Lcom/youku/phone/R$string;->update_create_file_fail:I

    invoke-static {v15}, Lc8/bzo;->showTips(I)V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-static {}, Lcom/youku/service/update/UpdateService;->access$200()Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "service downloadapk file created"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/youku/service/update/UpdateService;->access$1500(Lcom/youku/service/update/UpdateService;)Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    const/4 v8, 0x0

    .line 238
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 239
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    const/4 v10, 0x0

    .line 241
    .local v10, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v14, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fin;->apkUrl:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 242
    .local v14, "url":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 243
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/16 v15, 0x2710

    invoke-virtual {v5, v15}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 244
    const/16 v15, 0x2710

    invoke-virtual {v5, v15}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 245
    const-string/jumbo v15, "Range"

    const-string/jumbo v16, "bytes=0-"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 247
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Lcom/youku/service/update/UpdateService;->access$1200(Lcom/youku/service/update/UpdateService;I)V

    .line 248
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    .line 249
    .local v12, "length":I
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 250
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v15}, Lcom/youku/service/update/UpdateService;->access$1500(Lcom/youku/service/update/UpdateService;)Ljava/io/File;

    move-result-object v15

    invoke-direct {v9, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 253
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    const/4 v6, 0x0

    .line 254
    .local v6, "count":I
    const/16 v15, 0x400

    :try_start_2
    new-array v4, v15, [B

    .line 256
    .local v4, "buf":[B
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v15}, Lcom/youku/service/update/UpdateService;->access$1600(Lcom/youku/service/update/UpdateService;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .local v11, "len":I
    const/4 v15, -0x1

    if-eq v11, v15, :cond_5

    .line 257
    const/4 v15, 0x0

    invoke-virtual {v3, v4, v15, v11}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 258
    add-int/2addr v6, v11

    .line 259
    int-to-float v15, v6

    int-to-float v0, v12

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v15, v15, v16

    float-to-int v13, v15

    .line 260
    .local v13, "temp":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v15}, Lcom/youku/service/update/UpdateService;->access$700(Lcom/youku/service/update/UpdateService;)I

    move-result v15

    if-le v13, v15, :cond_2

    .line 261
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v15, v13}, Lcom/youku/service/update/UpdateService;->access$702(Lcom/youku/service/update/UpdateService;I)I

    .line 263
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v15}, Lcom/youku/service/update/UpdateService;->access$1700(Lcom/youku/service/update/UpdateService;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    invoke-static {}, Lcom/youku/service/update/UpdateService;->access$200()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 292
    .end local v4    # "buf":[B
    .end local v11    # "len":I
    .end local v13    # "temp":I
    :catch_0
    move-exception v7

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 293
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "count":I
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "length":I
    .end local v14    # "url":Ljava/net/URL;
    .local v7, "e":Ljava/net/MalformedURLException;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/youku/service/update/UpdateService;->access$200()Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "service downloadapk fail MalformedURLException"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    sget v15, Lcom/youku/phone/R$string;->update_fail_tips:I

    invoke-static {v15}, Lc8/bzo;->showTips(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v15}, Lcom/youku/service/update/UpdateService;->access$1700(Lcom/youku/service/update/UpdateService;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 310
    if-eqz v2, :cond_3

    .line 311
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 312
    :cond_3
    if-eqz v8, :cond_4

    .line 313
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 314
    :cond_4
    if-eqz v10, :cond_0

    .line 315
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 296
    :catch_1
    move-exception v15

    goto/16 :goto_0

    .line 268
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "e":Ljava/net/MalformedURLException;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buf":[B
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "count":I
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "length":I
    .restart local v14    # "url":Ljava/net/URL;
    :cond_5
    if-eqz v3, :cond_6

    .line 269
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 270
    :cond_6
    if-eqz v9, :cond_7

    .line 271
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 272
    :cond_7
    if-eqz v10, :cond_8

    .line 273
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 276
    :cond_8
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v15}, Lcom/youku/service/update/UpdateService;->access$1600(Lcom/youku/service/update/UpdateService;)Z

    move-result v15

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v15}, Lcom/youku/service/update/UpdateService;->access$1500(Lcom/youku/service/update/UpdateService;)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 277
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v15}, Lcom/youku/service/update/UpdateService;->access$1500(Lcom/youku/service/update/UpdateService;)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 310
    :cond_9
    :goto_4
    if-eqz v3, :cond_a

    .line 311
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 312
    :cond_a
    if-eqz v9, :cond_b

    .line 313
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 314
    :cond_b
    if-eqz v10, :cond_0

    .line 315
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 318
    :catch_2
    move-exception v15

    goto/16 :goto_0

    .line 278
    :cond_c
    if-lt v6, v12, :cond_9

    .line 279
    :try_start_8
    sget-object v15, Lc8/VLj;->context:Landroid/content/Context;

    invoke-static {v15}, Lc8/Tyo;->getSign(Landroid/content/Context;)[Landroid/content/pm/Signature;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    move-object/from16 v16, v0

    .line 280
    invoke-static/range {v16 .. v16}, Lcom/youku/service/update/UpdateService;->access$1500(Lcom/youku/service/update/UpdateService;)Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lc8/Tyo;->getApkSignInfo(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v16

    .line 279
    invoke-static/range {v15 .. v16}, Lc8/Tyo;->IsSignaturesSame([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v1

    .line 281
    .local v1, "b":Z
    if-eqz v1, :cond_f

    .line 283
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v15}, Lcom/youku/service/update/UpdateService;->access$1700(Lcom/youku/service/update/UpdateService;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 284
    invoke-static {}, Lcom/youku/service/update/UpdateService;->access$200()Ljava/lang/String;
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    .line 297
    .end local v1    # "b":Z
    .end local v4    # "buf":[B
    :catch_3
    move-exception v7

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 298
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "count":I
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "length":I
    .end local v14    # "url":Ljava/net/URL;
    .local v7, "e":Ljava/io/IOException;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :goto_5
    :try_start_9
    invoke-static {}, Lcom/youku/service/update/UpdateService;->access$200()Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "service downloadapk fail IOException"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 300
    sget v15, Lcom/youku/phone/R$string;->update_fail_tips:I

    invoke-static {v15}, Lc8/bzo;->showTips(I)V

    .line 301
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v15}, Lcom/youku/service/update/UpdateService;->access$1700(Lcom/youku/service/update/UpdateService;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 310
    if-eqz v2, :cond_d

    .line 311
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 312
    :cond_d
    if-eqz v8, :cond_e

    .line 313
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 314
    :cond_e
    if-eqz v10, :cond_0

    .line 315
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 302
    :catch_4
    move-exception v15

    goto/16 :goto_0

    .line 286
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "b":Z
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buf":[B
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "count":I
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "length":I
    .restart local v14    # "url":Ljava/net/URL;
    :cond_f
    :try_start_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v15}, Lcom/youku/service/update/UpdateService;->access$1500(Lcom/youku/service/update/UpdateService;)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 287
    sget v15, Lcom/youku/phone/R$string;->update_fail_tips:I

    invoke-static {v15}, Lc8/bzo;->showTips(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v15}, Lcom/youku/service/update/UpdateService;->access$1700(Lcom/youku/service/update/UpdateService;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 289
    invoke-static {}, Lcom/youku/service/update/UpdateService;->access$200()Ljava/lang/String;
    :try_end_b
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_4

    .line 303
    .end local v1    # "b":Z
    .end local v4    # "buf":[B
    :catch_5
    move-exception v7

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 304
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "count":I
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "length":I
    .end local v14    # "url":Ljava/net/URL;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :goto_6
    :try_start_c
    invoke-static {}, Lcom/youku/service/update/UpdateService;->access$200()Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "service downloadapk fail Exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    sget v15, Lcom/youku/phone/R$string;->update_fail_tips:I

    invoke-static {v15}, Lc8/bzo;->showTips(I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Fin;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v15}, Lcom/youku/service/update/UpdateService;->access$1700(Lcom/youku/service/update/UpdateService;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 310
    if-eqz v2, :cond_10

    .line 311
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 312
    :cond_10
    if-eqz v8, :cond_11

    .line 313
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 314
    :cond_11
    if-eqz v10, :cond_0

    .line 315
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_0

    .line 307
    :catch_6
    move-exception v15

    goto/16 :goto_0

    .line 309
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    .line 310
    :goto_7
    if-eqz v2, :cond_12

    .line 311
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 312
    :cond_12
    if-eqz v8, :cond_13

    .line 313
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 314
    :cond_13
    if-eqz v10, :cond_14

    .line 315
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 317
    :cond_14
    :goto_8
    throw v15

    :catch_7
    move-exception v16

    goto :goto_8

    .line 309
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "length":I
    .restart local v14    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v15

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "count":I
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v15

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 303
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "count":I
    .end local v12    # "length":I
    .end local v14    # "url":Ljava/net/URL;
    :catch_8
    move-exception v7

    goto :goto_6

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "length":I
    .restart local v14    # "url":Ljava/net/URL;
    :catch_9
    move-exception v7

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 297
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v12    # "length":I
    .end local v14    # "url":Ljava/net/URL;
    :catch_a
    move-exception v7

    goto/16 :goto_5

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "length":I
    .restart local v14    # "url":Ljava/net/URL;
    :catch_b
    move-exception v7

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 292
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v12    # "length":I
    .end local v14    # "url":Ljava/net/URL;
    :catch_c
    move-exception v7

    goto/16 :goto_2

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "length":I
    .restart local v14    # "url":Ljava/net/URL;
    :catch_d
    move-exception v7

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buf":[B
    .restart local v6    # "count":I
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_e
    move-exception v15

    goto/16 :goto_3
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lc8/Fin;->downloadApk()V

    .line 227
    return-void
.end method
