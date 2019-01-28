.class public Lc8/CJb;
.super Ljava/lang/Object;
.source "NumberCodec.java"

# interfaces
.implements Lc8/DJb;
.implements Lc8/hJb;


# static fields
.field public static final instance:Lc8/CJb;


# instance fields
.field private decimalFormat:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lc8/CJb;

    invoke-direct {v0}, Lc8/CJb;-><init>()V

    sput-object v0, Lc8/CJb;->instance:Lc8/CJb;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/CJb;->decimalFormat:Ljava/text/DecimalFormat;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "decimalFormat"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lc8/CJb;-><init>(Ljava/text/DecimalFormat;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/text/DecimalFormat;)V
    .locals 1
    .param p1, "decimalFormat"    # Ljava/text/DecimalFormat;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/CJb;->decimalFormat:Ljava/text/DecimalFormat;

    .line 43
    iput-object p1, p0, Lc8/CJb;->decimalFormat:Ljava/text/DecimalFormat;

    .line 44
    return-void
.end method


# virtual methods
.method public deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "parser"    # Lc8/NIb;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/NIb;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    .line 109
    iget-object v0, p1, Lc8/NIb;->lexer:Lc8/PIb;

    .line 110
    .local v0, "lexer":Lc8/PIb;
    invoke-virtual {v0}, Lc8/PIb;->token()I

    move-result v1

    .line 111
    .local v1, "token":I
    const/4 v5, 0x2

    if-ne v1, v5, :cond_a

    .line 112
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_0

    const-class v5, Ljava/lang/Double;

    if-ne p2, v5, :cond_2

    .line 113
    :cond_0
    invoke-virtual {v0}, Lc8/PIb;->numberString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "val":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lc8/PIb;->nextToken(I)V

    .line 115
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 190
    .end local v2    # "val":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 118
    :cond_2
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_3

    const-class v5, Ljava/lang/Float;

    if-ne p2, v5, :cond_4

    .line 119
    :cond_3
    invoke-virtual {v0}, Lc8/PIb;->numberString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .restart local v2    # "val":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lc8/PIb;->nextToken(I)V

    .line 121
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 124
    .end local v2    # "val":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lc8/PIb;->longValue()J

    move-result-wide v2

    .line 125
    .local v2, "val":J
    invoke-virtual {v0, v6}, Lc8/PIb;->nextToken(I)V

    .line 127
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_5

    const-class v5, Ljava/lang/Short;

    if-ne p2, v5, :cond_6

    .line 128
    :cond_5
    long-to-int v5, v2

    int-to-short v5, v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto :goto_0

    .line 131
    :cond_6
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_7

    const-class v5, Ljava/lang/Byte;

    if-ne p2, v5, :cond_8

    .line 132
    :cond_7
    long-to-int v5, v2

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto :goto_0

    .line 135
    :cond_8
    const-wide/32 v6, -0x80000000

    cmp-long v5, v2, v6

    if-ltz v5, :cond_9

    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v2, v6

    if-gtz v5, :cond_9

    .line 136
    long-to-int v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 138
    :cond_9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 141
    .end local v2    # "val":J
    :cond_a
    const/4 v5, 0x3

    if-ne v1, v5, :cond_12

    .line 142
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_b

    const-class v5, Ljava/lang/Double;

    if-ne p2, v5, :cond_c

    .line 143
    :cond_b
    invoke-virtual {v0}, Lc8/PIb;->numberString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "val":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lc8/PIb;->nextToken(I)V

    .line 145
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 148
    .end local v2    # "val":Ljava/lang/String;
    :cond_c
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_d

    const-class v5, Ljava/lang/Float;

    if-ne p2, v5, :cond_e

    .line 149
    :cond_d
    invoke-virtual {v0}, Lc8/PIb;->numberString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .restart local v2    # "val":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lc8/PIb;->nextToken(I)V

    .line 151
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto/16 :goto_0

    .line 154
    .end local v2    # "val":Ljava/lang/String;
    :cond_e
    invoke-virtual {v0}, Lc8/PIb;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v2

    .line 155
    .local v2, "val":Ljava/math/BigDecimal;
    invoke-virtual {v0, v6}, Lc8/PIb;->nextToken(I)V

    .line 157
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_f

    const-class v5, Ljava/lang/Short;

    if-ne p2, v5, :cond_10

    .line 158
    :cond_f
    invoke-virtual {v2}, Ljava/math/BigDecimal;->shortValue()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto/16 :goto_0

    .line 161
    :cond_10
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_11

    const-class v5, Ljava/lang/Byte;

    if-ne p2, v5, :cond_1

    .line 162
    :cond_11
    invoke-virtual {v2}, Ljava/math/BigDecimal;->byteValue()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto/16 :goto_0

    .line 168
    .end local v2    # "val":Ljava/math/BigDecimal;
    :cond_12
    invoke-virtual {p1}, Lc8/NIb;->parse()Ljava/lang/Object;

    move-result-object v4

    .line 170
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_13

    .line 171
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 174
    :cond_13
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_14

    const-class v5, Ljava/lang/Double;

    if-ne p2, v5, :cond_15

    .line 175
    :cond_14
    invoke-static {v4}, Lc8/RJb;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_0

    .line 178
    :cond_15
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_16

    const-class v5, Ljava/lang/Float;

    if-ne p2, v5, :cond_17

    .line 179
    :cond_16
    invoke-static {v4}, Lc8/RJb;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v2

    goto/16 :goto_0

    .line 182
    :cond_17
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_18

    const-class v5, Ljava/lang/Short;

    if-ne p2, v5, :cond_19

    .line 183
    :cond_18
    invoke-static {v4}, Lc8/RJb;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v2

    goto/16 :goto_0

    .line 186
    :cond_19
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_1a

    const-class v5, Ljava/lang/Byte;

    if-ne p2, v5, :cond_1b

    .line 187
    :cond_1a
    invoke-static {v4}, Lc8/RJb;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v2

    goto/16 :goto_0

    .line 190
    :cond_1b
    invoke-static {v4}, Lc8/RJb;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public write(Lc8/wJb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 8
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
    const/4 v7, 0x0

    .line 51
    iget-object v5, p1, Lc8/wJb;->out:Lc8/JJb;

    .line 53
    .local v5, "out":Lc8/JJb;
    if-nez p2, :cond_2

    .line 54
    iget v6, v5, Lc8/JJb;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    .line 55
    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Lc8/JJb;->write(I)V

    .line 105
    .end local p2    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 57
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v5}, Lc8/JJb;->writeNull()V

    goto :goto_0

    .line 62
    :cond_2
    instance-of v6, p2, Ljava/lang/Float;

    if-eqz v6, :cond_6

    .line 63
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 65
    .local v4, "floatValue":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 66
    invoke-virtual {v5}, Lc8/JJb;->writeNull()V

    goto :goto_0

    .line 67
    :cond_3
    invoke-static {v4}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 68
    invoke-virtual {v5}, Lc8/JJb;->writeNull()V

    goto :goto_0

    .line 70
    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "floatText":Ljava/lang/String;
    const-string/jumbo v6, ".0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 72
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 74
    :cond_5
    invoke-virtual {v5, v1}, Lc8/JJb;->write(Ljava/lang/String;)V

    .line 76
    iget v6, v5, Lc8/JJb;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 77
    const/16 v6, 0x46

    invoke-virtual {v5, v6}, Lc8/JJb;->write(I)V

    goto :goto_0

    .line 83
    .end local v1    # "floatText":Ljava/lang/String;
    .end local v4    # "floatValue":F
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_6
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 85
    .local v2, "doubleValue":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 86
    invoke-virtual {v5}, Lc8/JJb;->writeNull()V

    goto :goto_0

    .line 87
    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 88
    invoke-virtual {v5}, Lc8/JJb;->writeNull()V

    goto :goto_0

    .line 91
    :cond_8
    iget-object v6, p0, Lc8/CJb;->decimalFormat:Ljava/text/DecimalFormat;

    if-nez v6, :cond_a

    .line 92
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "doubleText":Ljava/lang/String;
    const-string/jumbo v6, ".0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_9
    :goto_1
    invoke-virtual {v5, v0}, Lc8/JJb;->append(Ljava/lang/CharSequence;)Lc8/JJb;

    .line 101
    iget v6, v5, Lc8/JJb;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 102
    const/16 v6, 0x44

    invoke-virtual {v5, v6}, Lc8/JJb;->write(I)V

    goto/16 :goto_0

    .line 97
    .end local v0    # "doubleText":Ljava/lang/String;
    :cond_a
    iget-object v6, p0, Lc8/CJb;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v6, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "doubleText":Ljava/lang/String;
    goto :goto_1
.end method
