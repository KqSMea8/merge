.class public Landroid/taobao/atlas/hack/AssertionArrayException;
.super Ljava/lang/Exception;
.source "AssertionArrayException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAssertionErr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "detailMsg"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/atlas/hack/AssertionArrayException;->mAssertionErr:Ljava/util/List;

    .line 230
    return-void
.end method

.method public static mergeException(Landroid/taobao/atlas/hack/AssertionArrayException;Landroid/taobao/atlas/hack/AssertionArrayException;)Landroid/taobao/atlas/hack/AssertionArrayException;
    .locals 4
    .param p0, "first"    # Landroid/taobao/atlas/hack/AssertionArrayException;
    .param p1, "second"    # Landroid/taobao/atlas/hack/AssertionArrayException;

    .prologue
    .line 262
    if-nez p0, :cond_0

    .line 268
    .end local p1    # "second":Landroid/taobao/atlas/hack/AssertionArrayException;
    :goto_0
    return-object p1

    .line 263
    .restart local p1    # "second":Landroid/taobao/atlas/hack/AssertionArrayException;
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    goto :goto_0

    .line 264
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/taobao/atlas/hack/AssertionArrayException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/taobao/atlas/hack/AssertionArrayException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "detailMsg":Ljava/lang/String;
    new-instance v1, Landroid/taobao/atlas/hack/AssertionArrayException;

    invoke-direct {v1, v0}, Landroid/taobao/atlas/hack/AssertionArrayException;-><init>(Ljava/lang/String;)V

    .line 266
    .local v1, "ret":Landroid/taobao/atlas/hack/AssertionArrayException;
    invoke-virtual {p0}, Landroid/taobao/atlas/hack/AssertionArrayException;->getExceptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/taobao/atlas/hack/AssertionArrayException;->addException(Ljava/util/List;)V

    .line 267
    invoke-virtual {p1}, Landroid/taobao/atlas/hack/AssertionArrayException;->getExceptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/taobao/atlas/hack/AssertionArrayException;->addException(Ljava/util/List;)V

    move-object p1, v1

    .line 268
    goto :goto_0
.end method


# virtual methods
.method public addException(Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;)V
    .locals 1
    .param p1, "exception"    # Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;

    .prologue
    .line 238
    iget-object v0, p0, Landroid/taobao/atlas/hack/AssertionArrayException;->mAssertionErr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-void
.end method

.method public addException(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "exception":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;>;"
    iget-object v0, p0, Landroid/taobao/atlas/hack/AssertionArrayException;->mAssertionErr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    return-void
.end method

.method public getExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Landroid/taobao/atlas/hack/AssertionArrayException;->mAssertionErr:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Landroid/taobao/atlas/hack/AssertionArrayException;->mAssertionErr:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;

    .line 276
    .local v1, "failure":Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
    invoke-virtual {v1}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :try_start_0
    invoke-virtual {v1}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/NoSuchFieldException;

    if-eqz v7, :cond_0

    .line 279
    invoke-virtual {v1}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->getHackedClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 280
    .local v2, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->getHackedClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->getHackedFieldName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v2

    if-ge v3, v7, :cond_3

    .line 282
    aget-object v7, v2, v3

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 284
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v1}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/NoSuchMethodException;

    if-eqz v7, :cond_2

    .line 285
    invoke-virtual {v1}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->getHackedClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 286
    .local v4, "methods":[Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->getHackedClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->getHackedMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v7, v4

    if-ge v3, v7, :cond_3

    .line 288
    invoke-virtual {v1}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->getHackedMethodName()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v4, v3

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 289
    aget-object v7, v4, v3

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 293
    .end local v3    # "i":I
    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    :cond_2
    invoke-virtual {v1}, Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_3
    :goto_3
    const-string/jumbo v7, "@@@@"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 301
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "failure":Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
