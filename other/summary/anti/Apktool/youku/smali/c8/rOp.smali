.class public Lc8/rOp;
.super Ljava/lang/Object;
.source "MtopInitTaskFactory.java"


# static fields
.field private static final INNER_MTOP_INIT_TASK:Ljava/lang/String; = "mtopsdk.mtop.global.init.InnerMtopInitTask"

.field private static final OPEN_MTOP_INIT_TASK:Ljava/lang/String; = "mtopsdk.mtop.global.init.OpenMtopInitTask"

.field private static final PRODUCT_MTOP_INIT_TASK:Ljava/lang/String; = "mtopsdk.mtop.global.init.ProductMtopInitTask"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopInitTaskFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getMtopInitTask(Ljava/lang/String;)Lc8/pOp;
    .locals 3
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 37
    const-string/jumbo v1, "mtopsdk.mtop.global.init.InnerMtopInitTask"

    invoke-static {v1}, Lc8/rOp;->newInstance(Ljava/lang/String;)Lc8/pOp;

    move-result-object v0

    .local v0, "initTask":Lc8/pOp;
    goto :goto_0

    .line 26
    .end local v0    # "initTask":Lc8/pOp;
    :sswitch_0
    const-string/jumbo v2, "INNER"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "OPEN"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "PRODUCT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 28
    :pswitch_0
    const-string/jumbo v1, "mtopsdk.mtop.global.init.InnerMtopInitTask"

    invoke-static {v1}, Lc8/rOp;->newInstance(Ljava/lang/String;)Lc8/pOp;

    move-result-object v0

    .line 29
    .restart local v0    # "initTask":Lc8/pOp;
    goto :goto_0

    .line 31
    .end local v0    # "initTask":Lc8/pOp;
    :pswitch_1
    const-string/jumbo v1, "mtopsdk.mtop.global.init.OpenMtopInitTask"

    invoke-static {v1}, Lc8/rOp;->newInstance(Ljava/lang/String;)Lc8/pOp;

    move-result-object v0

    .line 32
    .restart local v0    # "initTask":Lc8/pOp;
    goto :goto_0

    .line 34
    .end local v0    # "initTask":Lc8/pOp;
    :pswitch_2
    const-string/jumbo v1, "mtopsdk.mtop.global.init.ProductMtopInitTask"

    invoke-static {v1}, Lc8/rOp;->newInstance(Ljava/lang/String;)Lc8/pOp;

    move-result-object v0

    .line 35
    .restart local v0    # "initTask":Lc8/pOp;
    goto :goto_0

    .line 26
    :sswitch_data_0
    .sparse-switch
        0x251e4a -> :sswitch_1
        0x4295636 -> :sswitch_0
        0x185958cf -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static newInstance(Ljava/lang/String;)Lc8/pOp;
    .locals 7
    .param p0, "clazzName"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v3, 0x0

    .line 47
    .local v3, "initTask":Lc8/pOp;
    :try_start_0
    invoke-static {p0}, Lc8/rOp;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 48
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 49
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 50
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lc8/pOp;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v3

    .line 52
    :catch_0
    move-exception v4

    const-string/jumbo v4, "mtopsdk.MtopInitTaskFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reflect IMtopInitTask instance error.clazzName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
