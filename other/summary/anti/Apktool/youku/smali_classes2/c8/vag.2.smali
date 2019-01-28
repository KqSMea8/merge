.class public Lc8/vag;
.super Ljava/lang/Object;
.source "SimpleComponentHolder.java"

# interfaces
.implements Lc8/rag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/uag;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleComponentHolder"


# instance fields
.field private final mClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lc8/tbg;",
            ">;"
        }
    .end annotation
.end field

.field private mCreator:Lc8/nag;

.field private mMethodInvokers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/DWf;",
            ">;"
        }
    .end annotation
.end field

.field private mPropertyInvokers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/DWf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/tbg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    new-instance v0, Lc8/uag;

    invoke-direct {v0, p1}, Lc8/uag;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lc8/vag;-><init>(Ljava/lang/Class;Lc8/nag;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lc8/nag;)V
    .locals 0
    .param p2, "customCreator"    # Lc8/nag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/tbg;",
            ">;",
            "Lc8/nag;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lc8/vag;->mClz:Ljava/lang/Class;

    .line 111
    iput-object p2, p0, Lc8/vag;->mCreator:Lc8/nag;

    .line 112
    return-void
.end method

.method private declared-synchronized generate()V
    .locals 4

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const-string/jumbo v1, "SimpleComponentHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Generate Component:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/vag;->mClz:Ljava/lang/Class;

    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v1, p0, Lc8/vag;->mClz:Ljava/lang/Class;

    invoke-static {v1}, Lc8/vag;->getMethods(Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object v0

    .line 134
    .local v0, "methodPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lc8/vag;->mPropertyInvokers:Ljava/util/Map;

    .line 135
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lc8/vag;->mMethodInvokers:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 129
    .end local v0    # "methodPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static getMethods(Ljava/lang/Class;)Landroid/util/Pair;
    .locals 16
    .param p0, "clz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/DWf;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/DWf;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v12, "methods":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v9, "mInvokers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/reflect/Method;
    array-length v8, v4

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v10, v4, v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    .local v10, "method":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 148
    .local v2, "annotations":[Ljava/lang/annotation/Annotation;
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v3, v2

    .line 149
    .local v3, "annotationsCount":I
    :goto_1
    if-ge v6, v3, :cond_0

    .line 150
    aget-object v1, v2, v6

    .line 151
    .local v1, "anno":Ljava/lang/annotation/Annotation;
    if-eqz v1, :cond_3

    .line 154
    instance-of v14, v1, Lc8/vbg;

    if-eqz v14, :cond_1

    .line 155
    check-cast v1, Lc8/vbg;

    .end local v1    # "anno":Ljava/lang/annotation/Annotation;
    invoke-interface {v1}, Lc8/vbg;->name()Ljava/lang/String;

    move-result-object v13

    .line 156
    .local v13, "name":Ljava/lang/String;
    new-instance v14, Lc8/GWf;

    const/4 v15, 0x1

    invoke-direct {v14, v10, v15}, Lc8/GWf;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v2    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v3    # "annotationsCount":I
    .end local v6    # "i":I
    .end local v13    # "name":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 158
    .restart local v1    # "anno":Ljava/lang/annotation/Annotation;
    .restart local v2    # "annotations":[Ljava/lang/annotation/Annotation;
    .restart local v3    # "annotationsCount":I
    .restart local v6    # "i":I
    :cond_1
    instance-of v14, v1, Lc8/KVf;

    if-eqz v14, :cond_3

    .line 159
    move-object v0, v1

    check-cast v0, Lc8/KVf;

    move-object v11, v0

    .line 160
    .local v11, "methodAnno":Lc8/KVf;
    invoke-interface {v11}, Lc8/KVf;->alias()Ljava/lang/String;

    move-result-object v13

    .line 161
    .restart local v13    # "name":Ljava/lang/String;
    const-string/jumbo v14, "_"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 162
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    .line 164
    :cond_2
    new-instance v14, Lc8/GWf;

    invoke-interface {v11}, Lc8/KVf;->uiThread()Z

    move-result v15

    invoke-direct {v14, v10, v15}, Lc8/GWf;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .end local v1    # "anno":Ljava/lang/annotation/Annotation;
    .end local v2    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v3    # "annotationsCount":I
    .end local v6    # "i":I
    .end local v11    # "methodAnno":Lc8/KVf;
    .end local v13    # "name":Ljava/lang/String;
    :catch_0
    move-exception v14

    goto :goto_2

    .line 149
    .restart local v1    # "anno":Ljava/lang/annotation/Annotation;
    .restart local v2    # "annotations":[Ljava/lang/annotation/Annotation;
    .restart local v3    # "annotationsCount":I
    .restart local v6    # "i":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 172
    .end local v1    # "anno":Ljava/lang/annotation/Annotation;
    .end local v2    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v3    # "annotationsCount":I
    .end local v4    # "arr$":[Ljava/lang/reflect/Method;
    .end local v6    # "i":I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v5

    .line 173
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v5}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 176
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    new-instance v14, Landroid/util/Pair;

    invoke-direct {v14, v12, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v14

    .restart local v4    # "arr$":[Ljava/lang/reflect/Method;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v10    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v14

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized createInstance(Lc8/nVf;Lc8/HYf;Lc8/scg;)Lc8/tbg;
    .locals 2
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/vag;->mCreator:Lc8/nag;

    invoke-interface {v1, p1, p2, p3}, Lc8/nag;->createInstance(Lc8/nVf;Lc8/HYf;Lc8/scg;)Lc8/tbg;

    move-result-object v0

    .line 185
    .local v0, "component":Lc8/tbg;
    invoke-virtual {v0, p0}, Lc8/tbg;->bindHolder(Lc8/rag;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-object v0

    .line 183
    .end local v0    # "component":Lc8/tbg;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getMethodInvoker(Ljava/lang/String;)Lc8/DWf;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lc8/vag;->mMethodInvokers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0}, Lc8/vag;->generate()V

    .line 203
    :cond_0
    iget-object v0, p0, Lc8/vag;->mMethodInvokers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/DWf;

    return-object v0
.end method

.method public getMethods()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    iget-object v1, p0, Lc8/vag;->mMethodInvokers:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 209
    invoke-direct {p0}, Lc8/vag;->generate()V

    .line 211
    :cond_0
    iget-object v1, p0, Lc8/vag;->mMethodInvokers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 212
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public declared-synchronized getPropertyInvoker(Ljava/lang/String;)Lc8/DWf;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/vag;->mPropertyInvokers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0}, Lc8/vag;->generate()V

    .line 195
    :cond_0
    iget-object v0, p0, Lc8/vag;->mPropertyInvokers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/DWf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadIfNonLazy()V
    .locals 6

    .prologue
    .line 116
    iget-object v5, p0, Lc8/vag;->mClz:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 118
    .local v1, "annotations":[Ljava/lang/annotation/Annotation;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 119
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    instance-of v5, v0, Lc8/JVf;

    if-eqz v5, :cond_1

    .line 120
    check-cast v0, Lc8/JVf;

    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lc8/JVf;->lazyload()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lc8/vag;->mMethodInvokers:Ljava/util/Map;

    if-nez v5, :cond_0

    .line 121
    invoke-direct {p0}, Lc8/vag;->generate()V

    .line 126
    :cond_0
    return-void

    .line 118
    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
