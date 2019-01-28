.class public Lc8/kNc;
.super Ljava/lang/Object;
.source "AndFixManager.java"


# static fields
.field private static final DIR:Ljava/lang/String; = "apatch_opt"

.field private static final TAG:Ljava/lang/String; = "AndFixManager"

.field private static mDir:Ljava/lang/String;

.field private static mFixedClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOptDir:Ljava/io/File;

.field private mSecurityChecker:Lc8/tNc;

.field private mSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/kNc;->mFixedClass:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "debuggable"    # Z

    .prologue
    .line 83
    const-string/jumbo v0, "apatch_opt"

    invoke-direct {p0, p1, p2, v0}, Lc8/kNc;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "debuggable"    # Z
    .param p3, "dir"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v3, p0, Lc8/kNc;->mSupport:Z

    .line 87
    iput-object p1, p0, Lc8/kNc;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {}, Lc8/mNc;->isSupport()Z

    move-result v0

    iput-boolean v0, p0, Lc8/kNc;->mSupport:Z

    .line 89
    iget-boolean v0, p0, Lc8/kNc;->mSupport:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lc8/tNc;

    iget-object v1, p0, Lc8/kNc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lc8/tNc;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lc8/kNc;->mSecurityChecker:Lc8/tNc;

    .line 91
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/kNc;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "apatch_opt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/kNc;->mOptDir:Ljava/io/File;

    .line 99
    :goto_0
    iget-object v0, p0, Lc8/kNc;->mOptDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lc8/kNc;->mOptDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    iput-boolean v3, p0, Lc8/kNc;->mSupport:Z

    .line 101
    const-string/jumbo v0, "AndFixManager"

    const-string/jumbo v1, "opt dir create error."

    invoke-static {v0, v1}, Lc8/pNc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_1
    return-void

    .line 94
    :cond_1
    sput-object p3, Lc8/kNc;->mDir:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/kNc;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lc8/kNc;->mDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/kNc;->mOptDir:Ljava/io/File;

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lc8/kNc;->mOptDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lc8/kNc;->mOptDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 104
    iput-boolean v3, p0, Lc8/kNc;->mSupport:Z

    goto :goto_1
.end method

.method private createMethodDes(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 473
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-object v5

    .line 476
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 477
    .local v1, "paramClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 479
    array-length v5, v1

    if-nez v5, :cond_2

    .line 480
    const-string/jumbo v2, "[]"

    .line 515
    .local v2, "paramDes":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 482
    .end local v2    # "paramDes":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "["

    .line 483
    .restart local v2    # "paramDes":Ljava/lang/String;
    array-length v7, v1

    move v5, v6

    :goto_2
    if-ge v5, v7, :cond_c

    aget-object v0, v1, v5

    .line 484
    .local v0, "param":Ljava/lang/Class;
    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "s":Ljava/lang/String;
    const-string/jumbo v8, "boolean"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 486
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "Z"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 508
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 483
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 487
    :cond_3
    const-string/jumbo v8, "char"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 488
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "C"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 489
    :cond_4
    const-string/jumbo v8, "float"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 490
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "F"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 491
    :cond_5
    const-string/jumbo v8, "int"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 492
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "I"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 493
    :cond_6
    const-string/jumbo v8, "long"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 494
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "J"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 495
    :cond_7
    const-string/jumbo v8, "short"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 496
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "S"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 497
    :cond_8
    const-string/jumbo v8, "double"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 498
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "D"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 499
    :cond_9
    const-string/jumbo v8, "byte"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 500
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "B"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 502
    :cond_a
    const-string/jumbo v8, ";"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string/jumbo v8, "["

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 503
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "L"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 505
    :cond_b
    const-string/jumbo v8, "\\."

    const-string/jumbo v9, "/"

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, "ss":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 510
    .end local v0    # "param":Ljava/lang/Class;
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "ss":Ljava/lang/String;
    :cond_c
    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 511
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 513
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private fixClass(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 8
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "AndFixManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fixClass : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/pNc;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 247
    .local v4, "methods":[Ljava/lang/reflect/Method;
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v4, v5

    .line 248
    .local v2, "method":Ljava/lang/reflect/Method;
    const-class v7, Lc8/nNc;

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lc8/nNc;

    .line 249
    .local v3, "methodReplace":Lc8/nNc;
    if-eqz v3, :cond_0

    .line 251
    invoke-interface {v3}, Lc8/nNc;->clazz()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "clz":Ljava/lang/String;
    invoke-interface {v3}, Lc8/nNc;->method()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "meth":Ljava/lang/String;
    invoke-static {v0}, Lc8/kNc;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v1}, Lc8/kNc;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 254
    invoke-direct {p0, p2, v0, v1, v2}, Lc8/kNc;->replaceMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 247
    .end local v0    # "clz":Ljava/lang/String;
    .end local v1    # "meth":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 257
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "methodReplace":Lc8/nNc;
    :cond_1
    return-void
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 292
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized removeOptFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 118
    const-class v3, Lc8/kNc;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lc8/kNc;->mDir:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v4, "apatch_opt"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .local v0, "optDir":Ljava/io/File;
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    .local v1, "optFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    const-string/jumbo v2, "AndFixManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " delete error."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lc8/pNc;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    monitor-exit v3

    return-void

    .line 121
    .end local v0    # "optDir":Ljava/io/File;
    .end local v1    # "optFile":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lc8/kNc;->mDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "apatch_opt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "optDir":Ljava/io/File;
    goto :goto_0

    .line 118
    .end local v0    # "optDir":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private replaceMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 8
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "clz"    # Ljava/lang/String;
    .param p3, "meth"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 270
    :try_start_0
    const-string/jumbo v5, "AndFixManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "replaceMathod -> class : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " and method : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/pNc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "key":Ljava/lang/String;
    sget-object v5, Lc8/kNc;->mFixedClass:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 273
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 274
    const-string/jumbo v5, "AndFixManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "load and init class : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/pNc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 277
    .local v1, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lc8/hNc;->initTargetClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 279
    .end local v1    # "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-eqz v0, :cond_1

    .line 280
    sget-object v5, Lc8/kNc;->mFixedClass:Ljava/util/Map;

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 281
    invoke-virtual {v0, p3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 283
    .local v4, "src":Ljava/lang/reflect/Method;
    invoke-static {v4, p4}, Lc8/hNc;->addReplaceMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v4    # "src":Ljava/lang/reflect/Method;
    :cond_1
    return-void

    .line 285
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 286
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "AndFixManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "replaceMethod failed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/pNc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v5, Lcom/alipay/euler/andfix/exception/AndFixException;

    const-string/jumbo v6, "replaceMethod failed"

    invoke-direct {v5, v6, v2}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public declared-synchronized fix(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p3, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v9, p0, Lc8/kNc;->mSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_1

    .line 232
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 156
    :cond_1
    :try_start_1
    iget-object v9, p0, Lc8/kNc;->mSecurityChecker:Lc8/tNc;

    invoke-virtual {v9, p1}, Lc8/tNc;->verifyApk(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 157
    const-string/jumbo v9, "AndFixManager"

    const-string/jumbo v10, "AndFixManager.fix() verifyApk: failed, return."

    invoke-static {v9, v10}, Lc8/pNc;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 162
    :cond_2
    :try_start_2
    const-string/jumbo v9, "AndFixManager"

    const-string/jumbo v10, "start fix classes"

    invoke-static {v9, v10}, Lc8/pNc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v9, "jar"

    const-string/jumbo v10, "odex"

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 165
    new-instance v6, Ljava/io/File;

    iget-object v9, p0, Lc8/kNc;->mOptDir:Ljava/io/File;

    invoke-direct {v6, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    .local v6, "optFile":Ljava/io/File;
    const/4 v8, 0x1

    .line 167
    .local v8, "saveFingerprint":Z
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 173
    iget-object v9, p0, Lc8/kNc;->mSecurityChecker:Lc8/tNc;

    invoke-virtual {v9, v6}, Lc8/tNc;->verifyOpt(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 174
    const/4 v8, 0x0

    .line 186
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 187
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 186
    invoke-static {v9, v10, v11}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v1

    .line 189
    .local v1, "dexFile":Ldalvik/system/DexFile;
    if-eqz v8, :cond_4

    .line 190
    iget-object v9, p0, Lc8/kNc;->mSecurityChecker:Lc8/tNc;

    invoke-virtual {v9, v6}, Lc8/tNc;->saveOptSig(Ljava/io/File;)V

    .line 193
    :cond_4
    new-instance v7, Lc8/iNc;

    invoke-direct {v7, p0, p2, v1}, Lc8/iNc;-><init>(Lc8/kNc;Ljava/lang/ClassLoader;Ldalvik/system/DexFile;)V

    .line 212
    .local v7, "patchClassLoader":Ljava/lang/ClassLoader;
    invoke-virtual {v1}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 214
    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 215
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 216
    .local v4, "entry":Ljava/lang/String;
    if-eqz p3, :cond_6

    invoke-interface {p3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-eqz v9, :cond_5

    .line 220
    :cond_6
    const/4 v9, 0x1

    :try_start_3
    invoke-static {v4, v9, v7}, Lcom/ali/mobisecenhance/ReflectMap;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 221
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_5

    .line 222
    invoke-direct {p0, v0, p2}, Lc8/kNc;->fixClass(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 224
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 226
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_4
    new-instance v9, Lcom/alipay/euler/andfix/exception/AndFixException;

    const-string/jumbo v10, "init patch class failed"

    invoke-direct {v9, v10, v2}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 229
    .end local v1    # "dexFile":Ldalvik/system/DexFile;
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4    # "entry":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "optFile":Ljava/io/File;
    .end local v7    # "patchClassLoader":Ljava/lang/ClassLoader;
    .end local v8    # "saveFingerprint":Z
    :catch_1
    move-exception v2

    .line 230
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v9, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Field to fix (file="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", classLoader="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 181
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "optFile":Ljava/io/File;
    .restart local v8    # "saveFingerprint":Z
    :cond_7
    :try_start_6
    const-string/jumbo v9, "AndFixManager"

    const-string/jumbo v10, "AndFixManager.fix() verifyOpt: failed."

    invoke-static {v9, v10}, Lc8/pNc;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public makeClassesPublic(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 7
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "modifiedClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 418
    :cond_0
    return-void

    .line 397
    :cond_1
    const-string/jumbo v3, "AndFixManager"

    const-string/jumbo v4, "makeClassesPublic start"

    invoke-static {v3, v4}, Lc8/pNc;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 399
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 403
    :try_start_0
    const-string/jumbo v4, "AndFixManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "makeClassesPublic : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/pNc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 405
    .local v1, "clazz":Ljava/lang/Class;
    if-eqz v1, :cond_4

    .line 406
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    .line 407
    invoke-static {v1}, Lc8/hNc;->makeClassPublic(Ljava/lang/Class;)V

    .line 409
    :cond_3
    invoke-static {v1}, Lc8/hNc;->initFields(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    .end local v1    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 414
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "AndFixManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeClassesPublic failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/pNc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    new-instance v3, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeClassesPublic failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 411
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v1    # "clazz":Ljava/lang/Class;
    :cond_4
    :try_start_1
    new-instance v3, Ljava/lang/ClassNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " can not be found!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public makeMethodsPublic(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 13
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, "usedMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 470
    :cond_0
    return-void

    .line 424
    :cond_1
    const-string/jumbo v9, "AndFixManager"

    const-string/jumbo v10, "makeMethodsPublic start"

    invoke-static {v9, v10}, Lc8/pNc;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 426
    .local v7, "methodRecord":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 429
    const-string/jumbo v10, "\\:"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "arr":[Ljava/lang/String;
    array-length v10, v0

    const/4 v11, 0x4

    if-lt v10, v11, :cond_2

    .line 433
    const/4 v10, 0x1

    aget-object v10, v0, v10

    const-string/jumbo v11, "<init>"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 435
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v0, v10

    invoke-virtual {p2, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 436
    .local v1, "clazz":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 437
    .local v3, "constructors":[Ljava/lang/reflect/Constructor;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v10, v3

    if-ge v6, v10, :cond_2

    .line 438
    aget-object v10, v3, v6

    invoke-virtual {v10}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v10

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_3

    .line 439
    aget-object v10, v3, v6

    invoke-static {v10}, Lc8/hNc;->makeConstructorPublic(Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 442
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v3    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v6    # "i":I
    :catch_0
    move-exception v5

    .line 443
    .local v5, "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "AndFixManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "makeMethodsPublic.construtor failed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/pNc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v9, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "makeMethodsPublic.construtor failed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 448
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v10, 0x0

    :try_start_1
    aget-object v2, v0, v10

    .line 449
    .local v2, "clazzName":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 450
    .restart local v1    # "clazz":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    .line 451
    .local v8, "methods":[Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    .line 452
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    array-length v10, v8

    if-ge v6, v10, :cond_2

    .line 453
    aget-object v10, v8, v6

    invoke-direct {p0, v10, v2}, Lc8/kNc;->createMethodDes(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 454
    .local v4, "des":Ljava/lang/String;
    aget-object v10, v8, v6

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v10

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_5

    .line 455
    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 456
    const-string/jumbo v10, "AndFixManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "make "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " public"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/pNc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    aget-object v10, v8, v6

    invoke-static {v10}, Lc8/hNc;->makeMethodPublic(Ljava/lang/reflect/Method;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 464
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "clazzName":Ljava/lang/String;
    .end local v4    # "des":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v8    # "methods":[Ljava/lang/reflect/Method;
    :catch_1
    move-exception v5

    .line 465
    .restart local v5    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "AndFixManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "makeMethodsPublic.method failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/pNc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    new-instance v9, Lcom/alipay/euler/andfix/exception/AndFixException;

    const-string/jumbo v10, "makeMethodsPublic.method failed"

    invoke-direct {v9, v10, v5}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 452
    .end local v5    # "e":Ljava/lang/Throwable;
    .restart local v1    # "clazz":Ljava/lang/Class;
    .restart local v2    # "clazzName":Ljava/lang/String;
    .restart local v4    # "des":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v8    # "methods":[Ljava/lang/reflect/Method;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public declared-synchronized preLoadAddClasses(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p3, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_1

    .line 370
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 311
    :cond_1
    :try_start_1
    const-string/jumbo v8, "AndFixManager"

    const-string/jumbo v9, "start preLoadAddClasses"

    invoke-static {v8, v9}, Lc8/pNc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v8, "jar"

    const-string/jumbo v9, "odex"

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 314
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lc8/kNc;->mOptDir:Ljava/io/File;

    invoke-direct {v5, v8, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    .local v5, "optFile":Ljava/io/File;
    const/4 v7, 0x1

    .line 317
    .local v7, "saveFingerprint":Z
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 323
    iget-object v8, p0, Lc8/kNc;->mSecurityChecker:Lc8/tNc;

    invoke-virtual {v8, v5}, Lc8/tNc;->verifyOpt(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 324
    const/4 v7, 0x0

    .line 336
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 337
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 336
    invoke-static {v8, v9, v10}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    .line 339
    .local v0, "dexFile":Ldalvik/system/DexFile;
    if-eqz v7, :cond_3

    .line 340
    iget-object v8, p0, Lc8/kNc;->mSecurityChecker:Lc8/tNc;

    invoke-virtual {v8, v5}, Lc8/tNc;->saveOptSig(Ljava/io/File;)V

    .line 343
    :cond_3
    new-instance v6, Lc8/jNc;

    invoke-direct {v6, p0, p2, v0}, Lc8/jNc;-><init>(Lc8/kNc;Ljava/lang/ClassLoader;Ldalvik/system/DexFile;)V

    .line 354
    .local v6, "patchClassLoader":Ljava/lang/ClassLoader;
    invoke-virtual {v0}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 355
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 356
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 357
    .local v3, "entry":Ljava/lang/String;
    if-eqz p3, :cond_5

    invoke-interface {p3, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_4

    .line 361
    :cond_5
    const/4 v8, 0x1

    :try_start_2
    invoke-static {v3, v8, v6}, Lcom/ali/mobisecenhance/ReflectMap;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 362
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    new-instance v8, Lcom/alipay/euler/andfix/exception/AndFixException;

    const-string/jumbo v9, "preLoadAddClasses : init patch class failed"

    invoke-direct {v8, v9, v1}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 367
    .end local v0    # "dexFile":Ldalvik/system/DexFile;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v3    # "entry":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "optFile":Ljava/io/File;
    .end local v6    # "patchClassLoader":Ljava/lang/ClassLoader;
    .end local v7    # "saveFingerprint":Z
    :catch_1
    move-exception v1

    .line 368
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v8, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Field to preLoadAddClasses (file="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", classLoader="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 308
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 331
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "optFile":Ljava/io/File;
    .restart local v7    # "saveFingerprint":Z
    :cond_6
    :try_start_5
    const-string/jumbo v8, "AndFixManager"

    const-string/jumbo v9, "AndFixManager.fix() verifyOpt: failed."

    invoke-static {v8, v9}, Lc8/pNc;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public prepareClass(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 391
    :cond_0
    return-void

    .line 377
    :cond_1
    const-string/jumbo v2, "AndFixManager"

    const-string/jumbo v3, "prepareClass start"

    invoke-static {v2, v3}, Lc8/pNc;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 379
    .local v0, "clazz":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 383
    :try_start_0
    const-string/jumbo v3, "AndFixManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prepareClass : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/pNc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const/4 v3, 0x1

    invoke-static {v0, v3, p2}, Lcom/ali/mobisecenhance/ReflectMap;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "AndFixManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareClass exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/pNc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v2, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareClass exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
