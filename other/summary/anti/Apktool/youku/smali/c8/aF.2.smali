.class public Lc8/aF;
.super Ljava/lang/Object;
.source "WVLocation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bF;->wrapResult(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bF;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lc8/bF;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lc8/aF;->this$0:Lc8/bF;

    iput-object p2, p0, Lc8/aF;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 207
    new-instance v9, Lc8/kE;

    invoke-direct {v9}, Lc8/kE;-><init>()V

    .line 209
    .local v9, "result":Lc8/kE;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 210
    .local v5, "coords":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/aF;->val$location:Landroid/location/Location;

    invoke-virtual {v15}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    .line 211
    .local v12, "longitude":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/aF;->val$location:Landroid/location/Location;

    invoke-virtual {v15}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    .line 213
    .local v10, "latitude":D
    :try_start_0
    const-string/jumbo v15, "longitude"

    invoke-virtual {v5, v15, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 214
    const-string/jumbo v15, "latitude"

    invoke-virtual {v5, v15, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 215
    const-string/jumbo v15, "altitude"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/aF;->val$location:Landroid/location/Location;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getAltitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v5, v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 216
    const-string/jumbo v15, "accuracy"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/aF;->val$location:Landroid/location/Location;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getAccuracy()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 217
    const-string/jumbo v15, "heading"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/aF;->val$location:Landroid/location/Location;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getBearing()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 218
    const-string/jumbo v15, "speed"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/aF;->val$location:Landroid/location/Location;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getSpeed()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    const-string/jumbo v15, "coords"

    invoke-virtual {v9, v15, v5}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 223
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 224
    const-string/jumbo v15, "WVLocation"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " getLocation success. latitude: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "; longitude: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/aF;->this$0:Lc8/bF;

    invoke-static {v15}, Lc8/bF;->access$100(Lc8/bF;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 228
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/aF;->this$0:Lc8/bF;

    invoke-static {v15, v10, v11, v12, v13}, Lc8/bF;->access$200(Lc8/bF;DD)Landroid/location/Address;

    move-result-object v2

    .line 229
    .local v2, "addr":Landroid/location/Address;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 230
    .local v3, "address":Lorg/json/JSONObject;
    if-eqz v2, :cond_6

    .line 232
    :try_start_1
    const-string/jumbo v15, "country"

    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string/jumbo v15, "province"

    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string/jumbo v15, "city"

    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string/jumbo v15, "cityCode"

    invoke-virtual {v2}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string/jumbo v15, "area"

    invoke-virtual {v2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    const-string/jumbo v15, "road"

    invoke-virtual {v2}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1
    const/4 v15, 0x2

    if-gt v7, v15, :cond_2

    .line 241
    invoke-virtual {v2, v7}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 242
    invoke-virtual {v2, v7}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 240
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 219
    .end local v2    # "addr":Landroid/location/Address;
    .end local v3    # "address":Lorg/json/JSONObject;
    .end local v7    # "i":I
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    .line 220
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 245
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v2    # "addr":Landroid/location/Address;
    .restart local v3    # "address":Lorg/json/JSONObject;
    .restart local v7    # "i":I
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_2
    const-string/jumbo v15, "addressLine"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 247
    const-string/jumbo v15, "WVLocation"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " getAddress success. "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 257
    .end local v7    # "i":I
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_2
    const-string/jumbo v15, "address"

    invoke-virtual {v9, v15, v3}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 260
    .end local v2    # "addr":Landroid/location/Address;
    .end local v3    # "address":Lorg/json/JSONObject;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/aF;->this$0:Lc8/bF;

    invoke-static {v15}, Lc8/bF;->access$300(Lc8/bF;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 261
    .local v4, "callBackContext":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    invoke-virtual {v4, v9}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 269
    .end local v4    # "callBackContext":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .end local v8    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v15

    :cond_5
    :goto_4
    return-void

    .line 249
    .restart local v2    # "addr":Landroid/location/Address;
    .restart local v3    # "address":Lorg/json/JSONObject;
    :catch_2
    move-exception v6

    .line 250
    .restart local v6    # "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 253
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_6
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 254
    const-string/jumbo v15, "WVLocation"

    const-string/jumbo v16, " getAddress fail. "

    invoke-static/range {v15 .. v16}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 263
    .end local v2    # "addr":Landroid/location/Address;
    .end local v3    # "address":Lorg/json/JSONObject;
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/aF;->this$0:Lc8/bF;

    invoke-static {v15}, Lc8/bF;->access$300(Lc8/bF;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 264
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 265
    const-string/jumbo v15, "WVLocation"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "callback success. retString: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Lc8/kE;->toJsonString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4
.end method
