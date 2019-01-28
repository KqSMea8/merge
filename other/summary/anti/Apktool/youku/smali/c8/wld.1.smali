.class public final Lc8/wld;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lc8/Wjd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleTypeFactory"
.end annotation


# instance fields
.field private final deserializer:Lc8/Ljd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Ljd",
            "<*>;"
        }
    .end annotation
.end field

.field private final exactType:Lc8/omd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/omd",
            "<*>;"
        }
    .end annotation
.end field

.field private final hierarchyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final matchRawType:Z

.field private final serializer:Lc8/Sjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Sjd",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lc8/omd;ZLjava/lang/Class;)V
    .locals 2
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .param p3, "matchRawType"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lc8/omd",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "exactType":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<*>;"
    .local p4, "hierarchyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    instance-of v0, p1, Lc8/Sjd;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lc8/Sjd;

    :goto_0
    iput-object v0, p0, Lc8/wld;->serializer:Lc8/Sjd;

    .line 131
    instance-of v0, p1, Lc8/Ljd;

    if-eqz v0, :cond_2

    check-cast p1, Lc8/Ljd;

    .end local p1    # "typeAdapter":Ljava/lang/Object;
    :goto_1
    iput-object p1, p0, Lc8/wld;->deserializer:Lc8/Ljd;

    .line 134
    iget-object v0, p0, Lc8/wld;->serializer:Lc8/Sjd;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/wld;->deserializer:Lc8/Ljd;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lc8/ckd;->checkArgument(Z)V

    .line 135
    iput-object p2, p0, Lc8/wld;->exactType:Lc8/omd;

    .line 136
    iput-boolean p3, p0, Lc8/wld;->matchRawType:Z

    .line 137
    iput-object p4, p0, Lc8/wld;->hierarchyType:Ljava/lang/Class;

    .line 138
    return-void

    .restart local p1    # "typeAdapter":Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    .line 128
    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 131
    goto :goto_1

    .line 134
    .end local p1    # "typeAdapter":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public create(Lc8/Gjd;Lc8/omd;)Lc8/Vjd;
    .locals 7
    .param p1, "gson"    # Lc8/Gjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Gjd;",
            "Lc8/omd",
            "<TT;>;)",
            "Lc8/Vjd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "type":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lc8/wld;->exactType:Lc8/omd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/wld;->exactType:Lc8/omd;

    .line 144
    invoke-virtual {v0, p2}, Lc8/omd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/wld;->matchRawType:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/wld;->exactType:Lc8/omd;

    invoke-virtual {v0}, Lc8/omd;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lc8/omd;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v6, 0x1

    .line 146
    .local v6, "matches":Z
    :goto_0
    if-eqz v6, :cond_3

    new-instance v0, Lc8/xld;

    iget-object v1, p0, Lc8/wld;->serializer:Lc8/Sjd;

    iget-object v2, p0, Lc8/wld;->deserializer:Lc8/Ljd;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lc8/xld;-><init>(Lc8/Sjd;Lc8/Ljd;Lc8/Gjd;Lc8/omd;Lc8/Wjd;)V

    :goto_1
    return-object v0

    .line 144
    .end local v6    # "matches":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc8/wld;->hierarchyType:Ljava/lang/Class;

    .line 145
    invoke-virtual {p2}, Lc8/omd;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    goto :goto_0

    .line 146
    .restart local v6    # "matches":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
