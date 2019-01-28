.class public Lc8/ZTb;
.super Ljava/lang/Object;
.source "UTReqDataBuilder.java"


# static fields
.field private static s_session_start_timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lc8/ZTb;->s_session_start_timestamp:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _fixVariableValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lc8/OTb;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 25
    const-string/jumbo p0, "-"

    .line 42
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 27
    .restart local p0    # "value":Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 32
    .local v2, "strNoBlank":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 33
    .local v1, "str":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 34
    aget-char v3, v1, v0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    aget-char v3, v1, v0

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    aget-char v3, v1, v0

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    aget-char v3, v1, v0

    const/16 v4, 0x7c

    if-eq v3, v4, :cond_2

    .line 37
    aget-char v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 40
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static assembleWithFullFields(Ljava/util/Map;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v7, p0

    .line 184
    .local v7, "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 185
    .local v9, "lSb":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->values()[Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    move-result-object v0

    .local v0, "arr$":[Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;
    array-length v11, v0

    .local v11, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v11, :cond_1

    aget-object v3, v0, v1

    .line 186
    .local v3, "lEnumKey":Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;
    sget-object v12, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ARGS:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    if-eq v3, v12, :cond_1

    .line 190
    const/4 v10, 0x0

    .line 191
    .local v10, "lV":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 192
    invoke-virtual {v3}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lc8/OTb;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 193
    invoke-virtual {v3}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    invoke-static {v10}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, "||"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v3    # "lEnumKey":Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;
    .end local v10    # "lV":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    .line 200
    .local v4, "lIsFirstArgFlag":Z
    sget-object v12, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ARGS:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v12}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 201
    sget-object v12, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ARGS:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v12}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lc8/OTb;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "lArgs":Ljava/lang/String;
    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    sget-object v12, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ARGS:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v12}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/4 v4, 0x0

    .line 207
    .end local v2    # "lArgs":Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 208
    .local v5, "lItorKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 209
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 210
    .local v6, "lKey":Ljava/lang/String;
    const/4 v10, 0x0

    .line 211
    .restart local v10    # "lV":Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 212
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lc8/OTb;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 215
    :cond_3
    if-eqz v4, :cond_5

    .line 216
    const-string/jumbo v12, "StackTrace"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 217
    const-string/jumbo v12, "StackTrace=====>"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 219
    :cond_4
    invoke-static {v6}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 224
    :cond_5
    const-string/jumbo v12, "StackTrace"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 225
    const-string/jumbo v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, "StackTrace=====>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 227
    :cond_6
    const-string/jumbo v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-static {v6}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 233
    .end local v6    # "lKey":Ljava/lang/String;
    .end local v10    # "lV":Ljava/lang/String;
    :cond_7
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 234
    .local v8, "lLogResult":Ljava/lang/String;
    invoke-static {v8}, Lc8/OTb;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 235
    const-string/jumbo v12, "||"

    invoke-virtual {v8, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 236
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 239
    :cond_8
    return-object v8
.end method

.method public static buildMonkeyPostReqDataObj(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Lc8/YTb;
    .locals 59
    .param p0, "URL"    # Ljava/lang/String;
    .param p1, "aContext"    # Landroid/content/Context;
    .param p3, "aTimestamp"    # J
    .param p5, "aPage"    # Ljava/lang/String;
    .param p6, "aEventId"    # I
    .param p7, "aArg1"    # Ljava/lang/Object;
    .param p8, "aArg2"    # Ljava/lang/Object;
    .param p9, "aArg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/YTb;"
        }
    .end annotation

    .prologue
    .line 329
    .local p2, "aData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p10, "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p6, :cond_0

    .line 330
    const/16 v36, 0x0

    .line 441
    :goto_0
    return-object v36

    .line 333
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_2

    move-wide/from16 v38, p3

    .line 334
    .local v38, "lTimestamp":J
    :goto_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v38

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 335
    .local v33, "lRecordTimestamp":Ljava/lang/String;
    new-instance v50, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v50

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 336
    .local v50, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v50

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .line 337
    .local v32, "lRecordDate":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 338
    .local v31, "lPage":Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 339
    .local v30, "lEventId":Ljava/lang/String;
    invoke-static/range {p7 .. p7}, Lc8/OTb;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 340
    .local v25, "lArg1":Ljava/lang/String;
    invoke-static/range {p8 .. p8}, Lc8/OTb;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 341
    .local v26, "lArg2":Ljava/lang/String;
    invoke-static/range {p9 .. p9}, Lc8/OTb;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 342
    .local v27, "lArg3":Ljava/lang/String;
    invoke-static/range {p10 .. p10}, Lc8/OTb;->convertMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 343
    .local v28, "lArgs":Ljava/lang/String;
    const-string/jumbo v42, "5.0.1"

    .line 344
    .local v42, "ndkReleaseVersion":Ljava/lang/String;
    const-string/jumbo v2, "IMEI"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 345
    .local v23, "imei":Ljava/lang/String;
    const-string/jumbo v2, "IMSI"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 346
    .local v24, "imsi":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 347
    .local v15, "brand":Ljava/lang/String;
    const-string/jumbo v2, "CPU"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 348
    .local v19, "cpu":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 349
    .local v20, "deviceId":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 350
    .local v21, "deviceModel":Ljava/lang/String;
    const-string/jumbo v2, "RESOLUTION"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 351
    .local v49, "resolution":Ljava/lang/String;
    const-string/jumbo v2, "CARRIER"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 352
    .local v17, "carrier":Ljava/lang/String;
    const-string/jumbo v2, "ACCESS"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 353
    .local v12, "access":Ljava/lang/String;
    const-string/jumbo v2, "ACCESS_SUBTYPE"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 354
    .local v13, "accessSubType":Ljava/lang/String;
    const-string/jumbo v2, "APP_KEY"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "appKey":Ljava/lang/String;
    const-string/jumbo v2, "APP_VERSION"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 356
    .local v8, "appVersion":Ljava/lang/String;
    const-string/jumbo v2, "CHANNEL"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 358
    .local v7, "channel":Ljava/lang/String;
    const-string/jumbo v2, "USERNICK"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 359
    .local v41, "longLoginUserNick":Ljava/lang/String;
    const-string/jumbo v2, "USERNICK"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 360
    .local v54, "userNick":Ljava/lang/String;
    const-string/jumbo v44, "-"

    .line 361
    .local v44, "phoneNumber":Ljava/lang/String;
    const-string/jumbo v2, "COUNTRY"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 362
    .local v18, "country":Ljava/lang/String;
    const-string/jumbo v2, "LANGUAGE"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 363
    .local v40, "language":Ljava/lang/String;
    const-string/jumbo v2, "APP_ID"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 364
    .local v14, "appId":Ljava/lang/String;
    const-string/jumbo v9, "Android"

    .line 366
    .local v9, "os":Ljava/lang/String;
    if-eqz v14, :cond_1

    const-string/jumbo v2, "aliyunos"

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    const-string/jumbo v9, "aliyunos"

    .line 369
    :cond_1
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 370
    .local v43, "osVersion":Ljava/lang/String;
    const-string/jumbo v52, "mini"

    .line 371
    .local v52, "sdkType":Ljava/lang/String;
    const-string/jumbo v51, "1.0"

    .line 372
    .local v51, "sdkReleaseVersion":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v56, Lc8/ZTb;->s_session_start_timestamp:J

    move-wide/from16 v0, v56

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 373
    .local v45, "reserve1":Ljava/lang/String;
    const-string/jumbo v2, "UTDID"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 374
    .local v11, "reserve2":Ljava/lang/String;
    const-string/jumbo v46, "-"

    .line 375
    .local v46, "reserve3":Ljava/lang/String;
    const-string/jumbo v47, "-"

    .line 376
    .local v47, "reserve4":Ljava/lang/String;
    const-string/jumbo v48, "-"

    .line 378
    .local v48, "reserve5":Ljava/lang/String;
    const-string/jumbo v29, ""

    .line 379
    .local v29, "lBundleVersion":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lc8/OTb;->isBlank(Ljava/lang/CharSequence;)Z

    .line 383
    new-instance v37, Ljava/lang/StringBuffer;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuffer;-><init>()V

    .line 386
    .local v37, "lSb":Ljava/lang/StringBuffer;
    const-string/jumbo v53, "||"

    .line 387
    .local v53, "split":Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    move-object/from16 v0, v37

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    move-object/from16 v0, v37

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    move-object/from16 v0, v37

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    move-object/from16 v0, v37

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    move-object/from16 v0, v37

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    move-object/from16 v0, v37

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    move-object/from16 v0, v37

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    move-object/from16 v0, v37

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    move-object/from16 v0, v37

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    const-string/jumbo v2, "-"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    move-object/from16 v0, v37

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    .line 426
    .local v34, "lReqData":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 427
    .local v4, "lBReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .line 428
    .local v16, "byteReqData":[B
    const-string/jumbo v2, "stm_x"

    move-object/from16 v0, v16

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    new-instance v36, Lc8/YTb;

    invoke-direct/range {v36 .. v36}, Lc8/YTb;-><init>()V

    .line 431
    .local v36, "lResult":Lc8/YTb;
    const/4 v3, 0x0

    const-string/jumbo v10, ""

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v11}, Lc8/gUb;->getSignedTransferUrl(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 434
    .local v35, "lReqUrl":Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lc8/YTb;->setReqUrl(Ljava/lang/String;)V

    .line 435
    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lc8/YTb;->setPostReqData(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 438
    .end local v4    # "lBReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "appKey":Ljava/lang/String;
    .end local v7    # "channel":Ljava/lang/String;
    .end local v8    # "appVersion":Ljava/lang/String;
    .end local v9    # "os":Ljava/lang/String;
    .end local v11    # "reserve2":Ljava/lang/String;
    .end local v12    # "access":Ljava/lang/String;
    .end local v13    # "accessSubType":Ljava/lang/String;
    .end local v14    # "appId":Ljava/lang/String;
    .end local v15    # "brand":Ljava/lang/String;
    .end local v16    # "byteReqData":[B
    .end local v17    # "carrier":Ljava/lang/String;
    .end local v18    # "country":Ljava/lang/String;
    .end local v19    # "cpu":Ljava/lang/String;
    .end local v20    # "deviceId":Ljava/lang/String;
    .end local v21    # "deviceModel":Ljava/lang/String;
    .end local v23    # "imei":Ljava/lang/String;
    .end local v24    # "imsi":Ljava/lang/String;
    .end local v25    # "lArg1":Ljava/lang/String;
    .end local v26    # "lArg2":Ljava/lang/String;
    .end local v27    # "lArg3":Ljava/lang/String;
    .end local v28    # "lArgs":Ljava/lang/String;
    .end local v29    # "lBundleVersion":Ljava/lang/String;
    .end local v30    # "lEventId":Ljava/lang/String;
    .end local v31    # "lPage":Ljava/lang/String;
    .end local v32    # "lRecordDate":Ljava/lang/String;
    .end local v33    # "lRecordTimestamp":Ljava/lang/String;
    .end local v34    # "lReqData":Ljava/lang/String;
    .end local v35    # "lReqUrl":Ljava/lang/String;
    .end local v36    # "lResult":Lc8/YTb;
    .end local v37    # "lSb":Ljava/lang/StringBuffer;
    .end local v38    # "lTimestamp":J
    .end local v40    # "language":Ljava/lang/String;
    .end local v41    # "longLoginUserNick":Ljava/lang/String;
    .end local v42    # "ndkReleaseVersion":Ljava/lang/String;
    .end local v43    # "osVersion":Ljava/lang/String;
    .end local v44    # "phoneNumber":Ljava/lang/String;
    .end local v45    # "reserve1":Ljava/lang/String;
    .end local v46    # "reserve3":Ljava/lang/String;
    .end local v47    # "reserve4":Ljava/lang/String;
    .end local v48    # "reserve5":Ljava/lang/String;
    .end local v49    # "resolution":Ljava/lang/String;
    .end local v50    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v51    # "sdkReleaseVersion":Ljava/lang/String;
    .end local v52    # "sdkType":Ljava/lang/String;
    .end local v53    # "split":Ljava/lang/String;
    .end local v54    # "userNick":Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 439
    .local v22, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "UTRestAPI buildTracePostReqDataObj catch!"

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    const/16 v36, 0x0

    goto/16 :goto_0

    .line 333
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v38

    goto/16 :goto_1
.end method

.method public static buildPostRequestMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p0, "lReqData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {p0}, Lc8/OTb;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    const/4 v1, 0x0

    .line 259
    :goto_0
    return-object v1

    .line 257
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v0, "newReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "stm_x"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {v0}, Lc8/ZTb;->buildPostRequestMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0
.end method

.method public static buildPostRequestMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "lReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 269
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v12

    if-gtz v12, :cond_2

    :cond_0
    move-object v3, v11

    .line 307
    :cond_1
    :goto_0
    return-object v3

    .line 274
    :cond_2
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v3, "lBReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 276
    .local v9, "lRDKey":Ljava/lang/String;
    invoke-interface {p0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 277
    .local v10, "lRDValue":Ljava/lang/String;
    invoke-static {v9}, Lc8/OTb;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-static {v10}, Lc8/OTb;->isEmpty(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    if-nez v12, :cond_3

    .line 278
    const/4 v4, 0x0

    .line 279
    .local v4, "lBaos":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 282
    .local v7, "lOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    .end local v4    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .local v5, "lBaos":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v8, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 284
    .end local v7    # "lOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v8, "lOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    const-string/jumbo v12, "UTF-8"

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 285
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 286
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 288
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 289
    .local v6, "lGZIPResult":[B
    invoke-static {}, Lc8/STb;->getRC4PrivateKey()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lc8/NTb;->rc4([BLjava/lang/String;)[B

    move-result-object v2

    .line 291
    .local v2, "lBRC4ReqContent":[B
    invoke-interface {v3, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 293
    .end local v2    # "lBRC4ReqContent":[B
    .end local v6    # "lGZIPResult":[B
    :catch_0
    move-exception v12

    move-object v7, v8

    .end local v8    # "lOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "lOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v4, v5

    .end local v5    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "lBaos":Ljava/io/ByteArrayOutputStream;
    :goto_2
    if-eqz v7, :cond_4

    .line 294
    :try_start_4
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 297
    :cond_4
    if-eqz v4, :cond_3

    .line 298
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 304
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "lBReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "lOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v9    # "lRDKey":Ljava/lang/String;
    .end local v10    # "lRDValue":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "buildPostRequestMap"

    invoke-static {v12, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v11

    .line 307
    goto :goto_0

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "lBReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "lOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v9    # "lRDKey":Ljava/lang/String;
    .restart local v10    # "lRDValue":Ljava/lang/String;
    :catch_2
    move-exception v12

    goto :goto_2

    .end local v4    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "lBaos":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v12

    move-object v4, v5

    .end local v5    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "lBaos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public static buildTracePostReqDataObj(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Lc8/YTb;
    .locals 49
    .param p0, "URL"    # Ljava/lang/String;
    .param p1, "aContext"    # Landroid/content/Context;
    .param p3, "aTimestamp"    # J
    .param p5, "aPage"    # Ljava/lang/String;
    .param p6, "aEventId"    # I
    .param p7, "aArg1"    # Ljava/lang/Object;
    .param p8, "aArg2"    # Ljava/lang/Object;
    .param p9, "aArg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/YTb;"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "aData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p10, "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p6, :cond_0

    .line 67
    const/16 v32, 0x0

    .line 172
    :goto_0
    return-object v32

    .line 70
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_2

    move-wide/from16 v34, p3

    .line 71
    .local v34, "lTimestamp":J
    :goto_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v34

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 73
    .local v29, "lRecordTimestamp":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 74
    .local v28, "lPage":Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 75
    .local v27, "lEventId":Ljava/lang/String;
    invoke-static/range {p7 .. p7}, Lc8/OTb;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 76
    .local v22, "lArg1":Ljava/lang/String;
    invoke-static/range {p8 .. p8}, Lc8/OTb;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 77
    .local v23, "lArg2":Ljava/lang/String;
    invoke-static/range {p9 .. p9}, Lc8/OTb;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 78
    .local v24, "lArg3":Ljava/lang/String;
    invoke-static/range {p10 .. p10}, Lc8/OTb;->convertMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 80
    .local v25, "lArgs":Ljava/lang/String;
    const-string/jumbo v2, "IMEI"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 81
    .local v20, "imei":Ljava/lang/String;
    const-string/jumbo v2, "IMSI"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 82
    .local v21, "imsi":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 83
    .local v16, "brand":Ljava/lang/String;
    const-string/jumbo v2, "CPU"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    invoke-static/range {v20 .. v20}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 86
    .local v18, "deviceModel":Ljava/lang/String;
    const-string/jumbo v2, "RESOLUTION"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 87
    .local v41, "resolution":Ljava/lang/String;
    const-string/jumbo v2, "CARRIER"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 88
    .local v17, "carrier":Ljava/lang/String;
    const-string/jumbo v2, "ACCESS"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 89
    .local v13, "access":Ljava/lang/String;
    const-string/jumbo v2, "ACCESS_SUBTYPE"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 90
    .local v14, "accessSubType":Ljava/lang/String;
    const-string/jumbo v2, "APP_KEY"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "appKey":Ljava/lang/String;
    const-string/jumbo v2, "APP_VERSION"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 92
    .local v8, "appVersion":Ljava/lang/String;
    const-string/jumbo v2, "CHANNEL"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "channel":Ljava/lang/String;
    const-string/jumbo v2, "USERNICK"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 95
    .local v36, "longLoginUserNick":Ljava/lang/String;
    const-string/jumbo v2, "USERNICK"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 97
    .local v44, "userNick":Ljava/lang/String;
    const-string/jumbo v2, "COUNTRY"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    const-string/jumbo v2, "LANGUAGE"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 99
    .local v33, "language":Ljava/lang/String;
    const-string/jumbo v2, "APP_ID"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 102
    .local v15, "appId":Ljava/lang/String;
    const-string/jumbo v9, "a"

    .line 103
    .local v9, "os":Ljava/lang/String;
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 104
    .local v37, "osVersion":Ljava/lang/String;
    const-string/jumbo v43, "mini"

    .line 105
    .local v43, "sdkType":Ljava/lang/String;
    const-string/jumbo v42, "1.0"

    .line 106
    .local v42, "sdkReleaseVersion":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v46, Lc8/ZTb;->s_session_start_timestamp:J

    move-wide/from16 v0, v46

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    const-string/jumbo v2, "UTDID"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lc8/ZTb;->_fixVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 108
    .local v11, "reserve2":Ljava/lang/String;
    const-string/jumbo v38, "-"

    .line 109
    .local v38, "reserve3":Ljava/lang/String;
    const-string/jumbo v39, "-"

    .line 110
    .local v39, "reserve4":Ljava/lang/String;
    const-string/jumbo v40, "-"

    .line 112
    .local v40, "reserve5":Ljava/lang/String;
    const-string/jumbo v26, ""

    .line 113
    .local v26, "lBundleVersion":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lc8/OTb;->isBlank(Ljava/lang/CharSequence;)Z

    .line 118
    if-eqz v15, :cond_1

    const-string/jumbo v2, "aliyunos"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    const-string/jumbo v9, "y"

    .line 122
    :cond_1
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v12, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->IMEI:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->IMSI:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->BRAND:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->DEVICE_MODEL:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->RESOLUTION:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->CARRIER:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ACCESS:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ACCESS_SUBTYPE:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->CHANNEL:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->APPKEY:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->APPVERSION:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->LL_USERNICK:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->USERNICK:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v44

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->LL_USERID:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->USERID:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->LANGUAGE:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->OS:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->OSVERSION:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->SDKVERSION:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->START_SESSION_TIMESTAMP:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v46, Lc8/ZTb;->s_session_start_timestamp:J

    move-wide/from16 v0, v46

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->UTDID:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->SDKTYPE:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v43

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->RESERVE2:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->RESERVE3:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->RESERVE4:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->RESERVE5:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->RESERVES:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->RECORD_TIMESTAMP:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->PAGE:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->EVENTID:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ARG1:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ARG2:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ARG3:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ARGS:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {v12}, Lc8/ZTb;->assembleWithFullFields(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v30

    .line 159
    .local v30, "lReqData":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lc8/ZTb;->buildPostRequestMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 161
    .local v4, "lBReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v32, Lc8/YTb;

    invoke-direct/range {v32 .. v32}, Lc8/YTb;-><init>()V

    .line 162
    .local v32, "lResult":Lc8/YTb;
    const/4 v3, 0x0

    const-string/jumbo v10, ""

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v11}, Lc8/gUb;->getSignedTransferUrl(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 165
    .local v31, "lReqUrl":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lc8/YTb;->setReqUrl(Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lc8/YTb;->setPostReqData(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 169
    .end local v4    # "lBReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "appKey":Ljava/lang/String;
    .end local v7    # "channel":Ljava/lang/String;
    .end local v8    # "appVersion":Ljava/lang/String;
    .end local v9    # "os":Ljava/lang/String;
    .end local v11    # "reserve2":Ljava/lang/String;
    .end local v12    # "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "access":Ljava/lang/String;
    .end local v14    # "accessSubType":Ljava/lang/String;
    .end local v15    # "appId":Ljava/lang/String;
    .end local v16    # "brand":Ljava/lang/String;
    .end local v17    # "carrier":Ljava/lang/String;
    .end local v18    # "deviceModel":Ljava/lang/String;
    .end local v20    # "imei":Ljava/lang/String;
    .end local v21    # "imsi":Ljava/lang/String;
    .end local v22    # "lArg1":Ljava/lang/String;
    .end local v23    # "lArg2":Ljava/lang/String;
    .end local v24    # "lArg3":Ljava/lang/String;
    .end local v25    # "lArgs":Ljava/lang/String;
    .end local v26    # "lBundleVersion":Ljava/lang/String;
    .end local v27    # "lEventId":Ljava/lang/String;
    .end local v28    # "lPage":Ljava/lang/String;
    .end local v29    # "lRecordTimestamp":Ljava/lang/String;
    .end local v30    # "lReqData":Ljava/lang/String;
    .end local v31    # "lReqUrl":Ljava/lang/String;
    .end local v32    # "lResult":Lc8/YTb;
    .end local v33    # "language":Ljava/lang/String;
    .end local v34    # "lTimestamp":J
    .end local v36    # "longLoginUserNick":Ljava/lang/String;
    .end local v37    # "osVersion":Ljava/lang/String;
    .end local v38    # "reserve3":Ljava/lang/String;
    .end local v39    # "reserve4":Ljava/lang/String;
    .end local v40    # "reserve5":Ljava/lang/String;
    .end local v41    # "resolution":Ljava/lang/String;
    .end local v42    # "sdkReleaseVersion":Ljava/lang/String;
    .end local v43    # "sdkType":Ljava/lang/String;
    .end local v44    # "userNick":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 170
    .local v19, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "UTRestAPI buildTracePostReqDataObj catch!"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 70
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v34

    goto/16 :goto_1
.end method
