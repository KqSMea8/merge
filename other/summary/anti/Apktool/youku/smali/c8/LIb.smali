.class public Lc8/LIb;
.super Lc8/fJb;
.source "DefaultFieldDeserializer.java"


# instance fields
.field protected fieldValueDeserilizer:Lc8/hJb;


# direct methods
.method public constructor <init>(Lc8/XIb;Ljava/lang/Class;Lc8/NJb;)V
    .locals 1
    .param p1, "mapping"    # Lc8/XIb;
    .param p3, "fieldInfo"    # Lc8/NJb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/XIb;",
            "Ljava/lang/Class",
            "<*>;",
            "Lc8/NJb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Lc8/fJb;-><init>(Ljava/lang/Class;Lc8/NJb;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public getFieldValueDeserilizer(Lc8/XIb;)Lc8/hJb;
    .locals 2
    .param p1, "config"    # Lc8/XIb;

    .prologue
    .line 22
    iget-object v0, p0, Lc8/LIb;->fieldValueDeserilizer:Lc8/hJb;

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lc8/LIb;->fieldInfo:Lc8/NJb;

    iget-object v0, v0, Lc8/NJb;->fieldClass:Ljava/lang/Class;

    iget-object v1, p0, Lc8/LIb;->fieldInfo:Lc8/NJb;

    iget-object v1, v1, Lc8/NJb;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0, v1}, Lc8/XIb;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v0

    iput-object v0, p0, Lc8/LIb;->fieldValueDeserilizer:Lc8/hJb;

    .line 26
    :cond_0
    iget-object v0, p0, Lc8/LIb;->fieldValueDeserilizer:Lc8/hJb;

    return-object v0
.end method

.method public parseField(Lc8/NIb;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 8
    .param p1, "parser"    # Lc8/NIb;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/NIb;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Lc8/LIb;->fieldValueDeserilizer:Lc8/hJb;

    if-nez v5, :cond_0

    .line 32
    iget-object v5, p1, Lc8/NIb;->config:Lc8/XIb;

    iget-object v6, p0, Lc8/LIb;->fieldInfo:Lc8/NJb;

    iget-object v6, v6, Lc8/NJb;->fieldClass:Ljava/lang/Class;

    iget-object v7, p0, Lc8/LIb;->fieldInfo:Lc8/NJb;

    iget-object v7, v7, Lc8/NJb;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {v5, v6, v7}, Lc8/XIb;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v5

    iput-object v5, p0, Lc8/LIb;->fieldValueDeserilizer:Lc8/hJb;

    .line 35
    :cond_0
    instance-of v5, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_1

    .line 36
    iget-object v2, p1, Lc8/NIb;->contex:Lc8/WIb;

    .line 37
    .local v2, "objContext":Lc8/WIb;
    iput-object p3, v2, Lc8/WIb;->type:Ljava/lang/reflect/Type;

    .line 40
    .end local v2    # "objContext":Lc8/WIb;
    :cond_1
    iget-object v5, p0, Lc8/LIb;->fieldInfo:Lc8/NJb;

    iget-object v1, v5, Lc8/NJb;->format:Ljava/lang/String;

    .line 42
    .local v1, "format":Ljava/lang/String;
    if-eqz v1, :cond_3

    iget-object v5, p0, Lc8/LIb;->fieldValueDeserilizer:Lc8/hJb;

    instance-of v5, v5, Lc8/qJb;

    if-eqz v5, :cond_3

    .line 43
    iget-object v5, p0, Lc8/LIb;->fieldValueDeserilizer:Lc8/hJb;

    check-cast v5, Lc8/qJb;

    iget-object v6, p0, Lc8/LIb;->fieldInfo:Lc8/NJb;

    iget-object v6, v6, Lc8/NJb;->fieldType:Ljava/lang/reflect/Type;

    iget-object v7, p0, Lc8/LIb;->fieldInfo:Lc8/NJb;

    iget-object v7, v7, Lc8/NJb;->name:Ljava/lang/String;

    invoke-virtual {v5, p1, v6, v7, v1}, Lc8/qJb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 47
    .local v4, "value":Ljava/lang/Object;
    :goto_0
    iget v5, p1, Lc8/NIb;->resolveStatus:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 48
    invoke-virtual {p1}, Lc8/NIb;->getLastResolveTask()Lc8/MIb;

    move-result-object v3

    .line 49
    .local v3, "task":Lc8/MIb;
    iput-object p0, v3, Lc8/MIb;->fieldDeserializer:Lc8/fJb;

    .line 50
    iget-object v5, p1, Lc8/NIb;->contex:Lc8/WIb;

    iput-object v5, v3, Lc8/MIb;->ownerContext:Lc8/WIb;

    .line 51
    const/4 v5, 0x0

    iput v5, p1, Lc8/NIb;->resolveStatus:I

    .line 69
    .end local v3    # "task":Lc8/MIb;
    :cond_2
    :goto_1
    return-void

    .line 45
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Lc8/LIb;->fieldValueDeserilizer:Lc8/hJb;

    iget-object v6, p0, Lc8/LIb;->fieldInfo:Lc8/NJb;

    iget-object v6, v6, Lc8/NJb;->fieldType:Ljava/lang/reflect/Type;

    iget-object v7, p0, Lc8/LIb;->fieldInfo:Lc8/NJb;

    iget-object v7, v7, Lc8/NJb;->name:Ljava/lang/String;

    invoke-interface {v5, p1, v6, v7}, Lc8/hJb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 53
    :cond_4
    if-nez p2, :cond_5

    .line 54
    iget-object v5, p0, Lc8/LIb;->fieldInfo:Lc8/NJb;

    iget-object v5, v5, Lc8/NJb;->name:Ljava/lang/String;

    invoke-interface {p4, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 56
    :cond_5
    if-nez v4, :cond_6

    .line 57
    iget-object v5, p0, Lc8/LIb;->fieldInfo:Lc8/NJb;

    iget-object v0, v5, Lc8/NJb;->fieldClass:Ljava/lang/Class;

    .line 58
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v5, :cond_2

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v5, :cond_2

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v5, :cond_2

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v5, :cond_2

    .line 66
    .end local v0    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    invoke-virtual {p0, p2, v4}, Lc8/LIb;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method
