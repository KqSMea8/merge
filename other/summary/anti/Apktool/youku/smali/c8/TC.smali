.class public Lc8/TC;
.super Ljava/lang/Object;
.source "AliNetworkAdapter.java"

# interfaces
.implements Lc8/gM;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/VC;->setRequestBodyHandler(Lc8/uM;Lc8/XC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field buffer:[B

.field curFilenum:I

.field dataValue:[B

.field fileNameValue:Ljava/lang/String;

.field hasInitilized:Z

.field instream:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field isCompleted:Z

.field postedLen:I

.field final synthetic this$0:Lc8/VC;

.field final synthetic val$dataMap:Ljava/util/Map;

.field final synthetic val$fileMap:Ljava/util/Map;

.field final synthetic val$totalFileNum:I


# direct methods
.method constructor <init>(Lc8/VC;ILjava/util/Map;Ljava/util/Map;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 289
    iput-object p1, p0, Lc8/TC;->this$0:Lc8/VC;

    iput p2, p0, Lc8/TC;->val$totalFileNum:I

    iput-object p3, p0, Lc8/TC;->val$fileMap:Ljava/util/Map;

    iput-object p4, p0, Lc8/TC;->val$dataMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-boolean v2, p0, Lc8/TC;->isCompleted:Z

    .line 291
    iput v2, p0, Lc8/TC;->postedLen:I

    .line 293
    iput v2, p0, Lc8/TC;->curFilenum:I

    .line 294
    iput-object v0, p0, Lc8/TC;->fileNameValue:Ljava/lang/String;

    .line 295
    iput-object v0, p0, Lc8/TC;->dataValue:[B

    .line 296
    iget-object v0, p0, Lc8/TC;->this$0:Lc8/VC;

    invoke-static {v0}, Lc8/VC;->access$000(Lc8/VC;)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lc8/TC;->buffer:[B

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lc8/TC;->val$totalFileNum:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/TC;->instream:Ljava/util/List;

    .line 298
    iput-boolean v2, p0, Lc8/TC;->hasInitilized:Z

    return-void
.end method


# virtual methods
.method public initStream()V
    .locals 7

    .prologue
    .line 303
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lc8/TC;->curFilenum:I

    :goto_0
    iget v1, p0, Lc8/TC;->curFilenum:I

    iget v2, p0, Lc8/TC;->val$totalFileNum:I

    if-ge v1, v2, :cond_1

    .line 307
    iget-object v1, p0, Lc8/TC;->val$fileMap:Ljava/util/Map;

    iget v2, p0, Lc8/TC;->curFilenum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lc8/TC;->fileNameValue:Ljava/lang/String;

    .line 308
    iget-object v1, p0, Lc8/TC;->val$dataMap:Ljava/util/Map;

    iget v2, p0, Lc8/TC;->curFilenum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lc8/TC;->dataValue:[B

    .line 310
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/TC;->dataValue:[B

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lc8/TC;->this$0:Lc8/VC;

    iget-object v1, v1, Lc8/VC;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "len ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/TC;->dataValue:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",datavalue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lc8/TC;->dataValue:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lc8/TC;->dataValue:[B

    array-length v6, v6

    invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_0
    :try_start_1
    iget-object v1, p0, Lc8/TC;->fileNameValue:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 317
    iget-object v1, p0, Lc8/TC;->fileNameValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    iget-object v1, p0, Lc8/TC;->fileNameValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 319
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lc8/TC;->instream:Ljava/util/List;

    iget v2, p0, Lc8/TC;->curFilenum:I

    iget-object v3, p0, Lc8/TC;->this$0:Lc8/VC;

    invoke-static {v3}, Lc8/VC;->access$100(Lc8/VC;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_1
    :try_start_2
    iget v1, p0, Lc8/TC;->curFilenum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/TC;->curFilenum:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 334
    :catch_0
    move-exception v1

    :cond_1
    return-void

    .line 321
    :cond_2
    :try_start_3
    iget-object v1, p0, Lc8/TC;->instream:Ljava/util/List;

    iget v2, p0, Lc8/TC;->curFilenum:I

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lc8/TC;->fileNameValue:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 327
    :catchall_0
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 324
    :cond_3
    :try_start_5
    iget-object v1, p0, Lc8/TC;->instream:Ljava/util/List;

    iget v2, p0, Lc8/TC;->curFilenum:I

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lc8/TC;->dataValue:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public isCompleted()Z
    .locals 4

    .prologue
    .line 373
    iget-boolean v3, p0, Lc8/TC;->isCompleted:Z

    if-eqz v3, :cond_1

    .line 375
    const/4 v3, 0x0

    iput-boolean v3, p0, Lc8/TC;->isCompleted:Z

    .line 378
    :try_start_0
    iget-object v3, p0, Lc8/TC;->instream:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 379
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 385
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v3, 0x1

    .line 387
    :goto_2
    return v3

    .line 381
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lc8/TC;->instream:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 387
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-boolean v3, p0, Lc8/TC;->isCompleted:Z

    goto :goto_2
.end method

.method public read([B)I
    .locals 10
    .param p1, "netBuffer"    # [B

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 339
    iget-boolean v6, p0, Lc8/TC;->hasInitilized:Z

    if-nez v6, :cond_2

    .line 340
    invoke-virtual {p0}, Lc8/TC;->initStream()V

    .line 342
    iget-object v6, p0, Lc8/TC;->instream:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lc8/TC;->instream:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 343
    :cond_0
    iput-boolean v9, p0, Lc8/TC;->isCompleted:Z

    move v0, v5

    .line 368
    :goto_0
    return v0

    .line 346
    :cond_1
    iput-boolean v9, p0, Lc8/TC;->hasInitilized:Z

    .line 348
    :cond_2
    iget-object v6, p0, Lc8/TC;->instream:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    .line 350
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v6, p0, Lc8/TC;->this$0:Lc8/VC;

    invoke-static {v6}, Lc8/VC;->access$000(Lc8/VC;)I

    move-result v6

    array-length v7, p1

    if-le v6, v7, :cond_4

    array-length v4, p1

    .line 351
    .local v4, "maxLen":I
    :goto_1
    iget-object v6, p0, Lc8/TC;->buffer:[B

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 352
    .local v0, "currentDataLen":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_3

    .line 353
    iget-object v6, p0, Lc8/TC;->buffer:[B

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, p1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    iget v6, p0, Lc8/TC;->postedLen:I

    add-int/2addr v6, v0

    iput v6, p0, Lc8/TC;->postedLen:I

    .line 355
    iget-object v6, p0, Lc8/TC;->this$0:Lc8/VC;

    iget-object v6, v6, Lc8/VC;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "read len="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 360
    .end local v0    # "currentDataLen":I
    .end local v4    # "maxLen":I
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lc8/TC;->this$0:Lc8/VC;

    iget-object v6, v6, Lc8/VC;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "read exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iput-boolean v9, p0, Lc8/TC;->isCompleted:Z

    move v0, v5

    .line 363
    goto :goto_0

    .line 350
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lc8/TC;->this$0:Lc8/VC;

    invoke-static {v6}, Lc8/VC;->access$000(Lc8/VC;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1

    .line 366
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_5
    iget-object v6, p0, Lc8/TC;->this$0:Lc8/VC;

    iget-object v6, v6, Lc8/VC;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v7, "read finish"

    invoke-static {v6, v7}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iput-boolean v9, p0, Lc8/TC;->isCompleted:Z

    move v0, v5

    .line 368
    goto/16 :goto_0
.end method
