.class public Lc8/Bqm;
.super Ljava/lang/Object;
.source "FaceUrlParser.java"


# static fields
.field private static final FACE_URL:Ljava/util/regex/Pattern;

.field private static final NUMBER:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "_face_w(\\d+)h(\\d+)_x(\\d+)y(\\d+)w(\\d+)h(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc8/Bqm;->FACE_URL:Ljava/util/regex/Pattern;

    .line 29
    const-string/jumbo v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc8/Bqm;->NUMBER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToFaceUrl(Ljava/lang/String;II)Ljava/lang/String;
    .locals 23
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .prologue
    .line 35
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_0

    const-string/jumbo v21, "@"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 147
    .end local p0    # "imageUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 40
    .restart local p0    # "imageUrl":Ljava/lang/String;
    :cond_1
    sget-object v21, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->matches()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 45
    sget-object v21, Lc8/Bqm;->FACE_URL:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 46
    .local v8, "faceInformationMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 51
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    .line 54
    .local v7, "faceInformation":Ljava/lang/String;
    sget-object v21, Lc8/Bqm;->NUMBER:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 56
    .local v5, "faceDetailInformationMatcher":Ljava/util/regex/Matcher;
    invoke-static {v5}, Lc8/Bqm;->parseNumber(Ljava/util/regex/Matcher;)I

    move-result v14

    .line 57
    .local v14, "imageWidth":I
    invoke-static {v5}, Lc8/Bqm;->parseNumber(Ljava/util/regex/Matcher;)I

    move-result v13

    .line 58
    .local v13, "imageHeight":I
    invoke-static {v5}, Lc8/Bqm;->parseNumber(Ljava/util/regex/Matcher;)I

    move-result v10

    .line 59
    .local v10, "faceX":I
    invoke-static {v5}, Lc8/Bqm;->parseNumber(Ljava/util/regex/Matcher;)I

    move-result v11

    .line 60
    .local v11, "faceY":I
    invoke-static {v5}, Lc8/Bqm;->parseNumber(Ljava/util/regex/Matcher;)I

    move-result v9

    .line 61
    .local v9, "faceWidth":I
    invoke-static {v5}, Lc8/Bqm;->parseNumber(Ljava/util/regex/Matcher;)I

    move-result v6

    .line 64
    .local v6, "faceHeight":I
    if-lez v14, :cond_0

    if-lez v13, :cond_0

    if-ltz v10, :cond_0

    if-ltz v11, :cond_0

    if-lez v9, :cond_0

    if-lez v6, :cond_0

    .line 73
    const/16 v21, 0x1000

    move/from16 v0, p1

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    .line 74
    const/high16 v21, 0x45800000    # 4096.0f

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 p2, v0

    .line 75
    const/16 p1, 0x1000

    .line 78
    :cond_2
    const/16 v21, 0x1000

    move/from16 v0, p2

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    .line 79
    const/high16 v21, 0x45800000    # 4096.0f

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 p1, v0

    .line 80
    const/16 p2, 0x1000

    .line 86
    :cond_3
    mul-int v21, v14, p2

    mul-int v22, p1, v13

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 87
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v13

    move/from16 v22, v0

    div-float v17, v21, v22

    .line 95
    .local v17, "scale":F
    :goto_1
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v17

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 96
    .local v4, "cropWidth":I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v17

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 98
    .local v3, "cropHeight":I
    const/16 v21, 0x1000

    move/from16 v0, v21

    if-le v4, v0, :cond_4

    .line 99
    const/high16 v21, 0x45800000    # 4096.0f

    int-to-float v0, v4

    move/from16 v22, v0

    div-float v21, v21, v22

    int-to-float v0, v3

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v3, v0

    .line 100
    const/16 v4, 0x1000

    .line 103
    :cond_4
    const/16 v21, 0x1000

    move/from16 v0, v21

    if-le v3, v0, :cond_5

    .line 104
    const/high16 v21, 0x45800000    # 4096.0f

    int-to-float v0, v3

    move/from16 v22, v0

    div-float v21, v21, v22

    int-to-float v0, v4

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v4, v0

    .line 105
    const/16 v3, 0x1000

    .line 109
    :cond_5
    sub-int v21, v4, v9

    div-int/lit8 v12, v21, 0x2

    .line 110
    .local v12, "gap":I
    sub-int v15, v10, v12

    .line 111
    .local v15, "left":I
    add-int v21, v10, v9

    add-int v16, v21, v12

    .line 112
    .local v16, "right":I
    move/from16 v0, v16

    if-gt v0, v14, :cond_7

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 114
    .local v19, "x":I
    :goto_2
    sub-int v21, v3, v6

    div-int/lit8 v12, v21, 0x2

    .line 115
    sub-int v18, v11, v12

    .line 116
    .local v18, "top":I
    add-int v21, v11, v6

    add-int v2, v21, v12

    .line 117
    .local v2, "bottom":I
    if-gt v2, v13, :cond_8

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 120
    .local v20, "y":I
    :goto_3
    if-ltz v19, :cond_0

    if-ltz v20, :cond_0

    if-lez v4, :cond_0

    if-lez v3, :cond_0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 130
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x40

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 131
    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x77

    .line 132
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x5f

    .line 133
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 134
    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x68

    .line 135
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x5f

    .line 136
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 137
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2d

    .line 138
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 139
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2d

    .line 140
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 141
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2d

    .line 142
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 143
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x61

    .line 144
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    .line 90
    .end local v2    # "bottom":I
    .end local v3    # "cropHeight":I
    .end local v4    # "cropWidth":I
    .end local v12    # "gap":I
    .end local v15    # "left":I
    .end local v16    # "right":I
    .end local v17    # "scale":F
    .end local v18    # "top":I
    .end local v19    # "x":I
    .end local v20    # "y":I
    :cond_6
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v14

    move/from16 v22, v0

    div-float v17, v21, v22

    .restart local v17    # "scale":F
    goto/16 :goto_1

    .line 112
    .restart local v3    # "cropHeight":I
    .restart local v4    # "cropWidth":I
    .restart local v12    # "gap":I
    .restart local v15    # "left":I
    .restart local v16    # "right":I
    :cond_7
    sub-int v19, v14, v4

    goto/16 :goto_2

    .line 117
    .restart local v2    # "bottom":I
    .restart local v18    # "top":I
    .restart local v19    # "x":I
    :cond_8
    sub-int v20, v13, v3

    goto/16 :goto_3

    .line 147
    .end local v2    # "bottom":I
    .end local v3    # "cropHeight":I
    .end local v4    # "cropWidth":I
    .end local v5    # "faceDetailInformationMatcher":Ljava/util/regex/Matcher;
    .end local v6    # "faceHeight":I
    .end local v7    # "faceInformation":Ljava/lang/String;
    .end local v8    # "faceInformationMatcher":Ljava/util/regex/Matcher;
    .end local v9    # "faceWidth":I
    .end local v10    # "faceX":I
    .end local v11    # "faceY":I
    .end local v12    # "gap":I
    .end local v13    # "imageHeight":I
    .end local v14    # "imageWidth":I
    .end local v15    # "left":I
    .end local v16    # "right":I
    .end local v17    # "scale":F
    .end local v18    # "top":I
    .end local v19    # "x":I
    :catch_0
    move-exception v21

    goto/16 :goto_0
.end method

.method static parseNumber(Ljava/util/regex/Matcher;)I
    .locals 1
    .param p0, "matcher"    # Ljava/util/regex/Matcher;

    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
