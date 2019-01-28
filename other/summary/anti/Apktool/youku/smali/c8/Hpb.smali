.class public Lc8/Hpb;
.super Ljava/lang/Object;
.source "WXParallax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ipb;
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

.field fromTranslateX:F

.field fromTranslateY:F

.field input:[F

.field output:[F

.field final synthetic this$0:Lc8/Ipb;

.field transformType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Ipb;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 10
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "object"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 209
    iput-object p1, p0, Lc8/Hpb;->this$0:Lc8/Ipb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Lc8/Hpb;->transformType:Ljava/lang/String;

    .line 211
    const-string/jumbo v5, "in"

    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 212
    .local v1, "in":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    .line 213
    .local v4, "size":I
    new-array v5, v4, [F

    iput-object v5, p0, Lc8/Hpb;->input:[F

    .line 214
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 215
    iget-object v5, p0, Lc8/Hpb;->input:[F

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getFloatValue(I)F

    move-result v8

    invoke-virtual {p1}, Lc8/Ipb;->getInstance()Lc8/nVf;

    move-result-object v9

    invoke-virtual {v9}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v8

    aput v8, v5, v2

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_0
    const-string/jumbo v5, "out"

    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 218
    .local v3, "out":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p0, v3}, Lc8/Hpb;->parseParamArray(Lcom/alibaba/fastjson/JSONArray;)[F

    move-result-object v5

    iput-object v5, p0, Lc8/Hpb;->output:[F

    .line 220
    iget-object v8, p0, Lc8/Hpb;->transformType:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 239
    :goto_2
    return-void

    .line 220
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

    .line 222
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v5, p0, Lc8/Hpb;->output:[F

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 223
    iget-object v5, p0, Lc8/Hpb;->output:[F

    iget-object v8, p0, Lc8/Hpb;->output:[F

    aget v8, v8, v0

    invoke-virtual {p1}, Lc8/Ipb;->getInstance()Lc8/nVf;

    move-result-object v9

    invoke-virtual {v9}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v8

    aput v8, v5, v0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 225
    :cond_2
    iget-object v5, p0, Lc8/Hpb;->output:[F

    aget v5, v5, v6

    iput v5, p0, Lc8/Hpb;->fromTranslateX:F

    .line 226
    iget-object v5, p0, Lc8/Hpb;->output:[F

    aget v5, v5, v7

    iput v5, p0, Lc8/Hpb;->fromTranslateY:F

    goto :goto_2

    .line 229
    .end local v0    # "i":I
    :pswitch_1
    iget-object v5, p0, Lc8/Hpb;->output:[F

    aget v5, v5, v6

    iput v5, p0, Lc8/Hpb;->fromScaleX:F

    .line 230
    iget-object v5, p0, Lc8/Hpb;->output:[F

    aget v5, v5, v7

    iput v5, p0, Lc8/Hpb;->fromScaleY:F

    goto :goto_2

    .line 233
    :pswitch_2
    iget-object v5, p0, Lc8/Hpb;->output:[F

    aget v5, v5, v6

    iput v5, p0, Lc8/Hpb;->fromRotate:F

    goto :goto_2

    .line 236
    :pswitch_3
    iget-object v5, p0, Lc8/Hpb;->output:[F

    aget v5, v5, v6

    iput v5, p0, Lc8/Hpb;->fromOpacity:F

    goto/16 :goto_2

    .line 220
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b8807f5 -> :sswitch_3
        -0x372522a5 -> :sswitch_2
        0x683094a -> :sswitch_1
        0x3ec0f14e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method animate(FF)V
    .locals 12
    .param p1, "XDelta"    # F
    .param p2, "YDelta"    # F

    .prologue
    .line 254
    iget-object v7, p0, Lc8/Hpb;->this$0:Lc8/Ipb;

    invoke-static {v7}, Lc8/Ipb;->access$100(Lc8/Ipb;)F

    move-result v0

    .line 255
    .local v0, "offset":F
    iget-object v7, p0, Lc8/Hpb;->input:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    cmpl-float v7, v0, v7

    if-lez v7, :cond_0

    .line 256
    iget-object v7, p0, Lc8/Hpb;->input:[F

    const/4 v8, 0x1

    aget v0, v7, v8

    .line 258
    :cond_0
    iget-object v7, p0, Lc8/Hpb;->input:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    cmpg-float v7, v0, v7

    if-gez v7, :cond_1

    .line 259
    iget-object v7, p0, Lc8/Hpb;->input:[F

    const/4 v8, 0x0

    aget v0, v7, v8

    .line 264
    :cond_1
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 265
    const-string/jumbo v7, "WXParallax"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lc8/Hpb;->transformType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " XDelta:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " YDelta:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_2
    iget-object v8, p0, Lc8/Hpb;->transformType:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_3
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 330
    :cond_4
    :goto_1
    return-void

    .line 267
    :sswitch_0
    const-string/jumbo v9, "translate"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v7, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v9, "scale"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v9, "rotate"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v7, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v9, "opacity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v7, 0x3

    goto :goto_0

    .line 270
    :pswitch_0
    iget-object v7, p0, Lc8/Hpb;->output:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lc8/Hpb;->output:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    iget-object v9, p0, Lc8/Hpb;->output:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float/2addr v8, v9

    iget-object v9, p0, Lc8/Hpb;->input:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float v9, v0, v9

    mul-float/2addr v8, v9

    iget-object v9, p0, Lc8/Hpb;->input:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lc8/Hpb;->input:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    add-float v5, v7, v8

    .line 271
    .local v5, "toTranslateX":F
    iget-object v7, p0, Lc8/Hpb;->output:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lc8/Hpb;->output:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    iget-object v9, p0, Lc8/Hpb;->output:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    iget-object v9, p0, Lc8/Hpb;->input:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float v9, v0, v9

    mul-float/2addr v8, v9

    iget-object v9, p0, Lc8/Hpb;->input:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lc8/Hpb;->input:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    add-float v6, v7, v8

    .line 273
    .local v6, "toTranslateY":F
    iget v7, p0, Lc8/Hpb;->fromTranslateX:F

    cmpl-float v7, v7, v5

    if-nez v7, :cond_5

    iget v7, p0, Lc8/Hpb;->fromTranslateY:F

    cmpl-float v7, v7, v6

    if-eqz v7, :cond_4

    .line 274
    :cond_5
    iget-object v7, p0, Lc8/Hpb;->this$0:Lc8/Ipb;

    invoke-virtual {v7}, Lc8/Ipb;->getHostView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lc8/qeg;

    invoke-virtual {v7, v5}, Lc8/qeg;->setTranslationX(F)V

    .line 275
    iget-object v7, p0, Lc8/Hpb;->this$0:Lc8/Ipb;

    invoke-virtual {v7}, Lc8/Ipb;->getHostView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lc8/qeg;

    invoke-virtual {v7, v6}, Lc8/qeg;->setTranslationY(F)V

    .line 277
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 278
    const-string/jumbo v7, "WXParallax"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "XDelta:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " YDelta:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v7, "WXParallax"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " fromTranslateX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lc8/Hpb;->fromTranslateX:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " toTranslateX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " fromTranslateY:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lc8/Hpb;->fromTranslateY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " toTranslateY:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_6
    iput v5, p0, Lc8/Hpb;->fromTranslateX:F

    .line 285
    iput v6, p0, Lc8/Hpb;->fromTranslateY:F

    goto/16 :goto_1

    .line 289
    .end local v5    # "toTranslateX":F
    .end local v6    # "toTranslateY":F
    :pswitch_1
    iget-object v7, p0, Lc8/Hpb;->output:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lc8/Hpb;->output:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    iget-object v9, p0, Lc8/Hpb;->output:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float/2addr v8, v9

    iget-object v9, p0, Lc8/Hpb;->input:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float v9, v0, v9

    mul-float/2addr v8, v9

    iget-object v9, p0, Lc8/Hpb;->input:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lc8/Hpb;->input:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    add-float v3, v7, v8

    .line 290
    .local v3, "toScaleX":F
    iget-object v7, p0, Lc8/Hpb;->output:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lc8/Hpb;->output:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    iget-object v9, p0, Lc8/Hpb;->output:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    iget-object v9, p0, Lc8/Hpb;->input:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float v9, v0, v9

    mul-float/2addr v8, v9

    iget-object v9, p0, Lc8/Hpb;->input:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lc8/Hpb;->input:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    add-float v4, v7, v8

    .line 292
    .local v4, "toScaleY":F
    iget v7, p0, Lc8/Hpb;->fromScaleX:F

    cmpl-float v7, v7, v3

    if-nez v7, :cond_7

    iget v7, p0, Lc8/Hpb;->fromScaleY:F

    cmpl-float v7, v7, v4

    if-eqz v7, :cond_4

    .line 293
    :cond_7
    iget-object v7, p0, Lc8/Hpb;->this$0:Lc8/Ipb;

    invoke-virtual {v7}, Lc8/Ipb;->getHostView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lc8/qeg;

    invoke-virtual {v7, v3}, Lc8/qeg;->setScaleX(F)V

    .line 294
    iget-object v7, p0, Lc8/Hpb;->this$0:Lc8/Ipb;

    invoke-virtual {v7}, Lc8/Ipb;->getHostView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lc8/qeg;

    invoke-virtual {v7, v4}, Lc8/qeg;->setScaleY(F)V

    .line 296
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 297
    const-string/jumbo v7, "WXParallax"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " fromScaleX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lc8/Hpb;->fromScaleX:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " toScaleX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " fromScaleY:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lc8/Hpb;->fromScaleY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " toScaleY:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_8
    iput v3, p0, Lc8/Hpb;->fromScaleX:F

    .line 303
    iput v4, p0, Lc8/Hpb;->fromScaleY:F

    goto/16 :goto_1

    .line 308
    .end local v3    # "toScaleX":F
    .end local v4    # "toScaleY":F
    :pswitch_2
    iget-object v7, p0, Lc8/Hpb;->output:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lc8/Hpb;->output:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lc8/Hpb;->output:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float/2addr v8, v9

    iget-object v9, p0, Lc8/Hpb;->input:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float v9, v0, v9

    mul-float/2addr v8, v9

    iget-object v9, p0, Lc8/Hpb;->input:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lc8/Hpb;->input:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    add-float v2, v7, v8

    .line 309
    .local v2, "toRotate":F
    iget v7, p0, Lc8/Hpb;->fromRotate:F

    cmpl-float v7, v7, v2

    if-eqz v7, :cond_4

    .line 310
    iget-object v7, p0, Lc8/Hpb;->this$0:Lc8/Ipb;

    invoke-virtual {v7}, Lc8/Ipb;->getHostView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lc8/qeg;

    invoke-virtual {v7, v2}, Lc8/qeg;->setRotation(F)V

    .line 311
    iput v2, p0, Lc8/Hpb;->fromRotate:F

    goto/16 :goto_1

    .line 316
    .end local v2    # "toRotate":F
    :pswitch_3
    iget-object v7, p0, Lc8/Hpb;->output:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lc8/Hpb;->output:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lc8/Hpb;->output:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float/2addr v8, v9

    iget-object v9, p0, Lc8/Hpb;->input:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float v9, v0, v9

    mul-float/2addr v8, v9

    iget-object v9, p0, Lc8/Hpb;->input:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lc8/Hpb;->input:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    add-float v1, v7, v8

    .line 317
    .local v1, "toOpacity":F
    iget v7, p0, Lc8/Hpb;->fromOpacity:F

    cmpl-float v7, v7, v1

    if-eqz v7, :cond_4

    .line 318
    iget-object v7, p0, Lc8/Hpb;->this$0:Lc8/Ipb;

    invoke-virtual {v7, v1}, Lc8/Ipb;->setOpacity(F)V

    .line 320
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 321
    const-string/jumbo v7, "WXParallax"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "opacity fromOpacity:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lc8/Hpb;->fromOpacity:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " toOpacity:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_9
    iput v1, p0, Lc8/Hpb;->fromOpacity:F

    goto/16 :goto_1

    .line 267
    :sswitch_data_0
    .sparse-switch
        -0x4b8807f5 -> :sswitch_3
        -0x372522a5 -> :sswitch_2
        0x683094a -> :sswitch_1
        0x3ec0f14e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method parseParamArray(Lcom/alibaba/fastjson/JSONArray;)[F
    .locals 4
    .param p1, "in"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    .line 243
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    .line 244
    .local v2, "size":I
    new-array v1, v2, [F

    .line 245
    .local v1, "param":[F
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 246
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getFloatValue(I)F

    move-result v3

    aput v3, v1, v0

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    return-object v1
.end method
