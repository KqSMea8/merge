.class public Lc8/HJb;
.super Ljava/lang/Object;
.source "SerializeConfig.java"


# static fields
.field public static final globalInstance:Lc8/HJb;


# instance fields
.field public propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field private final serializers:Lc8/PJb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/PJb",
            "<",
            "Lc8/DJb;",
            ">;"
        }
    .end annotation
.end field

.field protected typeKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lc8/HJb;

    invoke-direct {v0}, Lc8/HJb;-><init>()V

    sput-object v0, Lc8/HJb;->globalInstance:Lc8/HJb;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string/jumbo v0, "@type"

    iput-object v0, p0, Lc8/HJb;->typeKey:Ljava/lang/String;

    .line 89
    new-instance v0, Lc8/PJb;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lc8/PJb;-><init>(I)V

    iput-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    .line 91
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lc8/oJb;->instance:Lc8/oJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lc8/uJb;->instance:Lc8/uJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lc8/uJb;->instance:Lc8/uJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lc8/uJb;->instance:Lc8/uJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lc8/uJb;->instance:Lc8/uJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lc8/CJb;->instance:Lc8/CJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lc8/CJb;->instance:Lc8/CJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/lang/Number;

    sget-object v2, Lc8/CJb;->instance:Lc8/CJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lc8/nJb;->instance:Lc8/nJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lc8/nJb;->instance:Lc8/nJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lc8/LJb;->instance:Lc8/LJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, [Ljava/lang/Object;

    sget-object v2, Lc8/kJb;->instance:Lc8/kJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/lang/Class;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/util/Locale;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/util/Currency;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/util/TimeZone;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/util/UUID;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/net/URI;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/net/URL;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/util/regex/Pattern;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    const-class v1, Ljava/nio/charset/Charset;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public static final getGlobalInstance()Lc8/HJb;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lc8/HJb;->globalInstance:Lc8/HJb;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Lc8/DJb;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lc8/DJb;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lc8/PJb;->get(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc8/DJb;

    .line 120
    .local v11, "writer":Lc8/DJb;
    if-nez v11, :cond_0

    .line 122
    const-class v12, Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 123
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    new-instance v13, Lc8/zJb;

    invoke-direct {v13}, Lc8/zJb;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 186
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lc8/PJb;->get(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "writer":Lc8/DJb;
    check-cast v11, Lc8/DJb;

    .restart local v11    # "writer":Lc8/DJb;
    :cond_0
    move-object v10, v11

    .line 188
    :goto_1
    return-object v10

    .line 124
    :cond_1
    const-class v12, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 125
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    new-instance v13, Lc8/yJb;

    invoke-direct {v13}, Lc8/yJb;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_2
    const-class v12, Ljava/util/Collection;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 127
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    sget-object v13, Lc8/pJb;->instance:Lc8/pJb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_3
    const-class v12, Ljava/util/Date;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 129
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    sget-object v13, Lc8/qJb;->instance:Lc8/qJb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_4
    const-class v12, Lc8/BIb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 131
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    sget-object v13, Lc8/AJb;->instance:Lc8/AJb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_5
    const-class v12, Lc8/vJb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 133
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    sget-object v13, Lc8/AJb;->instance:Lc8/AJb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 134
    :cond_6
    const-class v12, Lc8/DIb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 135
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    sget-object v13, Lc8/AJb;->instance:Lc8/AJb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 136
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-nez v12, :cond_8

    .line 137
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    .local v8, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v8, :cond_9

    const-class v12, Ljava/lang/Object;

    if-eq v8, v12, :cond_9

    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 138
    .end local v8    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    new-instance v13, Lc8/rJb;

    invoke-direct {v13}, Lc8/rJb;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 139
    .restart local v8    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 140
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 141
    .local v3, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lc8/HJb;->get(Ljava/lang/Class;)Lc8/DJb;

    move-result-object v2

    .line 142
    .local v2, "compObjectSerializer":Lc8/DJb;
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    new-instance v13, Lc8/lJb;

    invoke-direct {v13, v3, v2}, Lc8/lJb;-><init>(Ljava/lang/Class;Lc8/DJb;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 143
    .end local v2    # "compObjectSerializer":Lc8/DJb;
    .end local v3    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    const-class v12, Ljava/lang/Throwable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 144
    new-instance v7, Lc8/xJb;

    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v12}, Lc8/xJb;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/PropertyNamingStrategy;)V

    .line 145
    .local v7, "serializer":Lc8/xJb;
    iget v12, v7, Lc8/xJb;->features:I

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v13, v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v12, v13

    iput v12, v7, Lc8/xJb;->features:I

    .line 146
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v7}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 147
    .end local v7    # "serializer":Lc8/xJb;
    :cond_b
    const-class v12, Ljava/util/TimeZone;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 148
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    sget-object v13, Lc8/AJb;->instance:Lc8/AJb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 149
    :cond_c
    const-class v12, Ljava/nio/charset/Charset;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 150
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    sget-object v13, Lc8/AJb;->instance:Lc8/AJb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 151
    :cond_d
    const-class v12, Ljava/util/Enumeration;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 152
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    sget-object v13, Lc8/AJb;->instance:Lc8/AJb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 153
    :cond_e
    const-class v12, Ljava/util/Calendar;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 154
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    sget-object v13, Lc8/qJb;->instance:Lc8/qJb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 156
    :cond_f
    const/4 v4, 0x0

    .line 157
    .local v4, "isCglibProxy":Z
    const/4 v5, 0x0

    .line 158
    .local v5, "isJavassistProxy":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v13

    array-length v14, v13

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v14, :cond_11

    aget-object v6, v13, v12

    .line 159
    .local v6, "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "net.sf.cglib.proxy.Factory"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 160
    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "org.springframework.cglib.proxy.Factory"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 161
    :cond_10
    const/4 v4, 0x1

    .line 169
    .end local v6    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_11
    :goto_3
    if-nez v4, :cond_12

    if-eqz v5, :cond_15

    .line 170
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    .line 172
    .local v9, "superClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lc8/HJb;->get(Ljava/lang/Class;)Lc8/DJb;

    move-result-object v10

    .line 173
    .local v10, "superWriter":Lc8/DJb;
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v10}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 163
    .end local v9    # "superClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "superWriter":Lc8/DJb;
    .restart local v6    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_13
    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "javassist.util.proxy.ProxyObject"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 164
    const/4 v5, 0x1

    .line 165
    goto :goto_3

    .line 158
    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 177
    .end local v6    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_15
    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "className":Ljava/lang/String;
    const-string/jumbo v12, "android.net.Uri$"

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 180
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    sget-object v13, Lc8/AJb;->instance:Lc8/AJb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 182
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/HJb;->serializers:Lc8/PJb;

    new-instance v13, Lc8/xJb;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/HJb;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v14}, Lc8/xJb;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/PropertyNamingStrategy;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getTypeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lc8/HJb;->typeKey:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/reflect/Type;Lc8/DJb;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/reflect/Type;
    .param p2, "value"    # Lc8/DJb;

    .prologue
    .line 192
    iget-object v0, p0, Lc8/HJb;->serializers:Lc8/PJb;

    invoke-virtual {v0, p1, p2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public registerIfNotExists(Ljava/lang/Class;)Lc8/DJb;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lc8/DJb;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lc8/HJb;->registerIfNotExists(Ljava/lang/Class;IZZZZ)Lc8/DJb;

    move-result-object v0

    return-object v0
.end method

.method public registerIfNotExists(Ljava/lang/Class;IZZZZ)Lc8/DJb;
    .locals 9
    .param p2, "classModifers"    # I
    .param p3, "fieldOnly"    # Z
    .param p4, "jsonTypeSupport"    # Z
    .param p5, "jsonFieldSupport"    # Z
    .param p6, "fieldGenericSupport"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;IZZZZ)",
            "Lc8/DJb;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lc8/HJb;->serializers:Lc8/PJb;

    invoke-virtual {v1, p1}, Lc8/PJb;->get(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/DJb;

    .line 72
    .local v0, "serializer":Lc8/DJb;
    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lc8/xJb;

    .end local v0    # "serializer":Lc8/DJb;
    const/4 v3, 0x0

    iget-object v8, p0, Lc8/HJb;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lc8/xJb;-><init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V

    .line 82
    .restart local v0    # "serializer":Lc8/DJb;
    iget-object v1, p0, Lc8/HJb;->serializers:Lc8/PJb;

    invoke-virtual {v1, p1, v0}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return-object v0
.end method

.method public setTypeKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeKey"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lc8/HJb;->typeKey:Ljava/lang/String;

    .line 207
    return-void
.end method
