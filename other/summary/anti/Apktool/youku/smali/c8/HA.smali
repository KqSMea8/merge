.class public Lc8/HA;
.super Ljava/lang/Object;
.source "BundleReleaser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KA;->dexOptimization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KA;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$j:I

.field final synthetic val$validDexes:[Ljava/io/File;


# direct methods
.method constructor <init>(Lc8/KA;[Ljava/io/File;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KA;

    .prologue
    .line 442
    iput-object p1, p0, Lc8/HA;->this$0:Lc8/KA;

    iput-object p2, p0, Lc8/HA;->val$validDexes:[Ljava/io/File;

    iput p3, p0, Lc8/HA;->val$j:I

    iput-object p4, p0, Lc8/HA;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 446
    .local v8, "startTime":J
    iget-object v0, p0, Lc8/HA;->this$0:Lc8/KA;

    iget-object v1, p0, Lc8/HA;->val$validDexes:[Ljava/io/File;

    iget v2, p0, Lc8/HA;->val$j:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lc8/HA;->this$0:Lc8/KA;

    invoke-static {v2}, Lc8/KA;->access$200(Lc8/KA;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/KA;->access$300(Lc8/KA;Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, "optimizedPath":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lc8/HA;->this$0:Lc8/KA;

    invoke-static {v0}, Lc8/KA;->access$100(Lc8/KA;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 449
    iget-object v0, p0, Lc8/HA;->this$0:Lc8/KA;

    invoke-static {v0}, Lc8/KA;->access$400(Lc8/KA;)[Ldalvik/system/DexFile;

    move-result-object v0

    iget v1, p0, Lc8/HA;->val$j:I

    iget-object v2, p0, Lc8/HA;->val$validDexes:[Ljava/io/File;

    iget v4, p0, Lc8/HA;->val$j:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v2

    aput-object v2, v0, v1

    .line 450
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    invoke-static {}, Lc8/KA;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "odex not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/HA;->this$0:Lc8/KA;

    iget-object v1, p0, Lc8/HA;->this$0:Lc8/KA;

    invoke-static {v1}, Lc8/KA;->access$400(Lc8/KA;)[Ldalvik/system/DexFile;

    move-result-object v1

    iget v2, p0, Lc8/HA;->val$j:I

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Lc8/KA;->access$600(Lc8/KA;Ldalvik/system/DexFile;Ljava/lang/String;)Z

    move-result v7

    .line 464
    .local v7, "result":Z
    if-nez v7, :cond_1

    .line 465
    iget-object v0, p0, Lc8/HA;->this$0:Lc8/KA;

    invoke-static {v0}, Lc8/KA;->access$700(Lc8/KA;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lc8/HA;->this$0:Lc8/KA;

    invoke-static {v1}, Lc8/KA;->access$700(Lc8/KA;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    .end local v7    # "result":Z
    :cond_1
    :goto_1
    invoke-static {}, Lc8/KA;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dex %s consume %d ms"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lc8/HA;->val$validDexes:[Ljava/io/File;

    iget v5, p0, Lc8/HA;->val$j:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v12

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v13

    .line 472
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lc8/HA;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 475
    return-void

    .line 455
    :cond_2
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    const-string/jumbo v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/KA;->isVMMultidexCapable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/CA;->baseContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "fake.dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 457
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 458
    iget-object v0, p0, Lc8/HA;->this$0:Lc8/KA;

    invoke-static {v0}, Lc8/KA;->access$400(Lc8/KA;)[Ldalvik/system/DexFile;

    move-result-object v10

    iget v11, p0, Lc8/HA;->val$j:I

    sget-object v0, Lc8/CA;->dexBooster:Lc8/uA;

    sget-object v1, Lc8/CA;->baseContext:Landroid/content/Context;

    iget-object v2, p0, Lc8/HA;->val$validDexes:[Ljava/io/File;

    iget v4, p0, Lc8/HA;->val$j:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lc8/uA;->loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Ldalvik/system/DexFile;

    move-result-object v0

    aput-object v0, v10, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 467
    :catch_0
    move-exception v6

    .line 468
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 469
    iget-object v0, p0, Lc8/HA;->this$0:Lc8/KA;

    invoke-static {v0}, Lc8/KA;->access$700(Lc8/KA;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lc8/HA;->this$0:Lc8/KA;

    invoke-static {v1}, Lc8/KA;->access$700(Lc8/KA;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 470
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    throw v0

    .line 460
    :cond_3
    :try_start_3
    iget-object v0, p0, Lc8/HA;->this$0:Lc8/KA;

    invoke-static {v0}, Lc8/KA;->access$400(Lc8/KA;)[Ldalvik/system/DexFile;

    move-result-object v0

    iget v1, p0, Lc8/HA;->val$j:I

    sget-object v2, Lc8/CA;->baseContext:Landroid/content/Context;

    iget-object v4, p0, Lc8/HA;->val$validDexes:[Ljava/io/File;

    iget v5, p0, Lc8/HA;->val$j:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5}, Landroid/taobao/atlas/startup/DexFileCompat;->loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method
