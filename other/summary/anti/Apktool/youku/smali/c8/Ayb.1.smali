.class public Lc8/Ayb;
.super Ljava/lang/Object;
.source "BlurTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/zyb;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BlurTool"

.field private static sExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lc8/vyb;

    invoke-direct {v0}, Lc8/vyb;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lc8/Ayb;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 223
    invoke-static {p0}, Lc8/Ayb;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static asyncBlur(Landroid/graphics/Bitmap;ILc8/zyb;)V
    .locals 2
    .param p0, "originalImage"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "radius"    # I
    .param p2, "listener"    # Lc8/zyb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 303
    sget-object v0, Lc8/Ayb;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lc8/yyb;

    invoke-direct {v1, p2, p0, p1}, Lc8/yyb;-><init>(Lc8/zyb;Landroid/graphics/Bitmap;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

.method public static blur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "originalImage"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "radius"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 250
    .local v14, "start":J
    const/16 v17, 0xa

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 251
    if-nez p1, :cond_1

    .line 285
    .end local p0    # "originalImage":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 254
    .restart local p0    # "originalImage":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 255
    .local v16, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 257
    .local v5, "height":I
    if-lez v16, :cond_0

    if-lez v5, :cond_0

    .line 261
    invoke-static/range {p1 .. p1}, Lc8/Ayb;->calculateSampling(I)D

    move-result-wide v12

    .line 262
    .local v12, "sampling":D
    const/4 v8, 0x3

    .line 263
    .local v8, "retryTimes":I
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v12

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    int-to-double v0, v5

    move-wide/from16 v18, v0

    mul-double v18, v18, v12

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 264
    .local v9, "sampledImage":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_3

    .line 266
    if-eqz p1, :cond_0

    .line 269
    :try_start_0
    invoke-static/range {p1 .. p1}, Lc8/Ayb;->calculateSampling(I)D

    move-result-wide v10

    .line 270
    .local v10, "s":D
    cmpl-double v17, v10, v12

    if-eqz v17, :cond_2

    .line 271
    move-wide v12, v10

    .line 272
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v12

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    int-to-double v0, v5

    move-wide/from16 v18, v0

    mul-double v18, v18, v12

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 275
    :cond_2
    const/16 v17, 0x0

    move/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v9, v0, v1}, Lc8/Ayb;->stackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 276
    .local v7, "result":Landroid/graphics/Bitmap;
    const-string/jumbo v17, "BlurTool"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "elapsed time on blurring image(radius:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ",sampling: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "): "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v14

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 p0, v7

    .line 277
    goto/16 :goto_0

    .line 278
    .end local v7    # "result":Landroid/graphics/Bitmap;
    .end local v10    # "s":D
    :catch_0
    move-exception v4

    .line 279
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v17, "BlurTool"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "thrown exception when blurred image(times = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "),"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    add-int/lit8 p1, p1, -0x1

    .line 281
    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 264
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 284
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v17, "BlurTool"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "elapsed time on blurring image(radius:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ",sampling: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "): "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v14

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static calculateSampling(I)D
    .locals 3
    .param p0, "radius"    # I

    .prologue
    .line 290
    const/4 v2, 0x3

    if-gt p0, v2, :cond_0

    .line 291
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 298
    .local v0, "sampling":D
    :goto_0
    return-wide v0

    .line 292
    .end local v0    # "sampling":D
    :cond_0
    const/16 v2, 0x8

    if-gt p0, v2, :cond_1

    .line 293
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    .restart local v0    # "sampling":D
    goto :goto_0

    .line 295
    .end local v0    # "sampling":D
    :cond_1
    const-wide/high16 v0, 0x3fc0000000000000L    # 0.125

    .restart local v0    # "sampling":D
    goto :goto_0
.end method

.method private static post(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 330
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    return-void
.end method

.method public static stackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 42
    .param p0, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "canModifyBitmap"    # Z

    .prologue
    .line 336
    if-eqz p2, :cond_0

    .line 337
    move-object/from16 v2, p0

    .line 342
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-gtz p1, :cond_1

    .line 343
    const/4 v2, 0x0

    .line 537
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v2

    .line 339
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 347
    .local v5, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 349
    .local v9, "h":I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 350
    .local v3, "pix":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 352
    add-int/lit8 v36, v5, -0x1

    .line 353
    .local v36, "wm":I
    add-int/lit8 v21, v9, -0x1

    .line 354
    .local v21, "hm":I
    mul-int v35, v5, v9

    .line 355
    .local v35, "wh":I
    add-int v4, p1, p1

    add-int/lit8 v14, v4, 0x1

    .line 357
    .local v14, "div":I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 358
    .local v24, "r":[I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 359
    .local v17, "g":[I
    move/from16 v0, v35

    new-array v10, v0, [I

    .line 361
    .local v10, "b":[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v34, v0

    .line 363
    .local v34, "vmin":[I
    add-int/lit8 v4, v14, 0x1

    shr-int/lit8 v15, v4, 0x1

    .line 364
    .local v15, "divsum":I
    mul-int/2addr v15, v15

    .line 365
    mul-int/lit16 v4, v15, 0x100

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 366
    .local v16, "dv":[I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    mul-int/lit16 v4, v15, 0x100

    move/from16 v0, v22

    if-ge v0, v4, :cond_2

    .line 367
    div-int v4, v22, v15

    aput v4, v16, v22

    .line 366
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 370
    :cond_2
    const/16 v39, 0x0

    .local v39, "yi":I
    move/from16 v41, v39

    .line 372
    .local v41, "yw":I
    const/4 v4, 0x3

    filled-new-array {v14, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [[I

    .line 377
    .local v31, "stack":[[I
    add-int/lit8 v25, p1, 0x1

    .line 381
    .local v25, "r1":I
    const/16 v38, 0x0

    .local v38, "y":I
    :goto_3
    move/from16 v0, v38

    if-ge v0, v9, :cond_7

    .line 382
    const/4 v13, 0x0

    .local v13, "bsum":I
    move/from16 v20, v13

    .local v20, "gsum":I
    move/from16 v29, v13

    .local v29, "rsum":I
    move v12, v13

    .local v12, "boutsum":I
    move/from16 v19, v13

    .local v19, "goutsum":I
    move/from16 v28, v13

    .local v28, "routsum":I
    move v11, v13

    .local v11, "binsum":I
    move/from16 v18, v13

    .local v18, "ginsum":I
    move/from16 v27, v13

    .line 383
    .local v27, "rinsum":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_4

    .line 384
    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v36

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v39

    aget v23, v3, v4

    .line 385
    .local v23, "p":I
    add-int v4, v22, p1

    aget-object v30, v31, v4

    .line 386
    .local v30, "sir":[I
    const/4 v4, 0x0

    shr-int/lit8 v6, v23, 0x10

    and-int/lit16 v6, v6, 0xff

    aput v6, v30, v4

    .line 387
    const/4 v4, 0x1

    shr-int/lit8 v6, v23, 0x8

    and-int/lit16 v6, v6, 0xff

    aput v6, v30, v4

    .line 388
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    .line 389
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .line 390
    .local v26, "rbs":I
    const/4 v4, 0x0

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 391
    const/4 v4, 0x1

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 392
    const/4 v4, 0x2

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 393
    if-lez v22, :cond_3

    .line 394
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 395
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 396
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 383
    :goto_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 398
    :cond_3
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 399
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 400
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_5

    .line 403
    .end local v23    # "p":I
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    :cond_4
    move/from16 v32, p1

    .line 405
    .local v32, "stackpointer":I
    const/16 v37, 0x0

    .local v37, "x":I
    :goto_6
    move/from16 v0, v37

    if-ge v0, v5, :cond_6

    .line 407
    aget v4, v16, v29

    aput v4, v24, v39

    .line 408
    aget v4, v16, v20

    aput v4, v17, v39

    .line 409
    aget v4, v16, v13

    aput v4, v10, v39

    .line 411
    sub-int v29, v29, v28

    .line 412
    sub-int v20, v20, v19

    .line 413
    sub-int/2addr v13, v12

    .line 415
    sub-int v4, v32, p1

    add-int v33, v4, v14

    .line 416
    .local v33, "stackstart":I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .line 418
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 419
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 420
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 422
    if-nez v38, :cond_5

    .line 423
    add-int v4, v37, p1

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v36

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v34, v37

    .line 425
    :cond_5
    aget v4, v34, v37

    add-int v4, v4, v41

    aget v23, v3, v4

    .line 427
    .restart local v23    # "p":I
    const/4 v4, 0x0

    shr-int/lit8 v6, v23, 0x10

    and-int/lit16 v6, v6, 0xff

    aput v6, v30, v4

    .line 428
    const/4 v4, 0x1

    shr-int/lit8 v6, v23, 0x8

    and-int/lit16 v6, v6, 0xff

    aput v6, v30, v4

    .line 429
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    .line 431
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 432
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 433
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 435
    add-int v29, v29, v27

    .line 436
    add-int v20, v20, v18

    .line 437
    add-int/2addr v13, v11

    .line 439
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    .line 440
    rem-int v4, v32, v14

    aget-object v30, v31, v4

    .line 442
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 443
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 444
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 446
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 447
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 448
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 450
    add-int/lit8 v39, v39, 0x1

    .line 405
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_6

    .line 452
    .end local v23    # "p":I
    .end local v30    # "sir":[I
    .end local v33    # "stackstart":I
    :cond_6
    add-int v41, v41, v5

    .line 381
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_3

    .line 454
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v32    # "stackpointer":I
    .end local v37    # "x":I
    :cond_7
    const/16 v37, 0x0

    .restart local v37    # "x":I
    :goto_7
    move/from16 v0, v37

    if-ge v0, v5, :cond_d

    .line 455
    const/4 v13, 0x0

    .restart local v13    # "bsum":I
    move/from16 v20, v13

    .restart local v20    # "gsum":I
    move/from16 v29, v13

    .restart local v29    # "rsum":I
    move v12, v13

    .restart local v12    # "boutsum":I
    move/from16 v19, v13

    .restart local v19    # "goutsum":I
    move/from16 v28, v13

    .restart local v28    # "routsum":I
    move v11, v13

    .restart local v11    # "binsum":I
    move/from16 v18, v13

    .restart local v18    # "ginsum":I
    move/from16 v27, v13

    .line 456
    .restart local v27    # "rinsum":I
    move/from16 v0, p1

    neg-int v4, v0

    mul-int v40, v4, v5

    .line 457
    .local v40, "yp":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_8
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_a

    .line 458
    const/4 v4, 0x0

    move/from16 v0, v40

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v39, v4, v37

    .line 460
    add-int v4, v22, p1

    aget-object v30, v31, v4

    .line 462
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v6, v24, v39

    aput v6, v30, v4

    .line 463
    const/4 v4, 0x1

    aget v6, v17, v39

    aput v6, v30, v4

    .line 464
    const/4 v4, 0x2

    aget v6, v10, v39

    aput v6, v30, v4

    .line 466
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .line 468
    .restart local v26    # "rbs":I
    aget v4, v24, v39

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 469
    aget v4, v17, v39

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 470
    aget v4, v10, v39

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 472
    if-lez v22, :cond_9

    .line 473
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 474
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 475
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 482
    :goto_9
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 483
    add-int v40, v40, v5

    .line 457
    :cond_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 477
    :cond_9
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 478
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 479
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_9

    .line 486
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    :cond_a
    move/from16 v39, v37

    .line 487
    move/from16 v32, p1

    .line 488
    .restart local v32    # "stackpointer":I
    const/16 v38, 0x0

    :goto_a
    move/from16 v0, v38

    if-ge v0, v9, :cond_c

    .line 490
    const/high16 v4, -0x1000000

    aget v6, v3, v39

    and-int/2addr v4, v6

    aget v6, v16, v29

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v16, v20

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v16, v13

    or-int/2addr v4, v6

    aput v4, v3, v39

    .line 492
    sub-int v29, v29, v28

    .line 493
    sub-int v20, v20, v19

    .line 494
    sub-int/2addr v13, v12

    .line 496
    sub-int v4, v32, p1

    add-int v33, v4, v14

    .line 497
    .restart local v33    # "stackstart":I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .line 499
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 500
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 501
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 503
    if-nez v37, :cond_b

    .line 504
    add-int v4, v38, v25

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v34, v38

    .line 506
    :cond_b
    aget v4, v34, v38

    add-int v23, v37, v4

    .line 508
    .restart local v23    # "p":I
    const/4 v4, 0x0

    aget v6, v24, v23

    aput v6, v30, v4

    .line 509
    const/4 v4, 0x1

    aget v6, v17, v23

    aput v6, v30, v4

    .line 510
    const/4 v4, 0x2

    aget v6, v10, v23

    aput v6, v30, v4

    .line 512
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 513
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 514
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 516
    add-int v29, v29, v27

    .line 517
    add-int v20, v20, v18

    .line 518
    add-int/2addr v13, v11

    .line 520
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    .line 521
    aget-object v30, v31, v32

    .line 523
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 524
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 525
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 527
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 528
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 529
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 531
    add-int v39, v39, v5

    .line 488
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_a

    .line 454
    .end local v23    # "p":I
    .end local v30    # "sir":[I
    .end local v33    # "stackstart":I
    :cond_c
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_7

    .line 535
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v32    # "stackpointer":I
    .end local v40    # "yp":I
    :cond_d
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_1
.end method
