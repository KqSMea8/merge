.class public Lc8/Qy;
.super Ljava/lang/Object;
.source "ActivityThreadHook.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final mActivityThread:Ljava/lang/Object;

.field private final mActivityThreadHandler:Landroid/os/Handler;

.field private sDelayServiceMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 1
    .param p1, "activityThread"    # Ljava/lang/Object;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Qy;->sDelayServiceMessageList:Ljava/util/List;

    .line 242
    iput-object p1, p0, Lc8/Qy;->mActivityThread:Ljava/lang/Object;

    .line 243
    iput-object p2, p0, Lc8/Qy;->mActivityThreadHandler:Landroid/os/Handler;

    .line 244
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

.method static synthetic access$000(Lc8/Qy;)V
    .locals 0
    .param p0, "x0"    # Lc8/Qy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 235
    invoke-direct {p0}, Lc8/Qy;->executeDelayMsg()V

    return-void
.end method

.method private executeDelayMsg()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v3, p0, Lc8/Qy;->sDelayServiceMessageList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 401
    iget-object v3, p0, Lc8/Qy;->sDelayServiceMessageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 402
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 403
    iget-object v3, p0, Lc8/Qy;->sDelayServiceMessageList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 404
    .local v0, "msg":Landroid/os/Message;
    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x72

    if-ne v3, v4, :cond_1

    .line 405
    invoke-direct {p0, v0}, Lc8/Qy;->handleService(Landroid/os/Message;)V

    .line 415
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "size":I
    .end local v2    # "x":I
    :cond_0
    :goto_1
    return-void

    .line 408
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "size":I
    .restart local v2    # "x":I
    :cond_1
    iget-object v3, p0, Lc8/Qy;->sDelayServiceMessageList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 409
    iget-object v3, p0, Lc8/Qy;->mActivityThreadHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 410
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lc8/Qy;->sDelayServiceMessageList:Ljava/util/List;

    goto :goto_1
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 337
    const/4 v2, 0x0

    .line 338
    .local v2, "sw":Ljava/io/StringWriter;
    const/4 v0, 0x0

    .line 340
    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    .end local v2    # "sw":Ljava/io/StringWriter;
    .local v3, "sw":Ljava/io/StringWriter;
    :try_start_1
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 342
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_2
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 343
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 344
    invoke-virtual {v3}, Ljava/io/StringWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 346
    if-eqz v3, :cond_0

    .line 348
    :try_start_3
    invoke-virtual {v3}, Ljava/io/StringWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 353
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 354
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 357
    :cond_1
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 346
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "sw":Ljava/io/StringWriter;
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "sw":Ljava/io/StringWriter;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v2, :cond_2

    .line 348
    :try_start_4
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 353
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 354
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_3
    throw v4

    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v2    # "sw":Ljava/io/StringWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "sw":Ljava/io/StringWriter;
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "sw":Ljava/io/StringWriter;
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "sw":Ljava/io/StringWriter;
    :catch_1
    move-exception v5

    goto :goto_2

    .line 346
    .end local v2    # "sw":Ljava/io/StringWriter;
    .restart local v3    # "sw":Ljava/io/StringWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "sw":Ljava/io/StringWriter;
    .restart local v2    # "sw":Ljava/io/StringWriter;
    goto :goto_1

    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v2    # "sw":Ljava/io/StringWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "sw":Ljava/io/StringWriter;
    :catchall_2
    move-exception v4

    move-object v0, v1

    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    move-object v2, v3

    .end local v3    # "sw":Ljava/io/StringWriter;
    .restart local v2    # "sw":Ljava/io/StringWriter;
    goto :goto_1
.end method

.method private handleService(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 361
    const-string/jumbo v6, "android.app.ActivityThread$CreateServiceData"

    invoke-static {v6}, Lc8/Qy;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 362
    .local v0, "ReceiverData":Ljava/lang/Class;
    const-string/jumbo v6, "info"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 363
    .local v5, "info_field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 364
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ServiceInfo;

    .line 365
    .local v4, "info":Landroid/content/pm/ServiceInfo;
    iget-object v2, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 366
    .local v2, "componentName":Ljava/lang/String;
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v6

    invoke-virtual {v6, v2}, Lc8/Xx;->getBundleForComponet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "bundleName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 368
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v6

    invoke-virtual {v6, v1}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v3

    check-cast v3, Lc8/hy;

    .line 369
    .local v3, "impl":Lc8/hy;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lc8/hy;->checkValidate()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 370
    iget-object v6, p0, Lc8/Qy;->mActivityThreadHandler:Landroid/os/Handler;

    invoke-virtual {v6, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 371
    iget-object v6, p0, Lc8/Qy;->sDelayServiceMessageList:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 372
    iget-object v6, p0, Lc8/Qy;->sDelayServiceMessageList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 374
    :cond_0
    invoke-direct {p0}, Lc8/Qy;->executeDelayMsg()V

    .line 397
    .end local v3    # "impl":Lc8/hy;
    :goto_0
    return-void

    .line 376
    .restart local v3    # "impl":Lc8/hy;
    :cond_1
    iget-object v6, p0, Lc8/Qy;->sDelayServiceMessageList:Ljava/util/List;

    if-nez v6, :cond_2

    .line 377
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lc8/Qy;->sDelayServiceMessageList:Ljava/util/List;

    .line 378
    iget-object v6, p0, Lc8/Qy;->sDelayServiceMessageList:Ljava/util/List;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_2
    new-instance v6, Lc8/Py;

    invoke-direct {v6, p0}, Lc8/Py;-><init>(Lc8/Qy;)V

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Lc8/Vy;->checkBundleStateAsync(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 390
    .end local v3    # "impl":Lc8/hy;
    :cond_3
    iget-object v6, p0, Lc8/Qy;->mActivityThreadHandler:Landroid/os/Handler;

    invoke-virtual {v6, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 391
    iget-object v6, p0, Lc8/Qy;->sDelayServiceMessageList:Ljava/util/List;

    if-eqz v6, :cond_4

    .line 392
    iget-object v6, p0, Lc8/Qy;->sDelayServiceMessageList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 394
    :cond_4
    invoke-direct {p0}, Lc8/Qy;->executeDelayMsg()V

    goto :goto_0
.end method


# virtual methods
.method public ensureLoadedApk()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 247
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    iget-object v2, p0, Lc8/Qy;->mActivityThread:Ljava/lang/Object;

    sget-object v3, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/wy;->getLoadedApk(Landroid/app/Application;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 248
    .local v0, "loadedapk":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 250
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Oy;->clearActivityStack()V

    .line 251
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 253
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 258
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc8/Qy;->ensureLoadedApk()V

    .line 259
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    const/16 v20, 0x64

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 260
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lc8/Wz;->processActivityIntentIfNeed(Ljava/lang/Object;)V

    .line 269
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Qy;->mActivityThreadHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lc8/Qy;->ensureLoadedApk()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    const/16 v17, 0x1

    :goto_0
    return v17

    .line 272
    :catch_0
    move-exception v8

    .line 273
    .local v8, "e":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 274
    const/4 v4, 0x0

    .line 275
    .local v4, "appVersion":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 276
    .local v5, "avliableSpace":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 277
    .local v10, "filesSize":J
    const-wide/16 v6, 0x0

    .line 278
    .local v6, "databasesSize":J
    const-wide/16 v14, 0x0

    .line 279
    .local v14, "prefSize":J
    const-wide/16 v18, 0x0

    .line 281
    .local v18, "rootSize":J
    :try_start_1
    sget-object v17, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    if-eqz v17, :cond_1

    .line 282
    sget-object v17, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    sget-object v20, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v20 .. v20}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    :cond_1
    :goto_1
    invoke-static {v8}, Lc8/Qy;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    .line 288
    .local v9, "error":Ljava/lang/String;
    if-eqz v9, :cond_2

    const-string/jumbo v17, "RemoteServiceException"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-static {}, Lc8/py;->isDeubgMode()Z

    move-result v17

    if-nez v17, :cond_2

    .line 289
    const/16 v17, 0x1

    goto :goto_0

    .line 291
    :cond_2
    if-nez v4, :cond_3

    const-string/jumbo v4, ""

    .line 292
    :cond_3
    instance-of v0, v8, Ljava/lang/ClassNotFoundException;

    move/from16 v17, v0

    if-nez v17, :cond_4

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v20, "ClassNotFoundException"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 294
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    const/16 v20, 0x71

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    const/16 v20, 0x72

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 295
    :cond_5
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 297
    :cond_6
    sget-object v17, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Qy;->mActivityThread:Ljava/lang/Object;

    move-object/from16 v20, v0

    sget-object v21, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    .line 298
    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 297
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lc8/wy;->getLoadedApk(Landroid/app/Application;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 299
    .local v12, "loadedapk":Ljava/lang/Object;
    if-nez v12, :cond_7

    .line 300
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "avalialbeSpace = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "rootSize = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " filesSize = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " databasesSize =  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " prefSize ="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "loadedapk is null"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 303
    :cond_7
    sget-object v17, Lc8/xy;->LoadedApk_mClassLoader:Lc8/Cy;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/ClassLoader;

    .line 304
    .local v13, "pathClassLoader":Ljava/lang/ClassLoader;
    instance-of v0, v13, Lc8/Yy;

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 305
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "avalialbeSpace = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "rootSize = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " filesSize = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " databasesSize =  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " prefSize ="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "wrong classloader in loadedapk---"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 306
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 308
    :cond_8
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "avalialbeSpace = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "rootSize = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " filesSize = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " databasesSize =  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " prefSize ="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "From Atlas:classNotFound ---"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 311
    .end local v12    # "loadedapk":Ljava/lang/Object;
    .end local v13    # "pathClassLoader":Ljava/lang/ClassLoader;
    :cond_9
    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v20, "android.content.res.Resources"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v20, "OutOfMemoryError"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 312
    sget-object v17, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Qy;->mActivityThread:Ljava/lang/Object;

    move-object/from16 v20, v0

    sget-object v21, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    .line 313
    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 312
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lc8/wy;->getLoadedApk(Landroid/app/Application;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 314
    .restart local v12    # "loadedapk":Ljava/lang/Object;
    if-nez v12, :cond_a

    .line 315
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "loadedapk is null"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 317
    :cond_a
    sget-object v17, Lc8/xy;->LoadedApk_mResources:Lc8/Cy;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Resources;

    .line 318
    .local v16, "resource":Landroid/content/res/Resources;
    move-object/from16 v0, v16

    instance-of v0, v0, Lc8/cz;

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 319
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "Not DelegateResources type, DelegateResources paths are: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lc8/cz;->getCurrentAssetpathStr(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 321
    :cond_b
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "DelegateResources paths are: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lc8/cz;->getCurrentAssetpathStr(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 323
    .end local v12    # "loadedapk":Ljava/lang/Object;
    .end local v16    # "resource":Landroid/content/res/Resources;
    :cond_c
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .end local v9    # "error":Ljava/lang/String;
    :catch_1
    move-exception v17

    goto/16 :goto_1
.end method
