.class public final Lc8/lJb;
.super Ljava/lang/Object;
.source "ArraySerializer.java"

# interfaces
.implements Lc8/DJb;


# instance fields
.field private final compObjectSerializer:Lc8/DJb;

.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lc8/DJb;)V
    .locals 0
    .param p2, "compObjectSerializer"    # Lc8/DJb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lc8/DJb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lc8/lJb;->componentType:Ljava/lang/Class;

    .line 31
    iput-object p2, p0, Lc8/lJb;->compObjectSerializer:Lc8/DJb;

    .line 32
    return-void
.end method


# virtual methods
.method public final write(Lc8/wJb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 17
    .param p1, "serializer"    # Lc8/wJb;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    move-object/from16 v0, p1

    iget-object v12, v0, Lc8/wJb;->out:Lc8/JJb;

    .line 38
    .local v12, "out":Lc8/JJb;
    if-nez p2, :cond_1

    .line 39
    iget v14, v12, Lc8/JJb;->features:I

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v15, v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v14, v15

    if-eqz v14, :cond_0

    .line 40
    const-string/jumbo v14, "[]"

    invoke-virtual {v12, v14}, Lc8/JJb;->write(Ljava/lang/String;)V

    .line 216
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {v12}, Lc8/JJb;->writeNull()V

    goto :goto_0

    .line 48
    :cond_1
    move-object/from16 v0, p2

    instance-of v14, v0, [Z

    if-eqz v14, :cond_4

    move-object/from16 v4, p2

    .line 49
    check-cast v4, [Z

    .line 50
    .local v4, "array":[Z
    const/16 v14, 0x5b

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    .line 51
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v14, v4

    if-ge v8, v14, :cond_3

    .line 52
    if-eqz v8, :cond_2

    .line 53
    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    .line 55
    :cond_2
    aget-boolean v14, v4, v8

    invoke-virtual {v12, v14}, Lc8/JJb;->write(Z)V

    .line 51
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 57
    :cond_3
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    goto :goto_0

    .line 61
    .end local v4    # "array":[Z
    .end local v8    # "i":I
    :cond_4
    move-object/from16 v0, p2

    instance-of v14, v0, [B

    if-eqz v14, :cond_5

    move-object/from16 v4, p2

    .line 62
    check-cast v4, [B

    .line 63
    .local v4, "array":[B
    invoke-virtual {v12, v4}, Lc8/JJb;->writeByteArray([B)V

    goto :goto_0

    .line 67
    .end local v4    # "array":[B
    :cond_5
    move-object/from16 v0, p2

    instance-of v14, v0, [C

    if-eqz v14, :cond_6

    move-object/from16 v5, p2

    .line 68
    check-cast v5, [C

    .line 69
    .local v5, "chars":[C
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v12, v14}, Lc8/JJb;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    .end local v5    # "chars":[C
    :cond_6
    move-object/from16 v0, p2

    instance-of v14, v0, [D

    if-eqz v14, :cond_b

    move-object/from16 v4, p2

    .line 74
    check-cast v4, [D

    .line 75
    .local v4, "array":[D
    array-length v13, v4

    .line 77
    .local v13, "size":I
    add-int/lit8 v7, v13, -0x1

    .line 79
    .local v7, "end":I
    const/4 v14, -0x1

    if-ne v7, v14, :cond_7

    .line 80
    const-string/jumbo v14, "[]"

    invoke-virtual {v12, v14}, Lc8/JJb;->append(Ljava/lang/CharSequence;)Lc8/JJb;

    goto :goto_0

    .line 84
    :cond_7
    const/16 v14, 0x5b

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    .line 85
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v7, :cond_9

    .line 86
    aget-wide v10, v4, v8

    .line 88
    .local v10, "item":D
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 89
    invoke-virtual {v12}, Lc8/JJb;->writeNull()V

    .line 94
    :goto_3
    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    .line 85
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 91
    :cond_8
    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lc8/JJb;->append(Ljava/lang/CharSequence;)Lc8/JJb;

    goto :goto_3

    .line 97
    .end local v10    # "item":D
    :cond_9
    aget-wide v10, v4, v7

    .line 99
    .restart local v10    # "item":D
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 100
    invoke-virtual {v12}, Lc8/JJb;->writeNull()V

    .line 105
    :goto_4
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    goto/16 :goto_0

    .line 102
    :cond_a
    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lc8/JJb;->append(Ljava/lang/CharSequence;)Lc8/JJb;

    goto :goto_4

    .line 109
    .end local v4    # "array":[D
    .end local v7    # "end":I
    .end local v8    # "i":I
    .end local v10    # "item":D
    .end local v13    # "size":I
    :cond_b
    move-object/from16 v0, p2

    instance-of v14, v0, [F

    if-eqz v14, :cond_10

    move-object/from16 v4, p2

    .line 110
    check-cast v4, [F

    .line 111
    .local v4, "array":[F
    array-length v13, v4

    .line 113
    .restart local v13    # "size":I
    add-int/lit8 v7, v13, -0x1

    .line 115
    .restart local v7    # "end":I
    const/4 v14, -0x1

    if-ne v7, v14, :cond_c

    .line 116
    const-string/jumbo v14, "[]"

    invoke-virtual {v12, v14}, Lc8/JJb;->append(Ljava/lang/CharSequence;)Lc8/JJb;

    goto/16 :goto_0

    .line 120
    :cond_c
    const/16 v14, 0x5b

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    .line 121
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    if-ge v8, v7, :cond_e

    .line 122
    aget v10, v4, v8

    .line 124
    .local v10, "item":F
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 125
    invoke-virtual {v12}, Lc8/JJb;->writeNull()V

    .line 130
    :goto_6
    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    .line 121
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 127
    :cond_d
    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lc8/JJb;->append(Ljava/lang/CharSequence;)Lc8/JJb;

    goto :goto_6

    .line 133
    .end local v10    # "item":F
    :cond_e
    aget v10, v4, v7

    .line 135
    .restart local v10    # "item":F
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 136
    invoke-virtual {v12}, Lc8/JJb;->writeNull()V

    .line 141
    :goto_7
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    goto/16 :goto_0

    .line 138
    :cond_f
    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lc8/JJb;->append(Ljava/lang/CharSequence;)Lc8/JJb;

    goto :goto_7

    .line 145
    .end local v4    # "array":[F
    .end local v7    # "end":I
    .end local v8    # "i":I
    .end local v10    # "item":F
    .end local v13    # "size":I
    :cond_10
    move-object/from16 v0, p2

    instance-of v14, v0, [I

    if-eqz v14, :cond_13

    move-object/from16 v4, p2

    .line 146
    check-cast v4, [I

    .line 148
    .local v4, "array":[I
    const/16 v14, 0x5b

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    .line 149
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_8
    array-length v14, v4

    if-ge v8, v14, :cond_12

    .line 150
    if-eqz v8, :cond_11

    .line 151
    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    .line 153
    :cond_11
    aget v14, v4, v8

    invoke-virtual {v12, v14}, Lc8/JJb;->writeInt(I)V

    .line 149
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 155
    :cond_12
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    goto/16 :goto_0

    .line 159
    .end local v4    # "array":[I
    .end local v8    # "i":I
    :cond_13
    move-object/from16 v0, p2

    instance-of v14, v0, [J

    if-eqz v14, :cond_16

    move-object/from16 v4, p2

    .line 160
    check-cast v4, [J

    .line 162
    .local v4, "array":[J
    const/16 v14, 0x5b

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    .line 163
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    array-length v14, v4

    if-ge v8, v14, :cond_15

    .line 164
    if-eqz v8, :cond_14

    .line 165
    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    .line 167
    :cond_14
    aget-wide v14, v4, v8

    invoke-virtual {v12, v14, v15}, Lc8/JJb;->writeLong(J)V

    .line 163
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 169
    :cond_15
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    goto/16 :goto_0

    .line 173
    .end local v4    # "array":[J
    .end local v8    # "i":I
    :cond_16
    move-object/from16 v0, p2

    instance-of v14, v0, [S

    if-eqz v14, :cond_19

    move-object/from16 v4, p2

    .line 174
    check-cast v4, [S

    .line 175
    .local v4, "array":[S
    const/16 v14, 0x5b

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    .line 176
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_a
    array-length v14, v4

    if-ge v8, v14, :cond_18

    .line 177
    if-eqz v8, :cond_17

    .line 178
    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    .line 180
    :cond_17
    aget-short v14, v4, v8

    invoke-virtual {v12, v14}, Lc8/JJb;->writeInt(I)V

    .line 176
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 182
    :cond_18
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    goto/16 :goto_0

    .end local v4    # "array":[S
    .end local v8    # "i":I
    :cond_19
    move-object/from16 v4, p2

    .line 186
    check-cast v4, [Ljava/lang/Object;

    .line 187
    .local v4, "array":[Ljava/lang/Object;
    array-length v13, v4

    .line 189
    .restart local v13    # "size":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lc8/wJb;->context:Lc8/GJb;

    .line 190
    .local v6, "context":Lc8/GJb;
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v6, v1, v2, v14}, Lc8/wJb;->setContext(Lc8/GJb;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 193
    const/16 v14, 0x5b

    :try_start_0
    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    .line 194
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_b
    if-ge v8, v13, :cond_1e

    .line 195
    if-eqz v8, :cond_1a

    .line 196
    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V

    .line 198
    :cond_1a
    aget-object v10, v4, v8

    .line 200
    .local v10, "item":Ljava/lang/Object;
    if-nez v10, :cond_1c

    .line 201
    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v12, v14}, Lc8/JJb;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v14

    if-eqz v14, :cond_1b

    move-object/from16 v0, p2

    instance-of v14, v0, [Ljava/lang/String;

    if-eqz v14, :cond_1b

    .line 202
    const-string/jumbo v14, ""

    invoke-virtual {v12, v14}, Lc8/JJb;->writeString(Ljava/lang/String;)V

    .line 194
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 204
    :cond_1b
    const-string/jumbo v14, "null"

    invoke-virtual {v12, v14}, Lc8/JJb;->append(Ljava/lang/CharSequence;)Lc8/JJb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_c

    .line 215
    .end local v8    # "i":I
    .end local v10    # "item":Ljava/lang/Object;
    :catchall_0
    move-exception v14

    move-object/from16 v0, p1

    iput-object v6, v0, Lc8/wJb;->context:Lc8/GJb;

    throw v14

    .line 206
    .restart local v8    # "i":I
    .restart local v10    # "item":Ljava/lang/Object;
    :cond_1c
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/lJb;->componentType:Ljava/lang/Class;

    if-ne v14, v15, :cond_1d

    .line 207
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/lJb;->compObjectSerializer:Lc8/DJb;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v10, v15, v1}, Lc8/DJb;->write(Lc8/wJb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_c

    .line 209
    :cond_1d
    move-object/from16 v0, p1

    iget-object v14, v0, Lc8/wJb;->config:Lc8/HJb;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Lc8/HJb;->get(Ljava/lang/Class;)Lc8/DJb;

    move-result-object v9

    .line 210
    .local v9, "itemSerializer":Lc8/DJb;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v9, v0, v10, v14, v15}, Lc8/DJb;->write(Lc8/wJb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_c

    .line 213
    .end local v9    # "itemSerializer":Lc8/DJb;
    .end local v10    # "item":Ljava/lang/Object;
    :cond_1e
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lc8/JJb;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    move-object/from16 v0, p1

    iput-object v6, v0, Lc8/wJb;->context:Lc8/GJb;

    goto/16 :goto_0
.end method
