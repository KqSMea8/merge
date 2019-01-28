.class public Lc8/Vhb;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static optBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static optLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseStringValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .param p0, "strValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 153
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object p0, v5

    .line 245
    .end local p0    # "strValue":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 156
    .restart local p0    # "strValue":Ljava/lang/String;
    :cond_2
    const-class v7, Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 159
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-class v7, Ljava/lang/Short;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 160
    :cond_3
    invoke-static {p0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p0

    goto :goto_0

    .line 162
    :cond_4
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 163
    :cond_5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 165
    :cond_6
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-class v7, Ljava/lang/Long;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 166
    :cond_7
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    .line 168
    :cond_8
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-class v7, Ljava/lang/Boolean;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 169
    :cond_9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    .line 171
    :cond_a
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-class v7, Ljava/lang/Float;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 172
    :cond_b
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    .line 174
    :cond_c
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-class v7, Ljava/lang/Double;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 175
    :cond_d
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_0

    .line 177
    :cond_e
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const-class v7, Ljava/lang/Byte;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 178
    :cond_f
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_0

    .line 180
    :cond_10
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    const-class v7, Ljava/lang/Character;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 181
    :cond_11
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto/16 :goto_0

    .line 183
    :cond_12
    const-class v7, Ljava/util/Date;

    invoke-virtual {v7, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 185
    :try_start_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyyMMddHHmmssSSSZ"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v7, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    .line 186
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Ljava/text/ParseException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Parse Date error"

    invoke-direct {v7, v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 190
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_13
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 191
    .local v0, "c":C
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 192
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 193
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v7, 0x5b

    if-ne v0, v7, :cond_14

    .line 195
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 196
    .local v4, "json":Lorg/json/JSONArray;
    invoke-static {v4, v1}, Lc8/Vhb;->toPOJOArray(Lorg/json/JSONArray;Ljava/lang/Class;)[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p0

    goto/16 :goto_0

    .line 197
    .end local v4    # "json":Lorg/json/JSONArray;
    :catch_1
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 202
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_14
    const-class v7, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 203
    const-string/jumbo v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 206
    :cond_15
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    goto/16 :goto_0

    .line 209
    :cond_16
    const-class v7, Ljava/lang/Character;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 211
    .local v6, "tmp":[C
    array-length v7, v6

    new-array v5, v7, [Ljava/lang/Character;

    .line 212
    .local v5, "result":[Ljava/lang/Character;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v5

    if-ge v3, v7, :cond_17

    .line 213
    aget-char v7, v6, v3

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v5, v3

    .line 212
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_17
    move-object p0, v5

    .line 215
    goto/16 :goto_0

    .line 218
    .end local v3    # "i":I
    .end local v5    # "result":[Ljava/lang/Character;
    .end local v6    # "tmp":[C
    :cond_18
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 219
    invoke-static {p0, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    goto/16 :goto_0

    .line 221
    :cond_19
    const-class v7, Ljava/lang/Byte;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 222
    invoke-static {p0, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 223
    .local v6, "tmp":[B
    array-length v7, v6

    new-array v5, v7, [Ljava/lang/Byte;

    .line 224
    .local v5, "result":[Ljava/lang/Byte;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_1a

    .line 225
    aget-byte v7, v6, v3

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v3

    .line 224
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1a
    move-object p0, v5

    .line 227
    goto/16 :goto_0

    .end local v3    # "i":I
    .end local v5    # "result":[Ljava/lang/Byte;
    .end local v6    # "tmp":[B
    :cond_1b
    move-object p0, v5

    .line 229
    goto/16 :goto_0

    .line 231
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1c
    const/16 v7, 0x7b

    if-ne v0, v7, :cond_1e

    .line 233
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 234
    .local v4, "json":Lorg/json/JSONObject;
    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 235
    invoke-static {v4}, Lc8/Vhb;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    goto/16 :goto_0

    .line 237
    :cond_1d
    invoke-static {v4, p1}, Lc8/Vhb;->toPOJO(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object p0

    goto/16 :goto_0

    .line 238
    .end local v4    # "json":Lorg/json/JSONObject;
    :catch_2
    move-exception v2

    .line 239
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 242
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1e
    const-class v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object p0, v5

    .line 245
    goto/16 :goto_0
.end method

.method public static toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 90
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 91
    .local v1, "obj":Ljava/lang/Object;
    instance-of v3, v1, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 92
    check-cast v1, Ljava/util/Map;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-static {v1}, Lc8/Vhb;->toJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 94
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 97
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    return-object v0
.end method

.method public static toJsonArray([Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 5
    .param p0, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 77
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 78
    .local v0, "jsonArray":Lorg/json/JSONArray;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p0, v2

    .line 79
    .local v1, "obj":Ljava/lang/Object;
    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 80
    check-cast v1, Ljava/util/Map;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-static {v1}, Lc8/Vhb;->toJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 78
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 85
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    return-object v0
.end method

.method public static toJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v2, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 56
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 57
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 60
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v3, Ljava/util/Map;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-static {v3}, Lc8/Vhb;->toJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 62
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/lang/Object;>;"
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_1
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 63
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v3, Ljava/util/List;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-static {v3}, Lc8/Vhb;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 64
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 65
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v3, [Ljava/lang/Object;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-static {v3}, Lc8/Vhb;->toJsonArray([Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 67
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 73
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/lang/Object;>;"
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    return-object v2
.end method

.method public static toList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 121
    if-nez p0, :cond_1

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 135
    :cond_0
    return-object v2

    .line 124
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 127
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    .line 128
    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-static {v3}, Lc8/Vhb;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_3

    .line 130
    check-cast v3, Lorg/json/JSONArray;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-static {v3}, Lc8/Vhb;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_1

    .line 117
    :cond_0
    return-object v2

    .line 106
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 109
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    .line 110
    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-static {v3}, Lc8/Vhb;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_3

    .line 112
    check-cast v3, Lorg/json/JSONArray;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-static {v3}, Lc8/Vhb;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 114
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static toPOJO(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 14
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v8, 0x0

    .line 249
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v7, :cond_2

    .line 250
    :cond_0
    const/4 v5, 0x0

    .line 299
    :cond_1
    return-object v5

    .line 254
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 255
    .local v5, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    array-length v11, v10

    move v9, v8

    :goto_0
    if-ge v9, v11, :cond_1

    aget-object v2, v10, v9

    .line 256
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 257
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 261
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_9

    .line 263
    const-class v7, Ljava/lang/String;

    if-ne v0, v7, :cond_4

    .line 264
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    :goto_1
    invoke-static {v2, v5, v3}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    :cond_3
    :goto_2
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_0

    .line 265
    :cond_4
    const-class v7, Ljava/lang/Boolean;

    if-eq v0, v7, :cond_5

    const-class v7, Ljava/lang/Integer;

    if-eq v0, v7, :cond_5

    const-class v7, Ljava/lang/Short;

    if-eq v0, v7, :cond_5

    const-class v7, Ljava/lang/Long;

    if-eq v0, v7, :cond_5

    const-class v7, Ljava/lang/Double;

    if-ne v0, v7, :cond_6

    .line 268
    :cond_5
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "item":Ljava/lang/Object;
    goto :goto_1

    .line 269
    .end local v3    # "item":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 270
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v7, v12}, Lc8/Vhb;->toPOJOArray(Lorg/json/JSONArray;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .local v3, "item":[Ljava/lang/Object;
    goto :goto_1

    .line 271
    .end local v3    # "item":[Ljava/lang/Object;
    :cond_7
    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 272
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lc8/Vhb;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .local v3, "item":Ljava/util/Map;
    goto :goto_1

    .line 274
    .end local v3    # "item":Ljava/util/Map;
    :cond_8
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7, v0}, Lc8/Vhb;->toPOJO(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "item":Ljava/lang/Object;
    goto :goto_1

    .line 277
    .end local v3    # "item":Ljava/lang/Object;
    :cond_9
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v7, :cond_a

    .line 278
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 296
    .end local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 279
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/Object;, "TT;"
    :cond_a
    :try_start_1
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v7, :cond_b

    .line 280
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-byte v7, v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V

    goto :goto_2

    .line 281
    :cond_b
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v7, :cond_e

    .line 282
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, "tmp":Ljava/lang/String;
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_d

    :cond_c
    move v7, v8

    :goto_3
    invoke-virtual {v2, v5, v7}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V

    goto/16 :goto_2

    :cond_d
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_3

    .line 284
    .end local v6    # "tmp":Ljava/lang/String;
    :cond_e
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v7, :cond_f

    .line 285
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-short v7, v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto/16 :goto_2

    .line 286
    :cond_f
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v7, :cond_10

    .line 287
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 288
    :cond_10
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v7, :cond_11

    .line 289
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v2, v5, v12, v13}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto/16 :goto_2

    .line 290
    :cond_11
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v7, :cond_12

    .line 291
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v7, v12

    invoke-virtual {v2, v5, v7}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_2

    .line 292
    :cond_12
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v7, :cond_3

    .line 293
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v2, v5, v12, v13}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public static toPOJOArray(Lorg/json/JSONArray;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 10
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 303
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v5, :cond_1

    .line 304
    :cond_0
    const/4 v3, 0x0

    .line 347
    :goto_0
    return-object v3

    .line 306
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 308
    .local v3, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_12

    .line 309
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_8

    .line 311
    const-class v5, Ljava/lang/String;

    if-ne p1, v5, :cond_3

    .line 312
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 324
    :goto_2
    invoke-static {v3, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 308
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 313
    :cond_3
    const-class v5, Ljava/lang/Boolean;

    if-eq p1, v5, :cond_4

    const-class v5, Ljava/lang/Integer;

    if-eq p1, v5, :cond_4

    const-class v5, Ljava/lang/Short;

    if-eq p1, v5, :cond_4

    const-class v5, Ljava/lang/Long;

    if-eq p1, v5, :cond_4

    const-class v5, Ljava/lang/Double;

    if-ne p1, v5, :cond_5

    .line 316
    :cond_4
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .local v2, "item":Ljava/lang/Object;
    goto :goto_2

    .line 317
    .end local v2    # "item":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 318
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v5, v7}, Lc8/Vhb;->toPOJOArray(Lorg/json/JSONArray;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .local v2, "item":[Ljava/lang/Object;
    goto :goto_2

    .line 319
    .end local v2    # "item":[Ljava/lang/Object;
    :cond_6
    const-class v5, Ljava/util/Map;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 320
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lc8/Vhb;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .local v2, "item":Ljava/util/Map;
    goto :goto_2

    .line 322
    .end local v2    # "item":Ljava/util/Map;
    :cond_7
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, p1}, Lc8/Vhb;->toPOJO(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "item":Ljava/lang/Object;
    goto :goto_2

    .line 325
    .end local v2    # "item":Ljava/lang/Object;
    :cond_8
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v5, :cond_9

    .line 326
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v5

    invoke-static {v3, v1, v5}, Ljava/lang/reflect/Array;->setBoolean(Ljava/lang/Object;IZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 327
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_9
    :try_start_1
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v5, :cond_a

    .line 328
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-static {v3, v1, v5}, Ljava/lang/reflect/Array;->setByte(Ljava/lang/Object;IB)V

    goto :goto_3

    .line 329
    :cond_a
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v5, :cond_d

    .line 330
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, "tmp":Ljava/lang/String;
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    move v5, v6

    :goto_4
    invoke-static {v3, v1, v5}, Ljava/lang/reflect/Array;->setChar(Ljava/lang/Object;IC)V

    goto/16 :goto_3

    :cond_c
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_4

    .line 332
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_d
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v5, :cond_e

    .line 333
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    int-to-short v5, v5

    invoke-static {v3, v1, v5}, Ljava/lang/reflect/Array;->setShort(Ljava/lang/Object;IS)V

    goto/16 :goto_3

    .line 334
    :cond_e
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v5, :cond_f

    .line 335
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-static {v3, v1, v5}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    goto/16 :goto_3

    .line 336
    :cond_f
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v5, :cond_10

    .line 337
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    invoke-static {v3, v1, v8, v9}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    goto/16 :goto_3

    .line 338
    :cond_10
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v5, :cond_11

    .line 339
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    double-to-float v5, v8

    invoke-static {v3, v1, v5}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    goto/16 :goto_3

    .line 340
    :cond_11
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v5, :cond_2

    .line 341
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    invoke-static {v3, v1, v8, v9}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 347
    :cond_12
    check-cast v3, [Ljava/lang/Object;

    goto/16 :goto_0
.end method
