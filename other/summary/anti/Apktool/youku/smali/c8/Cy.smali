.class public Lc8/Cy;
.super Ljava/lang/Object;
.source "Hack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HackedField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mField:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 6
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "modifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TC;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "this":Lc8/Cy;, "Landroid/taobao/atlas/hack/Hack$HackedField<TC;TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    const/4 v1, 0x0

    .line 369
    .local v1, "field":Ljava/lang/reflect/Field;
    if-nez p1, :cond_0

    .line 379
    iput-object v1, p0, Lc8/Cy;->mField:Ljava/lang/reflect/Field;

    :goto_0
    return-void

    .line 370
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 371
    if-lez p3, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    and-int/2addr v3, p3

    if-eq v3, p3, :cond_1

    .line 372
    new-instance v3, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " does not match modifiers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lc8/Ey;->access$000(Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;)V

    .line 373
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    iput-object v1, p0, Lc8/Cy;->mField:Ljava/lang/reflect/Field;

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :try_start_1
    new-instance v2, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;

    invoke-direct {v2, v0}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;-><init>(Ljava/lang/Exception;)V

    .line 376
    .local v2, "hae":Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
    invoke-virtual {v2, p1}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->setHackedClass(Ljava/lang/Class;)V

    .line 377
    invoke-virtual {v2, p2}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->setHackedFieldName(Ljava/lang/String;)V

    .line 378
    invoke-static {v2}, Lc8/Ey;->access$000(Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    iput-object v1, p0, Lc8/Cy;->mField:Ljava/lang/reflect/Field;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    .end local v2    # "hae":Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
    :catchall_0
    move-exception v3

    iput-object v1, p0, Lc8/Cy;->mField:Ljava/lang/reflect/Field;

    throw v3
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TT;"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lc8/Cy;, "Landroid/taobao/atlas/hack/Hack$HackedField<TC;TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TC;"
    :try_start_0
    iget-object v2, p0, Lc8/Cy;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 331
    :goto_0
    return-object v1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 331
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 384
    .local p0, "this":Lc8/Cy;, "Landroid/taobao/atlas/hack/Hack$HackedField<TC;TT;>;"
    iget-object v0, p0, Lc8/Cy;->mField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public hijack(Ljava/lang/Object;Lc8/Gy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lc8/Gy",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lc8/Cy;, "Landroid/taobao/atlas/hack/Hack$HackedField<TC;TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TC;"
    .local p2, "handler":Lc8/Gy;, "Landroid/taobao/atlas/hack/Interception$InterceptionHandler<*>;"
    invoke-virtual {p0, p1}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 360
    .local v0, "delegatee":Ljava/lang/Object;
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot hijack null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 361
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 362
    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0, p2, v1}, Lc8/Hy;->proxy(Ljava/lang/Object;Lc8/Gy;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 363
    return-void
.end method

.method public ofGenericType(Ljava/lang/Class;)Lc8/Cy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lc8/Cy",
            "<TC;TT2;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "this":Lc8/Cy;, "Landroid/taobao/atlas/hack/Hack$HackedField<TC;TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lc8/Cy;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Cy;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/Cy;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;-><init>(Ljava/lang/Exception;)V

    invoke-static {v0}, Lc8/Ey;->access$000(Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;)V

    .line 308
    :cond_0
    return-object p0
.end method

.method public ofType(Ljava/lang/Class;)Lc8/Cy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT2;>;)",
            "Lc8/Cy",
            "<TC;TT2;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lc8/Cy;, "Landroid/taobao/atlas/hack/Hack$HackedField<TC;TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT2;>;"
    iget-object v0, p0, Lc8/Cy;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Cy;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/Cy;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;-><init>(Ljava/lang/Exception;)V

    invoke-static {v0}, Lc8/Ey;->access$000(Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;)V

    .line 315
    :cond_0
    return-object p0
.end method

.method public ofType(Ljava/lang/String;)Lc8/Cy;
    .locals 2
    .param p1, "type_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc8/Cy",
            "<TC;TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lc8/Cy;, "Landroid/taobao/atlas/hack/Hack$HackedField<TC;TT;>;"
    :try_start_0
    invoke-static {p1}, Lc8/Cy;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/Cy;->ofType(Ljava/lang/Class;)Lc8/Cy;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 320
    .end local p0    # "this":Lc8/Cy;, "Landroid/taobao/atlas/hack/Hack$HackedField<TC;TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lc8/Cy;, "Landroid/taobao/atlas/hack/Hack$HackedField<TC;TT;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;

    invoke-direct {v1, v0}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;-><init>(Ljava/lang/Exception;)V

    invoke-static {v1}, Lc8/Ey;->access$000(Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;)V

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lc8/Cy;, "Landroid/taobao/atlas/hack/Hack$HackedField<TC;TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TC;"
    :try_start_0
    iget-object v1, p0, Lc8/Cy;->mField:Ljava/lang/reflect/Field;

    invoke-static {v1, p1, p2}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 344
    instance-of v1, p2, Lc8/Yy;

    if-eqz v1, :cond_0

    .line 345
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "set DelegateClassLoader fail"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
