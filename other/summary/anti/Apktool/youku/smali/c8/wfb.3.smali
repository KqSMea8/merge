.class public Lc8/wfb;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xfb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    return-void
.end method

.method public static newInstance(Lc8/kcb;)Lc8/xfb;
    .locals 26
    .param p0, "composition"    # Lc8/kcb;

    .prologue
    .line 223
    invoke-virtual/range {p0 .. p0}, Lc8/kcb;->getBounds()Landroid/graphics/Rect;

    move-result-object v25

    .line 224
    .local v25, "bounds":Landroid/graphics/Rect;
    new-instance v0, Lc8/xfb;

    .line 225
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v3, "root"

    const-wide/16 v4, -0x1

    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PreComp:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    .line 226
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 227
    invoke-static {}, Lc8/seb;->newInstance()Lc8/teb;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 228
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    sget-object v22, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->None:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v24}, Lc8/xfb;-><init>(Ljava/util/List;Lc8/kcb;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lc8/teb;IIIFFIILc8/oeb;Lc8/qeb;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lc8/Rdb;Lc8/vfb;)V

    .line 224
    return-object v0
.end method

.method public static newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/xfb;
    .locals 49
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 233
    const-string/jumbo v5, "nm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 234
    .local v37, "layerName":Ljava/lang/String;
    const-string/jumbo v5, "refId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 236
    .local v15, "refId":Ljava/lang/String;
    const-string/jumbo v5, ".ai"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "cl"

    const-string/jumbo v6, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ai"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 237
    :cond_0
    const-string/jumbo v5, "Convert your Illustrator layers to shape layers."

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lc8/kcb;->addWarning(Ljava/lang/String;)V

    .line 240
    :cond_1
    const-string/jumbo v5, "ind"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v38

    .line 241
    .local v38, "layerId":J
    const/16 v18, 0x0

    .line 242
    .local v18, "solidWidth":I
    const/16 v19, 0x0

    .line 243
    .local v19, "solidHeight":I
    const/16 v20, 0x0

    .line 244
    .local v20, "solidColor":I
    const/16 v23, 0x0

    .line 245
    .local v23, "preCompWidth":I
    const/16 v24, 0x0

    .line 247
    .local v24, "preCompHeight":I
    const-string/jumbo v5, "ty"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v40

    .line 248
    .local v40, "layerTypeInt":I
    sget-object v5, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->ordinal()I

    move-result v5

    move/from16 v0, v40

    if-ge v0, v5, :cond_4

    .line 249
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v5

    aget-object v12, v5, v40

    .line 254
    .local v12, "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    :goto_0
    sget-object v5, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Text:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v12, v5, :cond_2

    const/4 v5, 0x4

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6, v7}, Lc8/Kfb;->isAtLeastVersion(Lc8/kcb;III)Z

    move-result v5

    if-nez v5, :cond_2

    .line 255
    sget-object v12, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 256
    const-string/jumbo v5, "Text is only supported on bodymovin >= 4.8.0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lc8/kcb;->addWarning(Ljava/lang/String;)V

    .line 259
    :cond_2
    const-string/jumbo v5, "parent"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 261
    .local v13, "parentId":J
    sget-object v5, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Solid:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v12, v5, :cond_3

    .line 262
    const-string/jumbo v5, "sw"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lc8/kcb;->getDpScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v18, v0

    .line 263
    const-string/jumbo v5, "sh"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lc8/kcb;->getDpScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v19, v0

    .line 264
    const-string/jumbo v5, "sc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    .line 271
    :cond_3
    const-string/jumbo v5, "ks"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lc8/seb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/teb;

    move-result-object v17

    .line 273
    .local v17, "transform":Lc8/teb;
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v5

    const-string/jumbo v6, "tt"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    aget-object v28, v5, v6

    .line 274
    .local v28, "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v16, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    const-string/jumbo v5, "masksProperties"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v36

    .line 276
    .local v36, "jsonMasks":Lorg/json/JSONArray;
    if-eqz v36, :cond_5

    .line 277
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_1
    invoke-virtual/range {v36 .. v36}, Lorg/json/JSONArray;->length()I

    move-result v5

    move/from16 v0, v34

    if-ge v0, v5, :cond_5

    .line 278
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lc8/Leb;->newMask(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Meb;

    move-result-object v41

    .line 279
    .local v41, "mask":Lc8/Meb;
    move-object/from16 v0, v16

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v34, v34, 0x1

    goto :goto_1

    .line 251
    .end local v12    # "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .end local v13    # "parentId":J
    .end local v16    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v17    # "transform":Lc8/teb;
    .end local v28    # "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .end local v34    # "i":I
    .end local v36    # "jsonMasks":Lorg/json/JSONArray;
    .end local v41    # "mask":Lc8/Meb;
    :cond_4
    sget-object v12, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .restart local v12    # "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    goto/16 :goto_0

    .line 283
    .restart local v13    # "parentId":J
    .restart local v16    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v17    # "transform":Lc8/teb;
    .restart local v28    # "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .restart local v36    # "jsonMasks":Lorg/json/JSONArray;
    :cond_5
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v45, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    const-string/jumbo v5, "shapes"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v46

    .line 285
    .local v46, "shapesJson":Lorg/json/JSONArray;
    if-eqz v46, :cond_7

    .line 286
    const/16 v34, 0x0

    .restart local v34    # "i":I
    :goto_2
    invoke-virtual/range {v46 .. v46}, Lorg/json/JSONArray;->length()I

    move-result v5

    move/from16 v0, v34

    if-ge v0, v5, :cond_7

    .line 287
    move-object/from16 v0, v46

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lc8/ffb;->shapeItemWithJson(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Ceb;

    move-result-object v44

    .line 288
    .local v44, "shape":Lc8/Ceb;
    if-eqz v44, :cond_6

    .line 289
    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_6
    add-int/lit8 v34, v34, 0x1

    goto :goto_2

    .line 294
    .end local v34    # "i":I
    .end local v44    # "shape":Lc8/Ceb;
    :cond_7
    const/16 v25, 0x0

    .line 295
    .local v25, "text":Lc8/oeb;
    const/16 v26, 0x0

    .line 296
    .local v26, "textProperties":Lc8/qeb;
    const-string/jumbo v5, "t"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v48

    .line 297
    .local v48, "textJson":Lorg/json/JSONObject;
    if-eqz v48, :cond_8

    .line 298
    const-string/jumbo v5, "d"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lc8/meb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/oeb;

    move-result-object v25

    .line 299
    const-string/jumbo v5, "a"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v43

    .line 300
    .local v43, "propertiesJson":Lorg/json/JSONObject;
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lc8/peb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/qeb;

    move-result-object v26

    .line 303
    .end local v43    # "propertiesJson":Lorg/json/JSONObject;
    :cond_8
    const-string/jumbo v5, "ef"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 304
    const-string/jumbo v5, "ef"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v32

    .line 305
    .local v32, "effects":Lorg/json/JSONArray;
    invoke-virtual/range {v32 .. v32}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v31, v0

    .line 306
    .local v31, "effectNames":[Ljava/lang/String;
    const/16 v34, 0x0

    .restart local v34    # "i":I
    :goto_3
    invoke-virtual/range {v32 .. v32}, Lorg/json/JSONArray;->length()I

    move-result v5

    move/from16 v0, v34

    if-ge v0, v5, :cond_9

    .line 307
    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "nm"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v31, v34

    .line 306
    add-int/lit8 v34, v34, 0x1

    goto :goto_3

    .line 309
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 311
    invoke-static/range {v31 .. v31}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 309
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lc8/kcb;->addWarning(Ljava/lang/String;)V

    .line 314
    .end local v31    # "effectNames":[Ljava/lang/String;
    .end local v32    # "effects":Lorg/json/JSONArray;
    .end local v34    # "i":I
    :cond_a
    const-string/jumbo v5, "sr"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v21, v0

    .line 315
    .local v21, "timeStretch":F
    const-string/jumbo v5, "st"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v47, v0

    .line 316
    .local v47, "startFrame":F
    invoke-virtual/range {p1 .. p1}, Lc8/kcb;->getDurationFrames()F

    move-result v33

    .line 317
    .local v33, "frames":F
    div-float v22, v47, v33

    .line 319
    .local v22, "startProgress":F
    sget-object v5, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PreComp:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v12, v5, :cond_b

    .line 320
    const-string/jumbo v5, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lc8/kcb;->getDpScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v23, v0

    .line 321
    const-string/jumbo v5, "h"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lc8/kcb;->getDpScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v24, v0

    .line 327
    :cond_b
    const-string/jumbo v5, "ip"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v5, v6

    div-float v35, v5, v21

    .line 328
    .local v35, "inFrame":F
    const-string/jumbo v5, "op"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v5, v6

    div-float v42, v5, v21

    .line 330
    .local v42, "outFrame":F
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v27, "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;>;"
    const/4 v5, 0x0

    cmpl-float v5, v35, v5

    if-lez v5, :cond_c

    .line 333
    new-instance v2, Lc8/Ecb;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lc8/Ecb;-><init>(Lc8/kcb;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 334
    .local v2, "preKeyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;"
    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v2    # "preKeyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;"
    :cond_c
    const/4 v5, 0x0

    cmpl-float v5, v42, v5

    if-lez v5, :cond_e

    .end local v42    # "outFrame":F
    :goto_4
    const/high16 v5, 0x3f800000    # 1.0f

    add-float v42, v42, v5

    .line 339
    .restart local v42    # "outFrame":F
    new-instance v3, Lc8/Ecb;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 340
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    move-object/from16 v4, p1

    move/from16 v8, v35

    invoke-direct/range {v3 .. v9}, Lc8/Ecb;-><init>(Lc8/kcb;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 341
    .local v3, "visibleKeyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;"
    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v4, Lc8/Ecb;

    const/4 v5, 0x0

    .line 344
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    move-object/from16 v5, p1

    move/from16 v9, v42

    invoke-direct/range {v4 .. v10}, Lc8/Ecb;-><init>(Lc8/kcb;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 345
    .local v4, "outKeyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;"
    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    const/16 v29, 0x0

    .line 348
    .local v29, "timeRemapping":Lc8/Rdb;
    const-string/jumbo v5, "tm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 349
    const-string/jumbo v5, "tm"

    .line 350
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lc8/Pdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;Z)Lc8/Rdb;

    move-result-object v29

    .line 353
    :cond_d
    new-instance v6, Lc8/xfb;

    const/16 v30, 0x0

    move-object/from16 v7, v45

    move-object/from16 v8, p1

    move-object/from16 v9, v37

    move-wide/from16 v10, v38

    invoke-direct/range {v6 .. v30}, Lc8/xfb;-><init>(Ljava/util/List;Lc8/kcb;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lc8/teb;IIIFFIILc8/oeb;Lc8/qeb;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lc8/Rdb;Lc8/vfb;)V

    return-object v6

    .line 338
    .end local v3    # "visibleKeyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;"
    .end local v4    # "outKeyframe":Lc8/Ecb;, "Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;"
    .end local v29    # "timeRemapping":Lc8/Rdb;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lc8/kcb;->getEndFrame()J

    move-result-wide v6

    long-to-float v0, v6

    move/from16 v42, v0

    goto :goto_4
.end method
