.class public Lc8/rJb;
.super Ljava/lang/Object;
.source "EnumSerializer.java"

# interfaces
.implements Lc8/DJb;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lc8/wJb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 7
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
    const/4 v4, 0x0

    .line 26
    iget-object v2, p1, Lc8/wJb;->out:Lc8/JJb;

    .line 28
    .local v2, "out":Lc8/JJb;
    iget v5, v2, Lc8/JJb;->features:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    move-object v0, p2

    .line 29
    check-cast v0, Ljava/lang/Enum;

    .line 31
    .local v0, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "name":Ljava/lang/String;
    iget v5, v2, Lc8/JJb;->features:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 34
    .local v3, "userSingleQuote":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 35
    invoke-virtual {v2, v1}, Lc8/JJb;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 43
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "userSingleQuote":Z
    :goto_1
    return-void

    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    move v3, v4

    .line 32
    goto :goto_0

    .line 37
    .restart local v3    # "userSingleQuote":Z
    :cond_1
    invoke-virtual {v2, v1, v4, v4}, Lc8/JJb;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "userSingleQuote":Z
    :cond_2
    move-object v0, p2

    .line 40
    check-cast v0, Ljava/lang/Enum;

    .line 41
    .restart local v0    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v2, v4}, Lc8/JJb;->writeInt(I)V

    goto :goto_1
.end method
