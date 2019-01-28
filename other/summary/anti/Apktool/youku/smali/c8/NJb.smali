.class public Lc8/NJb;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lc8/NJb;",
        ">;"
    }
.end annotation


# instance fields
.field public final alternateNames:[Ljava/lang/String;

.field public final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldAccess:Z

.field private final fieldAnnotation:Lc8/JIb;

.field public final fieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final fieldTransient:Z

.field public final fieldType:Ljava/lang/reflect/Type;

.field public final format:Ljava/lang/String;

.field public final getOnly:Z

.field public final isEnum:Z

.field public final method:Ljava/lang/reflect/Method;

.field private final methodAnnotation:Lc8/JIb;

.field public final name:Ljava/lang/String;

.field public final nameHashCode:J

.field private ordinal:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "field"    # Ljava/lang/reflect/Field;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v5, 0x0

    iput v5, p0, Lc8/NJb;->ordinal:I

    .line 50
    iput-object p1, p0, Lc8/NJb;->name:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lc8/NJb;->declaringClass:Ljava/lang/Class;

    .line 52
    iput-object p3, p0, Lc8/NJb;->fieldClass:Ljava/lang/Class;

    .line 53
    iput-object p4, p0, Lc8/NJb;->fieldType:Ljava/lang/reflect/Type;

    .line 54
    const/4 v5, 0x0

    iput-object v5, p0, Lc8/NJb;->method:Ljava/lang/reflect/Method;

    .line 55
    iput-object p5, p0, Lc8/NJb;->field:Ljava/lang/reflect/Field;

    .line 56
    iput p6, p0, Lc8/NJb;->ordinal:I

    .line 58
    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    iput-boolean v5, p0, Lc8/NJb;->isEnum:Z

    .line 60
    const/4 v5, 0x0

    iput-object v5, p0, Lc8/NJb;->fieldAnnotation:Lc8/JIb;

    .line 61
    const/4 v5, 0x0

    iput-object v5, p0, Lc8/NJb;->methodAnnotation:Lc8/JIb;

    .line 63
    if-eqz p5, :cond_2

    .line 64
    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 65
    .local v4, "modifiers":I
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_0

    iget-object v5, p0, Lc8/NJb;->method:Ljava/lang/reflect/Method;

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lc8/NJb;->fieldAccess:Z

    .line 66
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v5

    iput-boolean v5, p0, Lc8/NJb;->fieldTransient:Z

    .line 71
    .end local v4    # "modifiers":I
    :goto_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lc8/NJb;->getOnly:Z

    .line 73
    const-wide/32 v2, -0x7ee3623b

    .line 74
    .local v2, "hashCode":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 76
    .local v0, "c":C
    int-to-long v6, v0

    xor-long/2addr v2, v6

    .line 77
    const-wide/32 v6, 0x1000193

    mul-long/2addr v2, v6

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 65
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "hashCode":J
    .restart local v4    # "modifiers":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 68
    .end local v4    # "modifiers":I
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lc8/NJb;->fieldAccess:Z

    .line 69
    const/4 v5, 0x0

    iput-boolean v5, p0, Lc8/NJb;->fieldTransient:Z

    goto :goto_1

    .line 79
    .restart local v1    # "i":I
    .restart local v2    # "hashCode":J
    :cond_3
    iput-wide v2, p0, Lc8/NJb;->nameHashCode:J

    .line 81
    const/4 v5, 0x0

    iput-object v5, p0, Lc8/NJb;->format:Ljava/lang/String;

    .line 82
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lc8/NJb;->alternateNames:[Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILc8/JIb;Lc8/JIb;Z)V
    .locals 24
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p5, "type"    # Ljava/lang/reflect/Type;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .param p8, "methodAnnotation"    # Lc8/JIb;
    .param p9, "fieldAnnotation"    # Lc8/JIb;
    .param p10, "fieldGenericSupport"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "II",
            "Lc8/JIb;",
            "Lc8/JIb;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/NJb;->ordinal:I

    .line 95
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/NJb;->name:Ljava/lang/String;

    .line 96
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/NJb;->method:Ljava/lang/reflect/Method;

    .line 97
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/NJb;->field:Ljava/lang/reflect/Field;

    .line 98
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lc8/NJb;->ordinal:I

    .line 99
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/NJb;->methodAnnotation:Lc8/JIb;

    .line 100
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/NJb;->fieldAnnotation:Lc8/JIb;

    .line 102
    invoke-virtual/range {p0 .. p0}, Lc8/NJb;->getAnnotation()Lc8/JIb;

    move-result-object v2

    .line 103
    .local v2, "annotation":Lc8/JIb;
    const/4 v8, 0x0

    .line 104
    .local v8, "format":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 105
    invoke-interface {v2}, Lc8/JIb;->format()Ljava/lang/String;

    move-result-object v8

    .line 107
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_0

    .line 108
    const/4 v8, 0x0

    .line 111
    :cond_0
    invoke-interface {v2}, Lc8/JIb;->alternateNames()[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/NJb;->alternateNames:[Ljava/lang/String;

    .line 115
    :goto_0
    move-object/from16 v0, p0

    iput-object v8, v0, Lc8/NJb;->format:Ljava/lang/String;

    .line 117
    if-eqz p3, :cond_5

    .line 118
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    .line 119
    .local v14, "modifiers":I
    if-eqz p2, :cond_1

    and-int/lit8 v22, v14, 0x1

    if-eqz v22, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    :cond_1
    const/16 v22, 0x1

    :goto_1
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/NJb;->fieldAccess:Z

    .line 120
    and-int/lit16 v0, v14, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_4

    const/16 v22, 0x1

    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/NJb;->fieldTransient:Z

    .line 126
    .end local v14    # "modifiers":I
    :goto_3
    const-wide/32 v10, -0x7ee3623b

    .line 127
    .local v10, "hashCode":J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_6

    .line 128
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 129
    .local v4, "c":C
    int-to-long v0, v4

    move-wide/from16 v22, v0

    xor-long v10, v10, v22

    .line 130
    const-wide/32 v22, 0x1000193

    mul-long v10, v10, v22

    .line 127
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 113
    .end local v4    # "c":C
    .end local v10    # "hashCode":J
    .end local v12    # "i":I
    :cond_2
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/NJb;->alternateNames:[Ljava/lang/String;

    goto :goto_0

    .line 119
    .restart local v14    # "modifiers":I
    :cond_3
    const/16 v22, 0x0

    goto :goto_1

    .line 120
    :cond_4
    const/16 v22, 0x0

    goto :goto_2

    .line 122
    .end local v14    # "modifiers":I
    :cond_5
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/NJb;->fieldAccess:Z

    .line 123
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/NJb;->fieldTransient:Z

    goto :goto_3

    .line 132
    .restart local v10    # "hashCode":J
    .restart local v12    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iput-wide v10, v0, Lc8/NJb;->nameHashCode:J

    .line 136
    if-eqz p2, :cond_f

    .line 137
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v17

    .line 138
    .local v17, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 139
    const/16 v22, 0x0

    aget-object v6, v17, v22

    .line 140
    .local v6, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v22, Ljava/lang/Class;

    move-object/from16 v0, v22

    if-eq v6, v0, :cond_7

    const-class v22, Ljava/lang/String;

    move-object/from16 v0, v22

    if-eq v6, v0, :cond_7

    .line 142
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 143
    :cond_7
    move-object v7, v6

    .line 147
    .local v7, "fieldType":Ljava/lang/reflect/Type;
    :goto_5
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/NJb;->getOnly:Z

    .line 157
    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/NJb;->declaringClass:Ljava/lang/Class;

    .line 172
    .end local v17    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_7
    if-eqz p4, :cond_16

    const-class v22, Ljava/lang/Object;

    move-object/from16 v0, v22

    if-ne v6, v0, :cond_16

    instance-of v0, v7, Ljava/lang/reflect/TypeVariable;

    move/from16 v22, v0

    if-eqz v22, :cond_16

    move-object/from16 v20, v7

    .line 176
    check-cast v20, Ljava/lang/reflect/TypeVariable;

    .line 177
    .local v20, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v9, 0x0

    .line 179
    .local v9, "genericFieldType":Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    .line 180
    .local v3, "arguments":[Ljava/lang/reflect/Type;
    move-object/from16 v0, p5

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v18, p5

    .line 181
    check-cast v18, Ljava/lang/reflect/ParameterizedType;

    .line 182
    .local v18, "ptype":Ljava/lang/reflect/ParameterizedType;
    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 185
    .end local v18    # "ptype":Ljava/lang/reflect/ParameterizedType;
    :cond_8
    move-object/from16 v5, p4

    .local v5, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8
    if-eqz v5, :cond_13

    const-class v22, Ljava/lang/Object;

    move-object/from16 v0, v22

    if-eq v5, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NJb;->declaringClass:Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v5, v0, :cond_13

    .line 186
    invoke-virtual {v5}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v19

    .line 188
    .local v19, "superType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v15, v19

    .line 189
    check-cast v15, Ljava/lang/reflect/ParameterizedType;

    .line 190
    .local v15, "p_superType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    .line 191
    .local v16, "p_superType_args":[Ljava/lang/reflect/Type;
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-static {v0, v1, v3}, Lc8/NJb;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    .line 192
    move-object/from16 v3, v16

    .line 185
    .end local v15    # "p_superType":Ljava/lang/reflect/ParameterizedType;
    .end local v16    # "p_superType_args":[Ljava/lang/reflect/Type;
    :cond_9
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_8

    .line 145
    .end local v3    # "arguments":[Ljava/lang/reflect/Type;
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    .end local v9    # "genericFieldType":Ljava/lang/reflect/Type;
    .end local v19    # "superType":Ljava/lang/reflect/Type;
    .end local v20    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .restart local v17    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_a
    if-eqz p10, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v7, v22, v23

    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    :goto_9
    goto :goto_5

    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    :cond_b
    move-object v7, v6

    goto :goto_9

    .line 149
    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 150
    .restart local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v22, Ljava/lang/Class;

    move-object/from16 v0, v22

    if-ne v6, v0, :cond_d

    .line 151
    move-object v7, v6

    .line 155
    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    :goto_a
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/NJb;->getOnly:Z

    goto/16 :goto_6

    .line 153
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    :cond_d
    if-eqz p10, :cond_e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v7

    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    :goto_b
    goto :goto_a

    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    :cond_e
    move-object v7, v6

    goto :goto_b

    .line 159
    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_f
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 160
    .restart local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v22

    if-nez v22, :cond_10

    const-class v22, Ljava/lang/String;

    move-object/from16 v0, v22

    if-eq v6, v0, :cond_10

    .line 162
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 163
    :cond_10
    move-object v7, v6

    .line 168
    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    :goto_c
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/NJb;->declaringClass:Ljava/lang/Class;

    .line 169
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/NJb;->getOnly:Z

    goto/16 :goto_7

    .line 165
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    :cond_11
    if-eqz p10, :cond_12

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    :goto_d
    goto :goto_c

    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    :cond_12
    move-object v7, v6

    goto :goto_d

    .line 196
    .restart local v3    # "arguments":[Ljava/lang/reflect/Type;
    .restart local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v9    # "genericFieldType":Ljava/lang/reflect/Type;
    .restart local v20    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_13
    if-eqz v3, :cond_14

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NJb;->declaringClass:Ljava/lang/Class;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v21

    .line 198
    .local v21, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_e
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_14

    .line 199
    aget-object v22, v21, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 200
    aget-object v9, v3, v13

    .line 207
    .end local v13    # "j":I
    .end local v21    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_14
    if-eqz v9, :cond_16

    .line 208
    invoke-static {v9}, Lc8/RJb;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/NJb;->fieldClass:Ljava/lang/Class;

    .line 209
    move-object/from16 v0, p0

    iput-object v9, v0, Lc8/NJb;->fieldType:Ljava/lang/reflect/Type;

    .line 211
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/NJb;->isEnum:Z

    .line 233
    .end local v3    # "arguments":[Ljava/lang/reflect/Type;
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local p5    # "type":Ljava/lang/reflect/Type;
    :goto_f
    return-void

    .line 198
    .restart local v3    # "arguments":[Ljava/lang/reflect/Type;
    .restart local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "j":I
    .restart local v20    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .restart local v21    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .restart local p5    # "type":Ljava/lang/reflect/Type;
    :cond_15
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 216
    .end local v3    # "arguments":[Ljava/lang/reflect/Type;
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "genericFieldType":Ljava/lang/reflect/Type;
    .end local v13    # "j":I
    .end local v20    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v21    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_16
    move-object v9, v7

    .line 218
    .restart local v9    # "genericFieldType":Ljava/lang/reflect/Type;
    instance-of v0, v7, Ljava/lang/Class;

    move/from16 v22, v0

    if-nez v22, :cond_17

    .line 219
    if-eqz p5, :cond_18

    .end local p5    # "type":Ljava/lang/reflect/Type;
    :goto_10
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v0, v1, v7}, Lc8/NJb;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 220
    if-eq v9, v7, :cond_17

    .line 221
    instance-of v0, v9, Ljava/lang/reflect/ParameterizedType;

    move/from16 v22, v0

    if-eqz v22, :cond_19

    .line 222
    invoke-static {v9}, Lc8/RJb;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    .line 229
    :cond_17
    :goto_11
    move-object/from16 v0, p0

    iput-object v9, v0, Lc8/NJb;->fieldType:Ljava/lang/reflect/Type;

    .line 230
    move-object/from16 v0, p0

    iput-object v6, v0, Lc8/NJb;->fieldClass:Ljava/lang/Class;

    .line 232
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v22

    if-nez v22, :cond_1a

    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v22

    if-eqz v22, :cond_1a

    const/16 v22, 0x1

    :goto_12
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/NJb;->isEnum:Z

    goto :goto_f

    .restart local p5    # "type":Ljava/lang/reflect/Type;
    :cond_18
    move-object/from16 p5, p4

    .line 219
    goto :goto_10

    .line 223
    .end local p5    # "type":Ljava/lang/reflect/Type;
    :cond_19
    instance-of v0, v9, Ljava/lang/Class;

    move/from16 v22, v0

    if-eqz v22, :cond_17

    .line 224
    invoke-static {v9}, Lc8/RJb;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    goto :goto_11

    .line 232
    :cond_1a
    const/16 v22, 0x0

    goto :goto_12
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z
    .locals 10
    .param p0, "typeArgs"    # [Ljava/lang/reflect/Type;
    .param p1, "typeVariables"    # [Ljava/lang/reflect/TypeVariable;
    .param p2, "arguments"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 313
    if-eqz p2, :cond_0

    array-length v7, p1

    if-nez v7, :cond_2

    .line 314
    :cond_0
    const/4 v0, 0x0

    .line 338
    :cond_1
    return v0

    .line 317
    :cond_2
    const/4 v0, 0x0

    .line 318
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, p0

    if-ge v1, v7, :cond_1

    .line 319
    aget-object v6, p0, v1

    .line 320
    .local v6, "typeArg":Ljava/lang/reflect/Type;
    instance-of v7, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_4

    move-object v4, v6

    .line 321
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 322
    .local v4, "p_typeArg":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 323
    .local v5, "p_typeArg_args":[Ljava/lang/reflect/Type;
    invoke-static {v5, p1, p2}, Lc8/NJb;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-result v3

    .line 324
    .local v3, "p_changed":Z
    if-eqz v3, :cond_3

    .line 325
    new-instance v7, Lc8/QJb;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-direct {v7, v5, v8, v9}, Lc8/QJb;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    aput-object v7, p0, v1

    .line 326
    const/4 v0, 0x1

    .line 318
    .end local v3    # "p_changed":Z
    .end local v4    # "p_typeArg":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "p_typeArg_args":[Ljava/lang/reflect/Type;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    :cond_4
    instance-of v7, v6, Ljava/lang/reflect/TypeVariable;

    if-eqz v7, :cond_3

    .line 329
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v7, p1

    if-ge v2, v7, :cond_3

    .line 330
    aget-object v7, p1, v2

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 331
    aget-object v7, p2, v2

    aput-object v7, p0, v1

    .line 332
    const/4 v0, 0x1

    .line 329
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 20
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object/from16 v9, p2

    .line 309
    :goto_0
    return-object v9

    .line 240
    :cond_1
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v10, p2

    .line 241
    check-cast v10, Ljava/lang/reflect/GenericArrayType;

    .line 242
    .local v10, "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v10}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 243
    .local v6, "componentType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lc8/NJb;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 244
    .local v7, "componentTypeX":Ljava/lang/reflect/Type;
    if-eq v6, v7, :cond_2

    .line 245
    invoke-static {v7}, Lc8/RJb;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 246
    .local v9, "fieldTypeX":Ljava/lang/reflect/Type;
    goto :goto_0

    .end local v9    # "fieldTypeX":Ljava/lang/reflect/Type;
    :cond_2
    move-object/from16 v9, p2

    .line 249
    goto :goto_0

    .line 252
    .end local v6    # "componentType":Ljava/lang/reflect/Type;
    .end local v7    # "componentTypeX":Ljava/lang/reflect/Type;
    .end local v10    # "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    :cond_3
    invoke-static/range {p1 .. p1}, Lc8/RJb;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v9, p2

    .line 253
    goto :goto_0

    .line 256
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 257
    invoke-static/range {p1 .. p1}, Lc8/RJb;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 258
    .local v13, "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v13}, Lc8/RJb;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v14

    .local v14, "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v16, p2

    .line 259
    check-cast v16, Ljava/lang/reflect/TypeVariable;

    .line 261
    .local v16, "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v14}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_6

    .line 262
    invoke-virtual {v14}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    aget-object v18, v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 263
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v18

    aget-object p2, v18, v11

    move-object/from16 v9, p2

    .line 264
    goto :goto_0

    .line 261
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 269
    .end local v11    # "i":I
    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v14    # "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_6
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v15, p2

    .line 270
    check-cast v15, Ljava/lang/reflect/ParameterizedType;

    .line 272
    .local v15, "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 273
    .local v4, "arguments":[Ljava/lang/reflect/Type;
    const/4 v5, 0x0

    .line 274
    .local v5, "changed":Z
    const/16 v17, 0x0

    .line 275
    .local v17, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v3, 0x0

    .line 277
    .local v3, "actualTypes":[Ljava/lang/reflect/Type;
    const/4 v13, 0x0

    .line 278
    .restart local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v13, p1

    .line 279
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 280
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v17

    .line 286
    :cond_7
    :goto_2
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_c

    if-eqz v13, :cond_c

    .line 287
    aget-object v8, v4, v11

    .line 288
    .local v8, "feildTypeArguement":Ljava/lang/reflect/Type;
    instance-of v0, v8, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v16, v8

    .line 289
    check-cast v16, Ljava/lang/reflect/TypeVariable;

    .line 291
    .restart local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_b

    .line 292
    aget-object v18, v17, v12

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 293
    if-nez v3, :cond_8

    .line 294
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 296
    :cond_8
    aget-object v18, v3, v12

    aput-object v18, v4, v11

    .line 297
    const/4 v5, 0x1

    .line 291
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 281
    .end local v8    # "feildTypeArguement":Ljava/lang/reflect/Type;
    .end local v11    # "i":I
    .end local v12    # "j":I
    .end local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 282
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v13

    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 283
    .restart local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v17

    goto :goto_2

    .line 286
    .restart local v8    # "feildTypeArguement":Ljava/lang/reflect/Type;
    .restart local v11    # "i":I
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 302
    .end local v8    # "feildTypeArguement":Ljava/lang/reflect/Type;
    :cond_c
    if-eqz v5, :cond_d

    .line 303
    new-instance p2, Lc8/QJb;

    .end local p2    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v18

    .line 304
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v4, v1, v2}, Lc8/QJb;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .restart local p2    # "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v9, p2

    .line 305
    goto/16 :goto_0

    .end local v3    # "actualTypes":[Ljava/lang/reflect/Type;
    .end local v4    # "arguments":[Ljava/lang/reflect/Type;
    .end local v5    # "changed":Z
    .end local v11    # "i":I
    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v15    # "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    .end local v17    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_d
    move-object/from16 v9, p2

    .line 309
    goto/16 :goto_0
.end method


# virtual methods
.method public compareTo(Lc8/NJb;)I
    .locals 2
    .param p1, "o"    # Lc8/NJb;

    .prologue
    .line 346
    iget v0, p0, Lc8/NJb;->ordinal:I

    iget v1, p1, Lc8/NJb;->ordinal:I

    if-ge v0, v1, :cond_0

    .line 347
    const/4 v0, -0x1

    .line 354
    :goto_0
    return v0

    .line 350
    :cond_0
    iget v0, p0, Lc8/NJb;->ordinal:I

    iget v1, p1, Lc8/NJb;->ordinal:I

    if-le v0, v1, :cond_1

    .line 351
    const/4 v0, 0x1

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lc8/NJb;->name:Ljava/lang/String;

    iget-object v1, p1, Lc8/NJb;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lc8/NJb;

    invoke-virtual {p0, p1}, Lc8/NJb;->compareTo(Lc8/NJb;)I

    move-result v0

    return v0
.end method

.method public equals(Lc8/NJb;)Z
    .locals 2
    .param p1, "o"    # Lc8/NJb;

    .prologue
    const/4 v0, 0x1

    .line 358
    if-ne p1, p0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lc8/NJb;->compareTo(Lc8/NJb;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 373
    iget-boolean v1, p0, Lc8/NJb;->fieldAccess:Z

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lc8/NJb;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 378
    :goto_0
    return-object v0

    .line 377
    :cond_0
    iget-object v1, p0, Lc8/NJb;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lc8/NJb;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 378
    .local v0, "value":Ljava/lang/Object;
    goto :goto_0
.end method

.method public getAnnotation()Lc8/JIb;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lc8/NJb;->fieldAnnotation:Lc8/JIb;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lc8/NJb;->fieldAnnotation:Lc8/JIb;

    .line 369
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/NJb;->methodAnnotation:Lc8/JIb;

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "javaObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lc8/NJb;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lc8/NJb;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lc8/NJb;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lc8/NJb;->field:Ljava/lang/reflect/Field;

    invoke-static {v0, p1, p2}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lc8/NJb;->name:Ljava/lang/String;

    return-object v0
.end method
