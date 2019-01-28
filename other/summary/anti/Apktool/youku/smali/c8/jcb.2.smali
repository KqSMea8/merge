.class public Lc8/jcb;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/kcb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    return-void
.end method

.method private static addLayer(Ljava/util/List;Landroid/support/v4/util/LongSparseArray;Lc8/xfb;)V
    .locals 2
    .param p2, "layer"    # Lc8/xfb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/xfb;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lc8/xfb;",
            ">;",
            "Lc8/xfb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .local p1, "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-virtual {p2}, Lc8/xfb;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 391
    return-void
.end method

.method public static fromAssetFileName(Landroid/content/Context;Ljava/lang/String;Lc8/xcb;)Lc8/Zbb;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "loadedListener"    # Lc8/xcb;

    .prologue
    .line 190
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 194
    .local v1, "stream":Ljava/io/InputStream;
    invoke-static {p0, v1, p2}, Lc8/jcb;->fromInputStream(Landroid/content/Context;Ljava/io/InputStream;Lc8/xcb;)Lc8/Zbb;

    move-result-object v2

    return-object v2

    .line 191
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to find file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static fromInputStream(Landroid/content/Context;Ljava/io/InputStream;Lc8/xcb;)Lc8/Zbb;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "loadedListener"    # Lc8/xcb;

    .prologue
    .line 212
    new-instance v0, Lc8/Bdb;

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lc8/Bdb;-><init>(Landroid/content/res/Resources;Lc8/xcb;)V

    .line 214
    .local v0, "loader":Lc8/Bdb;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/InputStream;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lc8/Bdb;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 215
    return-object v0
.end method

.method public static fromInputStream(Landroid/content/res/Resources;Ljava/io/InputStream;)Lc8/kcb;
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 244
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 245
    .local v4, "size":I
    new-array v0, v4, [B

    .line 247
    .local v0, "buffer":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 248
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v2, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 249
    .local v2, "json":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 250
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-static {p0, v3}, Lc8/jcb;->fromJsonSync(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lc8/kcb;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 258
    invoke-static {p1}, Lc8/Kfb;->closeQuietly(Ljava/io/Closeable;)V

    .line 260
    .end local v0    # "buffer":[B
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "size":I
    :goto_0
    return-object v5

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v5, "LOTTIE"

    const-string/jumbo v6, "Failed to load composition."

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Unable to find file."

    invoke-direct {v7, v8, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    invoke-static {p1}, Lc8/Kfb;->closeQuietly(Ljava/io/Closeable;)V

    .line 260
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 254
    :catch_1
    move-exception v1

    .line 255
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    const-string/jumbo v5, "LOTTIE"

    const-string/jumbo v6, "Failed to load composition."

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Unable to load JSON."

    invoke-direct {v7, v8, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    invoke-static {p1}, Lc8/Kfb;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v5

    invoke-static {p1}, Lc8/Kfb;->closeQuietly(Ljava/io/Closeable;)V

    throw v5
.end method

.method public static fromJson(Landroid/content/res/Resources;Lorg/json/JSONObject;Lc8/xcb;)Lc8/Zbb;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "loadedListener"    # Lc8/xcb;

    .prologue
    .line 235
    new-instance v0, Lc8/Gdb;

    invoke-direct {v0, p0, p2}, Lc8/Gdb;-><init>(Landroid/content/res/Resources;Lc8/xcb;)V

    .line 236
    .local v0, "loader":Lc8/Gdb;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lc8/Gdb;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 237
    return-object v0
.end method

.method public static fromJsonSync(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lc8/kcb;
    .locals 26
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 264
    const/4 v5, 0x0

    .line 265
    .local v5, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v11, v15, Landroid/util/DisplayMetrics;->density:F

    .line 266
    .local v11, "scale":F
    const-string/jumbo v15, "w"

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v22

    .line 267
    .local v22, "width":I
    const-string/jumbo v15, "h"

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 269
    .local v17, "height":I
    const/4 v15, -0x1

    move/from16 v0, v22

    if-eq v0, v15, :cond_0

    const/4 v15, -0x1

    move/from16 v0, v17

    if-eq v0, v15, :cond_0

    .line 270
    move/from16 v0, v22

    int-to-float v15, v0

    mul-float/2addr v15, v11

    float-to-int v0, v15

    move/from16 v19, v0

    .line 271
    .local v19, "scaledWidth":I
    move/from16 v0, v17

    int-to-float v15, v0

    mul-float/2addr v15, v11

    float-to-int v0, v15

    move/from16 v18, v0

    .line 272
    .local v18, "scaledHeight":I
    new-instance v5, Landroid/graphics/Rect;

    .end local v5    # "bounds":Landroid/graphics/Rect;
    const/4 v15, 0x0

    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v5, v15, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 275
    .end local v18    # "scaledHeight":I
    .end local v19    # "scaledWidth":I
    .restart local v5    # "bounds":Landroid/graphics/Rect;
    :cond_0
    const-string/jumbo v15, "ip"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v15, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 276
    .local v6, "startFrame":J
    const-string/jumbo v15, "op"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v15, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 277
    .local v8, "endFrame":J
    const-string/jumbo v15, "fr"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v15, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v10, v0

    .line 278
    .local v10, "frameRate":F
    const-string/jumbo v15, "v"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 279
    .local v20, "version":Ljava/lang/String;
    const-string/jumbo v15, "[.]"

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 280
    .local v21, "versions":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v21, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 281
    .local v12, "major":I
    const/4 v15, 0x1

    aget-object v15, v21, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 282
    .local v13, "minor":I
    const/4 v15, 0x2

    aget-object v15, v21, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 283
    .local v14, "patch":I
    new-instance v4, Lc8/kcb;

    const/4 v15, 0x0

    invoke-direct/range {v4 .. v15}, Lc8/kcb;-><init>(Landroid/graphics/Rect;JJFFIIILc8/icb;)V

    .line 285
    .local v4, "composition":Lc8/kcb;
    const-string/jumbo v15, "assets"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 286
    .local v16, "assetsJson":Lorg/json/JSONArray;
    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lc8/jcb;->parseImages(Lorg/json/JSONArray;Lc8/kcb;)V

    .line 287
    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lc8/jcb;->parsePrecomps(Lorg/json/JSONArray;Lc8/kcb;)V

    .line 288
    const-string/jumbo v15, "fonts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-static {v15, v4}, Lc8/jcb;->parseFonts(Lorg/json/JSONObject;Lc8/kcb;)V

    .line 289
    const-string/jumbo v15, "chars"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    invoke-static {v15, v4}, Lc8/jcb;->parseChars(Lorg/json/JSONArray;Lc8/kcb;)V

    .line 290
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lc8/jcb;->parseLayers(Lorg/json/JSONObject;Lc8/kcb;)V

    .line 291
    return-object v4
.end method

.method public static fromRawFile(Landroid/content/Context;ILc8/xcb;)Lc8/Zbb;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .param p2, "loadedListener"    # Lc8/xcb;

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lc8/jcb;->fromInputStream(Landroid/content/Context;Ljava/io/InputStream;Lc8/xcb;)Lc8/Zbb;

    move-result-object v0

    return-object v0
.end method

.method private static parseChars(Lorg/json/JSONArray;Lc8/kcb;)V
    .locals 5
    .param p0, "charsJson"    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 376
    if-nez p0, :cond_1

    .line 386
    :cond_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 381
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 383
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lc8/Edb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Fdb;

    move-result-object v0

    .line 384
    .local v0, "character":Lc8/Fdb;
    invoke-static {p1}, Lc8/kcb;->access$600(Lc8/kcb;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v0}, Lc8/Fdb;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static parseFonts(Lorg/json/JSONObject;Lc8/kcb;)V
    .locals 6
    .param p0, "fonts"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 361
    if-nez p0, :cond_1

    .line 373
    :cond_0
    return-void

    .line 364
    :cond_1
    const-string/jumbo v4, "list"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 365
    .local v1, "fontsList":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 369
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 370
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lc8/Cdb;->newInstance(Lorg/json/JSONObject;)Lc8/Ddb;

    move-result-object v0

    .line 371
    .local v0, "font":Lc8/Ddb;
    invoke-static {p1}, Lc8/kcb;->access$500(Lc8/kcb;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lc8/Ddb;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static parseImages(Lorg/json/JSONArray;Lc8/kcb;)V
    .locals 6
    .param p0, "assetsJson"    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 346
    if-nez p0, :cond_1

    .line 358
    :cond_0
    return-void

    .line 349
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 350
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 351
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 352
    .local v0, "assetJson":Lorg/json/JSONObject;
    const-string/jumbo v4, "p"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 355
    invoke-static {v0}, Lc8/vcb;->newInstance(Lorg/json/JSONObject;)Lc8/wcb;

    move-result-object v2

    .line 356
    .local v2, "image":Lc8/wcb;
    invoke-static {p1}, Lc8/kcb;->access$400(Lc8/kcb;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2}, Lc8/wcb;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .end local v2    # "image":Lc8/wcb;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static parseLayers(Lorg/json/JSONObject;Lc8/kcb;)V
    .locals 7
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 295
    const-string/jumbo v5, "layers"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 300
    .local v2, "jsonLayers":Lorg/json/JSONArray;
    if-nez v2, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 304
    .local v4, "length":I
    const/4 v1, 0x0

    .line 305
    .local v1, "imageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_3

    .line 306
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, p1}, Lc8/wfb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/xfb;

    move-result-object v3

    .line 307
    .local v3, "layer":Lc8/xfb;
    invoke-virtual {v3}, Lc8/xfb;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Image:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v5, v6, :cond_2

    .line 308
    add-int/lit8 v1, v1, 0x1

    .line 310
    :cond_2
    invoke-static {p1}, Lc8/kcb;->access$100(Lc8/kcb;)Ljava/util/List;

    move-result-object v5

    invoke-static {p1}, Lc8/kcb;->access$200(Lc8/kcb;)Landroid/support/v4/util/LongSparseArray;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lc8/jcb;->addLayer(Ljava/util/List;Landroid/support/v4/util/LongSparseArray;Lc8/xfb;)V

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 313
    .end local v3    # "layer":Lc8/xfb;
    :cond_3
    const/4 v5, 0x4

    if-le v1, v5, :cond_0

    .line 314
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "You have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lc8/kcb;->addWarning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parsePrecomps(Lorg/json/JSONArray;Lc8/kcb;)V
    .locals 12
    .param p0, "assetsJson"    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 322
    if-nez p0, :cond_1

    .line 342
    :cond_0
    return-void

    .line 325
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 326
    .local v8, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 327
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 328
    .local v0, "assetJson":Lorg/json/JSONObject;
    const-string/jumbo v9, "layers"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 329
    .local v7, "layersJson":Lorg/json/JSONArray;
    if-eqz v7, :cond_3

    .line 332
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 333
    .local v6, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    new-instance v5, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v5}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 334
    .local v5, "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 335
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9, p1}, Lc8/wfb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/xfb;

    move-result-object v4

    .line 336
    .local v4, "layer":Lc8/xfb;
    invoke-virtual {v4}, Lc8/xfb;->getId()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 337
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 339
    .end local v4    # "layer":Lc8/xfb;
    :cond_2
    const-string/jumbo v9, "id"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "id":Ljava/lang/String;
    invoke-static {p1}, Lc8/kcb;->access$300(Lc8/kcb;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v5    # "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .end local v6    # "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
