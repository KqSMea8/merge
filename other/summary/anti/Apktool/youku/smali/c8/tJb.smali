.class public final Lc8/tJb;
.super Ljava/lang/Object;
.source "FieldSerializer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/sJb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lc8/tJb;",
        ">;"
    }
.end annotation


# instance fields
.field protected final features:I

.field public final fieldInfo:Lc8/NJb;

.field protected final format:Ljava/lang/String;

.field protected name_chars:[C

.field private runtimeInfo:Lc8/sJb;

.field protected final writeNull:Z


# direct methods
.method public constructor <init>(Lc8/NJb;)V
    .locals 12
    .param p1, "fieldInfo"    # Lc8/NJb;

    .prologue
    const/16 v11, 0x22

    const/4 v7, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lc8/tJb;->fieldInfo:Lc8/NJb;

    .line 41
    const/4 v5, 0x0

    .line 42
    .local v5, "writeNull":Z
    invoke-virtual {p1}, Lc8/NJb;->getAnnotation()Lc8/JIb;

    move-result-object v0

    .line 43
    .local v0, "annotation":Lc8/JIb;
    const/4 v2, 0x0

    .line 44
    .local v2, "format":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 45
    invoke-interface {v0}, Lc8/JIb;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_1

    aget-object v1, v8, v6

    .line 46
    .local v1, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v1, v10, :cond_0

    .line 47
    const/4 v5, 0x1

    .line 45
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_1
    invoke-interface {v0}, Lc8/JIb;->format()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 55
    const/4 v2, 0x0

    .line 58
    :cond_2
    invoke-interface {v0}, Lc8/JIb;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v6

    iput v6, p0, Lc8/tJb;->features:I

    .line 62
    :goto_1
    iput-boolean v5, p0, Lc8/tJb;->writeNull:Z

    .line 63
    iput-object v2, p0, Lc8/tJb;->format:Ljava/lang/String;

    .line 65
    iget-object v3, p1, Lc8/NJb;->name:Ljava/lang/String;

    .line 66
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 67
    .local v4, "nameLen":I
    add-int/lit8 v6, v4, 0x3

    new-array v6, v6, [C

    iput-object v6, p0, Lc8/tJb;->name_chars:[C

    .line 68
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v8, p0, Lc8/tJb;->name_chars:[C

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v6, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 69
    iget-object v6, p0, Lc8/tJb;->name_chars:[C

    aput-char v11, v6, v7

    .line 70
    iget-object v6, p0, Lc8/tJb;->name_chars:[C

    add-int/lit8 v7, v4, 0x1

    aput-char v11, v6, v7

    .line 71
    iget-object v6, p0, Lc8/tJb;->name_chars:[C

    add-int/lit8 v7, v4, 0x2

    const/16 v8, 0x3a

    aput-char v8, v6, v7

    .line 72
    return-void

    .line 60
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nameLen":I
    :cond_3
    iput v7, p0, Lc8/tJb;->features:I

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Lc8/tJb;)I
    .locals 2
    .param p1, "o"    # Lc8/tJb;

    .prologue
    .line 166
    iget-object v0, p0, Lc8/tJb;->fieldInfo:Lc8/NJb;

    iget-object v1, p1, Lc8/tJb;->fieldInfo:Lc8/NJb;

    invoke-virtual {v0, v1}, Lc8/NJb;->compareTo(Lc8/NJb;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lc8/tJb;

    invoke-virtual {p0, p1}, Lc8/tJb;->compareTo(Lc8/tJb;)I

    move-result v0

    return v0
.end method

.method public getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    :try_start_0
    iget-object v3, p0, Lc8/tJb;->fieldInfo:Lc8/NJb;

    invoke-virtual {v3, p1}, Lc8/NJb;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lc8/tJb;->fieldInfo:Lc8/NJb;

    iget-object v3, v3, Lc8/NJb;->method:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/tJb;->fieldInfo:Lc8/NJb;

    iget-object v1, v3, Lc8/NJb;->method:Ljava/lang/reflect/Method;

    :goto_0
    check-cast v1, Ljava/lang/reflect/Member;

    .line 98
    .local v1, "member":Ljava/lang/reflect/Member;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "qualifiedName":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get property error\u3002 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 94
    .end local v1    # "member":Ljava/lang/reflect/Member;
    .end local v2    # "qualifiedName":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lc8/tJb;->fieldInfo:Lc8/NJb;

    iget-object v1, v3, Lc8/NJb;->field:Ljava/lang/reflect/Field;

    goto :goto_0
.end method

.method public writePrefix(Lc8/wJb;)V
    .locals 5
    .param p1, "serializer"    # Lc8/wJb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 75
    iget-object v1, p1, Lc8/wJb;->out:Lc8/JJb;

    .line 77
    .local v1, "out":Lc8/JJb;
    iget v0, v1, Lc8/JJb;->features:I

    .line 79
    .local v0, "featurs":I
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    .line 80
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lc8/tJb;->fieldInfo:Lc8/NJb;

    iget-object v2, v2, Lc8/NJb;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lc8/JJb;->writeFieldName(Ljava/lang/String;Z)V

    .line 88
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v2, p0, Lc8/tJb;->name_chars:[C

    const/4 v3, 0x0

    iget-object v4, p0, Lc8/tJb;->name_chars:[C

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lc8/JJb;->write([CII)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v2, p0, Lc8/tJb;->fieldInfo:Lc8/NJb;

    iget-object v2, v2, Lc8/NJb;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lc8/JJb;->writeFieldName(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public writeValue(Lc8/wJb;Ljava/lang/Object;)V
    .locals 9
    .param p1, "serializer"    # Lc8/wJb;
    .param p2, "propertyValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v5, p0, Lc8/tJb;->format:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 106
    iget-object v5, p0, Lc8/tJb;->format:Ljava/lang/String;

    invoke-virtual {p1, p2, v5}, Lc8/wJb;->writeWithFormat(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v5, p0, Lc8/tJb;->runtimeInfo:Lc8/sJb;

    if-nez v5, :cond_1

    .line 113
    if-nez p2, :cond_2

    .line 114
    iget-object v5, p0, Lc8/tJb;->fieldInfo:Lc8/NJb;

    iget-object v1, v5, Lc8/NJb;->fieldClass:Ljava/lang/Class;

    .line 119
    .local v1, "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    iget-object v5, p1, Lc8/wJb;->config:Lc8/HJb;

    invoke-virtual {v5, v1}, Lc8/HJb;->get(Ljava/lang/Class;)Lc8/DJb;

    move-result-object v0

    .line 120
    .local v0, "fieldSerializer":Lc8/DJb;
    new-instance v5, Lc8/sJb;

    invoke-direct {v5, v0, v1}, Lc8/sJb;-><init>(Lc8/DJb;Ljava/lang/Class;)V

    iput-object v5, p0, Lc8/tJb;->runtimeInfo:Lc8/sJb;

    .line 123
    .end local v0    # "fieldSerializer":Lc8/DJb;
    .end local v1    # "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v2, p0, Lc8/tJb;->runtimeInfo:Lc8/sJb;

    .line 125
    .local v2, "runtimeInfo":Lc8/sJb;
    if-nez p2, :cond_6

    .line 126
    iget v5, p0, Lc8/tJb;->features:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    const-class v5, Ljava/lang/Number;

    iget-object v6, v2, Lc8/sJb;->runtimeFieldClass:Ljava/lang/Class;

    .line 127
    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 128
    iget-object v5, p1, Lc8/wJb;->out:Lc8/JJb;

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Lc8/JJb;->write(I)V

    goto :goto_0

    .line 116
    .end local v2    # "runtimeInfo":Lc8/sJb;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .restart local v1    # "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 130
    .end local v1    # "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "runtimeInfo":Lc8/sJb;
    :cond_3
    iget v5, p0, Lc8/tJb;->features:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    const-class v5, Ljava/lang/Boolean;

    iget-object v6, v2, Lc8/sJb;->runtimeFieldClass:Ljava/lang/Class;

    if-ne v5, v6, :cond_4

    .line 132
    iget-object v5, p1, Lc8/wJb;->out:Lc8/JJb;

    const-string/jumbo v6, "false"

    invoke-virtual {v5, v6}, Lc8/JJb;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_4
    iget v5, p0, Lc8/tJb;->features:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    const-class v5, Ljava/util/Collection;

    iget-object v6, v2, Lc8/sJb;->runtimeFieldClass:Ljava/lang/Class;

    .line 135
    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 136
    iget-object v5, p1, Lc8/wJb;->out:Lc8/JJb;

    const-string/jumbo v6, "[]"

    invoke-virtual {v5, v6}, Lc8/JJb;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_5
    iget-object v5, v2, Lc8/sJb;->fieldSerializer:Lc8/DJb;

    const/4 v6, 0x0

    iget-object v7, p0, Lc8/tJb;->fieldInfo:Lc8/NJb;

    iget-object v7, v7, Lc8/NJb;->name:Ljava/lang/String;

    iget-object v8, v2, Lc8/sJb;->runtimeFieldClass:Ljava/lang/Class;

    invoke-interface {v5, p1, v6, v7, v8}, Lc8/DJb;->write(Lc8/wJb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    .line 144
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 145
    .local v3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, v2, Lc8/sJb;->runtimeFieldClass:Ljava/lang/Class;

    if-ne v3, v5, :cond_7

    .line 146
    iget-object v5, v2, Lc8/sJb;->fieldSerializer:Lc8/DJb;

    iget-object v6, p0, Lc8/tJb;->fieldInfo:Lc8/NJb;

    iget-object v6, v6, Lc8/NJb;->name:Ljava/lang/String;

    iget-object v7, p0, Lc8/tJb;->fieldInfo:Lc8/NJb;

    iget-object v7, v7, Lc8/NJb;->fieldType:Ljava/lang/reflect/Type;

    invoke-interface {v5, p1, p2, v6, v7}, Lc8/DJb;->write(Lc8/wJb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    .line 150
    :cond_7
    iget-object v5, p1, Lc8/wJb;->config:Lc8/HJb;

    invoke-virtual {v5, v3}, Lc8/HJb;->get(Ljava/lang/Class;)Lc8/DJb;

    move-result-object v4

    .line 151
    .local v4, "valueSerializer":Lc8/DJb;
    iget-object v5, p0, Lc8/tJb;->fieldInfo:Lc8/NJb;

    iget-object v5, v5, Lc8/NJb;->name:Ljava/lang/String;

    iget-object v6, p0, Lc8/tJb;->fieldInfo:Lc8/NJb;

    iget-object v6, v6, Lc8/NJb;->fieldType:Ljava/lang/reflect/Type;

    invoke-interface {v4, p1, p2, v5, v6}, Lc8/DJb;->write(Lc8/wJb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0
.end method
