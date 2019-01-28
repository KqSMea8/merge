.class public Lc8/iNc;
.super Ljava/lang/ClassLoader;
.source "AndFixManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/kNc;->fix(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/kNc;

.field final synthetic val$dexFile:Ldalvik/system/DexFile;


# direct methods
.method constructor <init>(Lc8/kNc;Ljava/lang/ClassLoader;Ldalvik/system/DexFile;)V
    .locals 0
    .param p1, "this$0"    # Lc8/kNc;
    .param p2, "x0"    # Ljava/lang/ClassLoader;

    .prologue
    .line 193
    iput-object p1, p0, Lc8/iNc;->this$0:Lc8/kNc;

    iput-object p3, p0, Lc8/iNc;->val$dexFile:Ldalvik/system/DexFile;

    invoke-direct {p0, p2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private static _1loadClass(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p0 .. p2}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _2forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private _4replacedf876097f_findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lc8/iNc;->val$dexFile:Ldalvik/system/DexFile;

    invoke-virtual {p0}, Lc8/iNc;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lc8/iNc;->_1loadClass(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 197
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    const-string/jumbo v1, "com.alipay.euler.andfix"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-static {p1}, Lc8/iNc;->_2forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 203
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v0

    .line 200
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    if-nez v0, :cond_0

    .line 201
    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-direct {v1, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private _4replacedf876097f_loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 208
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
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

    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ReflectMap;->genOriginName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lc8/iNc;->_4replacedf876097f_findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
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

    invoke-static/range {p1 .. p1}, Lcom/ali/mobisecenhance/ReflectMap;->genOriginName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p2}, Lc8/iNc;->_4replacedf876097f_loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
