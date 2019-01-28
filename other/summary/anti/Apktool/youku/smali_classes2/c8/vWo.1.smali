.class public Lc8/vWo;
.super Ljava/lang/Object;
.source "WXParallaxExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/wWo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransformCreator"
.end annotation


# instance fields
.field fromOpacity:F

.field fromRotate:F

.field fromScaleX:F

.field fromScaleY:F

.field fromScrollX:F

.field fromScrollY:F

.field fromTranslateX:F

.field fromTranslateY:F

.field input:[F

.field mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field output:[F

.field final synthetic this$0:Lc8/wWo;

.field transformType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/wWo;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 10
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "object"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 257
    iput-object p1, p0, Lc8/vWo;->this$0:Lc8/wWo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p2, p0, Lc8/vWo;->transformType:Ljava/lang/String;

    .line 259
    const-string/jumbo v5, "in"

    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 260
    .local v1, "in":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    .line 261
    .local v4, "size":I
    new-array v5, v4, [F

    iput-object v5, p0, Lc8/vWo;->input:[F

    .line 262
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 263
    iget-object v5, p0, Lc8/vWo;->input:[F

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getFloatValue(I)F

    move-result v8

    invoke-virtual {p1}, Lc8/wWo;->getInstance()Lc8/nVf;

    move-result-object v9

    invoke-virtual {v9}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v8

    aput v8, v5, v2

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    :cond_0
    const-string/jumbo v5, "out"

    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 266
    .local v3, "out":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p0, v3}, Lc8/vWo;->parseParamArray(Lcom/alibaba/fastjson/JSONArray;)[F

    move-result-object v5

    iput-object v5, p0, Lc8/vWo;->output:[F

    .line 268
    iget-object v8, p0, Lc8/vWo;->transformType:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 294
    :goto_2
    return-void

    .line 268
    :sswitch_0
    const-string/jumbo v9, "translate"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v5, v6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v9, "scale"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v5, v7

    goto :goto_1

    :sswitch_2
    const-string/jumbo v9, "rotate"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v9, "opacity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v9, "scroll"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v5, 0x4

    goto :goto_1

    .line 270
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v5, p0, Lc8/vWo;->output:[F

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 271
    iget-object v5, p0, Lc8/vWo;->output:[F

    iget-object v8, p0, Lc8/vWo;->output:[F

    aget v8, v8, v0

    invoke-virtual {p1}, Lc8/wWo;->getInstance()Lc8/nVf;

    move-result-object v9

    invoke-virtual {v9}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v8

    aput v8, v5, v0

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 273
    :cond_2
    iget-object v5, p0, Lc8/vWo;->output:[F

    aget v5, v5, v6

    iput v5, p0, Lc8/vWo;->fromTranslateX:F

    .line 274
    iget-object v5, p0, Lc8/vWo;->output:[F

    aget v5, v5, v7

    iput v5, p0, Lc8/vWo;->fromTranslateY:F

    goto :goto_2

    .line 277
    .end local v0    # "i":I
    :pswitch_1
    iget-object v5, p0, Lc8/vWo;->output:[F

    aget v5, v5, v6

    iput v5, p0, Lc8/vWo;->fromScaleX:F

    .line 278
    iget-object v5, p0, Lc8/vWo;->output:[F

    aget v5, v5, v7

    iput v5, p0, Lc8/vWo;->fromScaleY:F

    goto :goto_2

    .line 281
    :pswitch_2
    iget-object v5, p0, Lc8/vWo;->output:[F

    aget v5, v5, v6

    iput v5, p0, Lc8/vWo;->fromRotate:F

    goto/16 :goto_2

    .line 284
    :pswitch_3
    iget-object v5, p0, Lc8/vWo;->output:[F

    aget v5, v5, v6

    iput v5, p0, Lc8/vWo;->fromOpacity:F

    goto/16 :goto_2

    .line 287
    :pswitch_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v5, p0, Lc8/vWo;->output:[F

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 288
    iget-object v5, p0, Lc8/vWo;->output:[F

    iget-object v8, p0, Lc8/vWo;->output:[F

    aget v8, v8, v0

    invoke-virtual {p1}, Lc8/wWo;->getInstance()Lc8/nVf;

    move-result-object v9

    invoke-virtual {v9}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v8

    aput v8, v5, v0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 290
    :cond_3
    iget-object v5, p0, Lc8/vWo;->output:[F

    aget v5, v5, v6

    iput v5, p0, Lc8/vWo;->fromScrollX:F

    .line 291
    iget-object v5, p0, Lc8/vWo;->output:[F

    aget v5, v5, v7

    iput v5, p0, Lc8/vWo;->fromScrollY:F

    goto/16 :goto_2

    .line 268
    :sswitch_data_0
    .sparse-switch
        -0x4b8807f5 -> :sswitch_3
        -0x372522a5 -> :sswitch_2
        -0x361a1933 -> :sswitch_4
        0x683094a -> :sswitch_1
        0x3ec0f14e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method animate(FF)V
    .locals 22
    .param p1, "XDelta"    # F
    .param p2, "YDelta"    # F

    .prologue
    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->this$0:Lc8/wWo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lc8/wWo;->getOffset()F

    move-result v7

    .line 308
    .local v7, "offset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    cmpl-float v17, v7, v17

    if-lez v17, :cond_0

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v7, v17, v18

    .line 311
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    cmpg-float v17, v7, v17

    if-gez v17, :cond_1

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v7, v17, v18

    .line 318
    :cond_1
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 319
    const-string/jumbo v17, "WXParallax"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "type:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->transformType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " XDelta:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " YDelta:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->transformType:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v17, -0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    :cond_3
    :goto_0
    packed-switch v17, :pswitch_data_0

    .line 430
    :cond_4
    :goto_1
    return-void

    .line 321
    :sswitch_0
    const-string/jumbo v19, "translate"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v17, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v19, "scale"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v17, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v19, "rotate"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v17, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v19, "opacity"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v17, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v19, "scroll"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v17, 0x4

    goto :goto_0

    .line 324
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    sub-float v19, v7, v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v19, v19, v20

    div-float v18, v18, v19

    add-float v15, v17, v18

    .line 325
    .local v15, "toTranslateX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    sub-float v19, v7, v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v19, v19, v20

    div-float v18, v18, v19

    add-float v16, v17, v18

    .line 327
    .local v16, "toTranslateY":F
    move-object/from16 v0, p0

    iget v0, v0, Lc8/vWo;->fromTranslateX:F

    move/from16 v17, v0

    cmpl-float v17, v17, v15

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lc8/vWo;->fromTranslateY:F

    move/from16 v17, v0

    cmpl-float v17, v17, v16

    if-eqz v17, :cond_4

    .line 328
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->this$0:Lc8/wWo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lc8/wWo;->getHostView()Landroid/view/View;

    move-result-object v17

    check-cast v17, Lc8/qeg;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lc8/qeg;->setTranslationX(F)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->this$0:Lc8/wWo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lc8/wWo;->getHostView()Landroid/view/View;

    move-result-object v17

    check-cast v17, Lc8/qeg;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lc8/qeg;->setTranslationY(F)V

    .line 331
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 332
    const-string/jumbo v17, "WXParallax"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "XDelta:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " YDelta:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string/jumbo v17, "WXParallax"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " fromTranslateX:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lc8/vWo;->fromTranslateX:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " toTranslateX:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " fromTranslateY:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lc8/vWo;->fromTranslateY:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " toTranslateY:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_6
    move-object/from16 v0, p0

    iput v15, v0, Lc8/vWo;->fromTranslateX:F

    .line 339
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lc8/vWo;->fromTranslateY:F

    goto/16 :goto_1

    .line 343
    .end local v15    # "toTranslateX":F
    .end local v16    # "toTranslateY":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    sub-float v19, v7, v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v19, v19, v20

    div-float v18, v18, v19

    add-float v11, v17, v18

    .line 344
    .local v11, "toScaleX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    sub-float v19, v7, v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v19, v19, v20

    div-float v18, v18, v19

    add-float v12, v17, v18

    .line 346
    .local v12, "toScaleY":F
    move-object/from16 v0, p0

    iget v0, v0, Lc8/vWo;->fromScaleX:F

    move/from16 v17, v0

    cmpl-float v17, v17, v11

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lc8/vWo;->fromScaleY:F

    move/from16 v17, v0

    cmpl-float v17, v17, v12

    if-eqz v17, :cond_4

    .line 347
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->this$0:Lc8/wWo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lc8/wWo;->getHostView()Landroid/view/View;

    move-result-object v17

    check-cast v17, Lc8/qeg;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lc8/qeg;->setScaleX(F)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->this$0:Lc8/wWo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lc8/wWo;->getHostView()Landroid/view/View;

    move-result-object v17

    check-cast v17, Lc8/qeg;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lc8/qeg;->setScaleY(F)V

    .line 350
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 351
    const-string/jumbo v17, "WXParallax"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " fromScaleX:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lc8/vWo;->fromScaleX:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " toScaleX:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " fromScaleY:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lc8/vWo;->fromScaleY:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " toScaleY:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_8
    move-object/from16 v0, p0

    iput v11, v0, Lc8/vWo;->fromScaleX:F

    .line 357
    move-object/from16 v0, p0

    iput v12, v0, Lc8/vWo;->fromScaleY:F

    goto/16 :goto_1

    .line 362
    .end local v11    # "toScaleX":F
    .end local v12    # "toScaleY":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    sub-float v19, v7, v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v19, v19, v20

    div-float v18, v18, v19

    add-float v10, v17, v18

    .line 363
    .local v10, "toRotate":F
    move-object/from16 v0, p0

    iget v0, v0, Lc8/vWo;->fromRotate:F

    move/from16 v17, v0

    cmpl-float v17, v17, v10

    if-eqz v17, :cond_4

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->this$0:Lc8/wWo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lc8/wWo;->getHostView()Landroid/view/View;

    move-result-object v17

    check-cast v17, Lc8/qeg;

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lc8/qeg;->setRotation(F)V

    .line 365
    move-object/from16 v0, p0

    iput v10, v0, Lc8/vWo;->fromRotate:F

    goto/16 :goto_1

    .line 370
    .end local v10    # "toRotate":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    sub-float v19, v7, v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v19, v19, v20

    div-float v18, v18, v19

    add-float v9, v17, v18

    .line 371
    .local v9, "toOpacity":F
    move-object/from16 v0, p0

    iget v0, v0, Lc8/vWo;->fromOpacity:F

    move/from16 v17, v0

    cmpl-float v17, v17, v9

    if-eqz v17, :cond_4

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->this$0:Lc8/wWo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lc8/wWo;->setOpacity(F)V

    .line 374
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 375
    const-string/jumbo v17, "WXParallax"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "opacity fromOpacity:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lc8/vWo;->fromOpacity:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " toOpacity:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_9
    move-object/from16 v0, p0

    iput v9, v0, Lc8/vWo;->fromOpacity:F

    goto/16 :goto_1

    .line 384
    .end local v9    # "toOpacity":F
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    sub-float v19, v7, v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v19, v19, v20

    div-float v18, v18, v19

    add-float v13, v17, v18

    .line 385
    .local v13, "toScrollX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->output:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    sub-float v19, v7, v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->input:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v19, v19, v20

    div-float v18, v18, v19

    add-float v14, v17, v18

    .line 387
    .local v14, "toScrollY":F
    move-object/from16 v0, p0

    iget v0, v0, Lc8/vWo;->fromScrollX:F

    move/from16 v17, v0

    cmpl-float v17, v17, v13

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lc8/vWo;->fromScrollY:F

    move/from16 v17, v0

    cmpl-float v17, v17, v14

    if-eqz v17, :cond_4

    .line 388
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->this$0:Lc8/wWo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lc8/wWo;->getChildCount()I

    move-result v8

    .line 389
    .local v8, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v8, :cond_d

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->this$0:Lc8/wWo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lc8/wWo;->getChild(I)Lc8/tbg;

    move-result-object v4

    .line 391
    .local v4, "component":Lc8/tbg;
    instance-of v0, v4, Lc8/ebg;

    move/from16 v17, v0

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->this$0:Lc8/wWo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lc8/wWo;->mBindingRef:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->this$0:Lc8/wWo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lc8/wWo;->mBindingRef:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 393
    invoke-virtual {v4}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 395
    const/4 v2, 0x0

    .line 396
    .local v2, "child":Lc8/tbg;
    instance-of v0, v4, Lc8/scg;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v17, v4

    .line 397
    check-cast v17, Lc8/scg;

    invoke-virtual/range {v17 .. v17}, Lc8/scg;->getChildCount()I

    move-result v3

    .line 398
    .local v3, "childCount":I
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_3
    if-ge v6, v3, :cond_b

    move-object/from16 v17, v4

    .line 399
    check-cast v17, Lc8/scg;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v2

    .line 400
    instance-of v0, v2, Lc8/jdg;

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 398
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 406
    .end local v3    # "childCount":I
    .end local v6    # "n":I
    :cond_b
    if-eqz v2, :cond_d

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->mMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_c

    .line 408
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/vWo;->mMap:Ljava/util/HashMap;

    .line 410
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->mMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string/jumbo v18, "animated"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->mMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string/jumbo v18, "offset"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->this$0:Lc8/wWo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/wWo;->getInstance()Lc8/nVf;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v14, v0}, Lc8/Jgg;->getWeexPxByReal(FI)F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    check-cast v4, Lc8/ebg;

    .end local v4    # "component":Lc8/tbg;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/vWo;->mMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v4, v2, v0}, Lc8/ebg;->scrollTo(Lc8/tbg;Ljava/util/Map;)V

    .line 417
    .end local v2    # "child":Lc8/tbg;
    :cond_d
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 418
    const-string/jumbo v17, "WXParallax"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "XDelta:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " YDelta:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string/jumbo v17, "WXParallax"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " fromScrollX:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lc8/vWo;->fromScrollX:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " toScrollX:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " fromTranslateY:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lc8/vWo;->fromScrollY:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " toScrollY:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_e
    move-object/from16 v0, p0

    iput v13, v0, Lc8/vWo;->fromScrollX:F

    .line 425
    move-object/from16 v0, p0

    iput v14, v0, Lc8/vWo;->fromScrollY:F

    goto/16 :goto_1

    .line 389
    .restart local v4    # "component":Lc8/tbg;
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 321
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b8807f5 -> :sswitch_3
        -0x372522a5 -> :sswitch_2
        -0x361a1933 -> :sswitch_4
        0x683094a -> :sswitch_1
        0x3ec0f14e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method parseParamArray(Lcom/alibaba/fastjson/JSONArray;)[F
    .locals 4
    .param p1, "in"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    .line 298
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    .line 299
    .local v2, "size":I
    new-array v1, v2, [F

    .line 300
    .local v1, "param":[F
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 301
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getFloatValue(I)F

    move-result v3

    aput v3, v1, v0

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_0
    return-object v1
.end method
