.class public Lc8/YGd;
.super Ljava/lang/Object;
.source "ReflectConstructor.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mReflectClass:Lc8/XGd;

.field private mTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lc8/XGd;[Ljava/lang/Class;)V
    .locals 1
    .param p1, "reflectClass"    # Lc8/XGd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/XGd;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v0, "ReflectConstructor"

    iput-object v0, p0, Lc8/YGd;->TAG:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lc8/YGd;->mReflectClass:Lc8/XGd;

    .line 19
    iput-object p2, p0, Lc8/YGd;->mTypes:[Ljava/lang/Class;

    .line 20
    return-void
.end method


# virtual methods
.method public varargs newInstance([Ljava/lang/Object;)Lc8/bHd;
    .locals 6
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lc8/bHd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v2, Lc8/bHd;

    invoke-direct {v2}, Lc8/bHd;-><init>()V

    .line 25
    .local v2, "result":Lc8/bHd;, "Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult<TT;>;"
    :try_start_0
    iget-object v3, p0, Lc8/YGd;->mReflectClass:Lc8/XGd;

    invoke-virtual {v3}, Lc8/XGd;->getRealClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lc8/YGd;->mTypes:[Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 26
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lc8/bHd;->value:Ljava/lang/Object;

    .line 28
    const/4 v3, 0x1

    iput-boolean v3, v2, Lc8/bHd;->ok:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v2

    .line 29
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lc8/TGd;->get()Lc8/TGd;

    move-result-object v3

    iget-object v4, p0, Lc8/YGd;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "newInstance"

    invoke-virtual {v3, v4, v5, v1}, Lc8/TGd;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
