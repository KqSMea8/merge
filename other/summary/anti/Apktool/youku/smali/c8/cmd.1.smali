.class public final Lc8/cmd;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lc8/Wjd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mmd;->newTypeHierarchyFactory(Ljava/lang/Class;Lc8/Vjd;)Lc8/Wjd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$typeAdapter:Lc8/Vjd;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lc8/Vjd;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lc8/cmd;->val$clazz:Ljava/lang/Class;

    iput-object p2, p0, Lc8/cmd;->val$typeAdapter:Lc8/Vjd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lc8/Gjd;Lc8/omd;)Lc8/Vjd;
    .locals 2
    .param p1, "gson"    # Lc8/Gjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Gjd;",
            "Lc8/omd",
            "<TT2;>;)",
            "Lc8/Vjd",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 883
    .local p2, "typeToken":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<TT2;>;"
    invoke-virtual {p2}, Lc8/omd;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 884
    .local v0, "requestedType":Ljava/lang/Class;, "Ljava/lang/Class<-TT2;>;"
    iget-object v1, p0, Lc8/cmd;->val$clazz:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 885
    const/4 v1, 0x0

    .line 887
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lc8/bmd;

    invoke-direct {v1, p0, v0}, Lc8/bmd;-><init>(Lc8/cmd;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Factory[typeHierarchy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/cmd;->val$clazz:Ljava/lang/Class;

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/cmd;->val$typeAdapter:Lc8/Vjd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
