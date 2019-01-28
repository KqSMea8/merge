.class public Lc8/wz;
.super Ljava/lang/Object;
.source "ResourceIdFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vz;
    }
.end annotation


# instance fields
.field private resIdentifierMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/vz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/wz;->resIdentifierMap:Ljava/util/Map;

    return-void
.end method

.method private static getFieldValueOfR(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 2
    .param p1, "fName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_1

    .line 300
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 301
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 305
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 313
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 310
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private getIdentifierWithRefection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .prologue
    .line 253
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 256
    move-object/from16 v8, p1

    .local v8, "rawName":Ljava/lang/String;
    const-string/jumbo v12, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 257
    const-string/jumbo v12, ":"

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    const-string/jumbo v13, "/"

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 259
    .end local v8    # "rawName":Ljava/lang/String;
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 260
    :cond_1
    const/4 v11, 0x0

    .line 293
    :goto_0
    return v11

    .line 262
    :cond_2
    invoke-static {}, Lc8/py;->getBundles()Ljava/util/List;

    move-result-object v3

    .line 263
    .local v3, "bundles":Ljava/util/List;, "Ljava/util/List<Lorg/osgi/framework/Bundle;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 264
    invoke-static {}, Lc8/py;->getBundles()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Seq;

    .line 265
    .local v1, "b":Lc8/Seq;
    invoke-interface {v1}, Lc8/Seq;->getLocation()Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, "pkgName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 267
    .local v10, "searchKey":Ljava/lang/String;
    iget-object v13, p0, Lc8/wz;->resIdentifierMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    iget-object v13, p0, Lc8/wz;->resIdentifierMap:Ljava/util/Map;

    invoke-interface {v13, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 268
    iget-object v13, p0, Lc8/wz;->resIdentifierMap:Ljava/util/Map;

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/vz;

    .line 269
    .local v6, "info":Lc8/vz;
    if-eqz v6, :cond_4

    iget-object v13, v6, Lc8/vz;->type:Ljava/lang/String;

    if-eqz v13, :cond_4

    if-eqz p2, :cond_4

    iget-object v13, v6, Lc8/vz;->type:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 270
    iget v11, v6, Lc8/vz;->resId:I

    goto :goto_0

    .end local v6    # "info":Lc8/vz;
    :cond_4
    move-object v2, v1

    .line 273
    check-cast v2, Lc8/hy;

    .line 274
    .local v2, "bundle":Lc8/hy;
    invoke-virtual {v2}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v13

    invoke-virtual {v13}, Lc8/ry;->isDexOpted()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 275
    invoke-virtual {v2}, Lc8/hy;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 277
    .local v4, "classloader":Ljava/lang/ClassLoader;
    if-eqz v4, :cond_3

    .line 278
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .local v9, "resClass":Ljava/lang/StringBuilder;
    const-string/jumbo v13, ".R$"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 282
    .local v5, "clazz":Ljava/lang/Class;
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lc8/wz;->getFieldValueOfR(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v11

    .line 283
    .local v11, "tmpResID":I
    if-eqz v11, :cond_3

    .line 284
    iget-object v13, p0, Lc8/wz;->resIdentifierMap:Ljava/util/Map;

    new-instance v14, Lc8/vz;

    move-object/from16 v0, p2

    invoke-direct {v14, v0, v11}, Lc8/vz;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v5    # "clazz":Ljava/lang/Class;
    .end local v9    # "resClass":Ljava/lang/StringBuilder;
    .end local v11    # "tmpResID":I
    :catch_0
    move-exception v13

    goto/16 :goto_1

    .line 293
    .end local v1    # "b":Lc8/Seq;
    .end local v2    # "bundle":Lc8/hy;
    .end local v4    # "classloader":Ljava/lang/ClassLoader;
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v10    # "searchKey":Ljava/lang/String;
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 234
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 239
    :cond_1
    const-string/jumbo v1, "mzThemeColor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "attr"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    :cond_2
    sget-object v1, Lc8/xy;->AssetManager_getResourceIdentifier:Lc8/Dy;

    if-nez v1, :cond_3

    .line 245
    invoke-direct {p0, p1, p2, p3}, Lc8/wz;->getIdentifierWithRefection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 247
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lc8/wz;->getIdentifierWithRefection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 248
    .local v0, "resID":I
    goto :goto_0
.end method
