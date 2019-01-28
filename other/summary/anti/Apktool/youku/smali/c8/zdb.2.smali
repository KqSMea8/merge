.class public final Lc8/zdb;
.super Ljava/lang/Object;
.source "DocumentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Adb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;)Lc8/Adb;
    .locals 24
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 55
    const-string/jumbo v4, "t"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "text":Ljava/lang/String;
    const-string/jumbo v4, "f"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "fontName":Ljava/lang/String;
    const-string/jumbo v4, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 58
    .local v7, "size":I
    const-string/jumbo v4, "j"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 59
    .local v8, "justification":I
    const-string/jumbo v4, "tr"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 60
    .local v9, "tracking":I
    const-string/jumbo v4, "lh"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 61
    .local v10, "lineHeight":D
    const-string/jumbo v4, "fc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 62
    .local v16, "colorArray":Lorg/json/JSONArray;
    const/16 v4, 0xff

    const/16 v18, 0x0

    .line 64
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v18

    const-wide v20, 0x406fe00000000000L    # 255.0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    .line 65
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v20

    const-wide v22, 0x406fe00000000000L    # 255.0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    .line 66
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v20

    const-wide v22, 0x406fe00000000000L    # 255.0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    .line 62
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v4, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    .line 67
    .local v12, "color":I
    const-string/jumbo v4, "sc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 68
    .local v17, "strokeArray":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .line 69
    .local v13, "strokeColor":I
    if-eqz v17, :cond_0

    .line 70
    const/16 v4, 0xff

    const/16 v18, 0x0

    .line 72
    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v18

    const-wide v20, 0x406fe00000000000L    # 255.0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    .line 73
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v20

    const-wide v22, 0x406fe00000000000L    # 255.0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    .line 74
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v20

    const-wide v22, 0x406fe00000000000L    # 255.0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    .line 70
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v4, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    .line 77
    :cond_0
    const-string/jumbo v4, "sw"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    .line 78
    .local v14, "strokeWidth":I
    const-string/jumbo v4, "of"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 80
    .local v15, "strokeOverFill":Z
    new-instance v4, Lc8/Adb;

    invoke-direct/range {v4 .. v15}, Lc8/Adb;-><init>(Ljava/lang/String;Ljava/lang/String;IIIDIIIZ)V

    return-object v4
.end method
