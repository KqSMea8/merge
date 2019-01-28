.class public Lc8/mld;
.super Lc8/old;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/pld;->createBoundField(Lc8/Gjd;Ljava/lang/reflect/Field;Ljava/lang/String;Lc8/omd;ZZ)Lc8/old;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/pld;

.field final synthetic val$context:Lc8/Gjd;

.field final synthetic val$field:Ljava/lang/reflect/Field;

.field final synthetic val$fieldType:Lc8/omd;

.field final synthetic val$isPrimitive:Z

.field final synthetic val$jsonAdapterPresent:Z

.field final synthetic val$typeAdapter:Lc8/Vjd;


# direct methods
.method constructor <init>(Lc8/pld;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLc8/Vjd;Lc8/Gjd;Lc8/omd;Z)V
    .locals 0
    .param p1, "this$0"    # Lc8/pld;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "serialized"    # Z
    .param p4, "deserialized"    # Z

    .prologue
    .line 118
    iput-object p1, p0, Lc8/mld;->this$0:Lc8/pld;

    iput-object p5, p0, Lc8/mld;->val$field:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lc8/mld;->val$jsonAdapterPresent:Z

    iput-object p7, p0, Lc8/mld;->val$typeAdapter:Lc8/Vjd;

    iput-object p8, p0, Lc8/mld;->val$context:Lc8/Gjd;

    iput-object p9, p0, Lc8/mld;->val$fieldType:Lc8/omd;

    iput-boolean p10, p0, Lc8/mld;->val$isPrimitive:Z

    invoke-direct {p0, p2, p3, p4}, Lc8/old;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method read(Lc8/qmd;Ljava/lang/Object;)V
    .locals 2
    .param p1, "reader"    # Lc8/qmd;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v1, p0, Lc8/mld;->val$typeAdapter:Lc8/Vjd;

    invoke-virtual {v1, p1}, Lc8/Vjd;->read(Lc8/qmd;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "fieldValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lc8/mld;->val$isPrimitive:Z

    if-nez v1, :cond_1

    .line 131
    :cond_0
    iget-object v1, p0, Lc8/mld;->val$field:Ljava/lang/reflect/Field;

    invoke-static {v1, p2, v0}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    :cond_1
    return-void
.end method

.method write(Lc8/smd;Ljava/lang/Object;)V
    .locals 5
    .param p1, "writer"    # Lc8/smd;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v2, p0, Lc8/mld;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, "fieldValue":Ljava/lang/Object;
    iget-boolean v2, p0, Lc8/mld;->val$jsonAdapterPresent:Z

    if-eqz v2, :cond_0

    iget-object v1, p0, Lc8/mld;->val$typeAdapter:Lc8/Vjd;

    .line 125
    .local v1, "t":Lc8/Vjd;
    :goto_0
    invoke-virtual {v1, p1, v0}, Lc8/Vjd;->write(Lc8/smd;Ljava/lang/Object;)V

    .line 126
    return-void

    .line 123
    .end local v1    # "t":Lc8/Vjd;
    :cond_0
    new-instance v1, Lc8/yld;

    iget-object v2, p0, Lc8/mld;->val$context:Lc8/Gjd;

    iget-object v3, p0, Lc8/mld;->val$typeAdapter:Lc8/Vjd;

    iget-object v4, p0, Lc8/mld;->val$fieldType:Lc8/omd;

    .line 124
    invoke-virtual {v4}, Lc8/omd;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lc8/yld;-><init>(Lc8/Gjd;Lc8/Vjd;Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method

.method public writeField(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-boolean v2, p0, Lc8/mld;->serialized:Z

    if-nez v2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 136
    :cond_1
    iget-object v2, p0, Lc8/mld;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    .local v0, "fieldValue":Ljava/lang/Object;
    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
