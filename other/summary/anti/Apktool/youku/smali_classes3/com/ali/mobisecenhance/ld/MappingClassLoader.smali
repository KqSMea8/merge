.class public Lcom/ali/mobisecenhance/ld/MappingClassLoader;
.super Ldalvik/system/PathClassLoader;
.source "MappingClassLoader.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private mGenRealName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 9
    new-instance v0, Lcom/ali/mobisecenhance/ld/MappingClassLoader$1;

    invoke-direct {v0, p0}, Lcom/ali/mobisecenhance/ld/MappingClassLoader$1;-><init>(Lcom/ali/mobisecenhance/ld/MappingClassLoader;)V

    iput-object v0, p0, Lcom/ali/mobisecenhance/ld/MappingClassLoader;->mGenRealName:Ljava/util/Map;

    .line 18
    return-void
.end method

.method private genReal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/MappingClassLoader;->mGenRealName:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/MappingClassLoader;->mGenRealName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 23
    const/4 v0, 0x0

    invoke-super {p0, v0}, Ldalvik/system/PathClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/ali/mobisecenhance/ld/MappingClassLoader;->genReal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ldalvik/system/PathClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 36
    if-nez p1, :cond_1

    .line 37
    const/4 v1, 0x0

    invoke-super {p0, v1, p2}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    .line 48
    :cond_0
    :goto_0
    return-object v0

    .line 40
    :cond_1
    const-string v1, "com.ali.mobisecenhance"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    invoke-virtual {p0, p1}, Lcom/ali/mobisecenhance/ld/MappingClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 42
    .local v0, "clz":Ljava/lang/Class;
    if-nez v0, :cond_0

    .line 45
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 48
    .end local v0    # "clz":Ljava/lang/Class;
    :cond_2
    invoke-direct {p0, p1}, Lcom/ali/mobisecenhance/ld/MappingClassLoader;->genReal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1, p2}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    invoke-super {p0}, Ldalvik/system/PathClassLoader;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/ali/mobisecenhance/ld/MappingClassLoader;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Shadow"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 58
    check-cast p2, Ljava/util/Map;

    .end local p2    # "o":Ljava/lang/Object;
    iput-object p2, p0, Lcom/ali/mobisecenhance/ld/MappingClassLoader;->mGenRealName:Ljava/util/Map;

    .line 59
    return-void
.end method
