.class public final Lc8/JWf;
.super Ljava/lang/Object;
.source "NativeInvokeHelper.java"


# instance fields
.field private mInstanceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lc8/JWf;->mInstanceId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private prepareArguments([Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/JSONArray;)[Ljava/lang/Object;
    .locals 6
    .param p1, "paramClazzs"    # [Ljava/lang/reflect/Type;
    .param p2, "args"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    array-length v4, p1

    new-array v2, v4, [Ljava/lang/Object;

    .line 64
    .local v2, "params":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_5

    .line 65
    aget-object v1, p1, v0

    .line 66
    .local v1, "paramClazz":Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 64
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "[prepareArguments] method argument list not match."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 74
    :cond_1
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 76
    .local v3, "value":Ljava/lang/Object;
    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    if-ne v1, v4, :cond_2

    .line 77
    aput-object v3, v2, v0

    goto :goto_1

    .line 78
    :cond_2
    const-class v4, Lc8/EWf;

    if-ne v4, v1, :cond_4

    .line 79
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 80
    new-instance v4, Lc8/KWf;

    iget-object v5, p0, Lc8/JWf;->mInstanceId:Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {v4, v5, v3}, Lc8/KWf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v0

    goto :goto_1

    .line 82
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "Parameter type not match."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 85
    :cond_4
    invoke-static {v1, v3}, Lc8/ygg;->parseArgument(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v0

    goto :goto_1

    .line 88
    .end local v1    # "paramClazz":Ljava/lang/reflect/Type;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_5
    return-object v2
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Lc8/DWf;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "invoker"    # Lc8/DWf;
    .param p3, "args"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    invoke-interface {p2}, Lc8/DWf;->getParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lc8/JWf;->prepareArguments([Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/JSONArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 43
    .local v0, "params":[Ljava/lang/Object;
    invoke-interface {p2}, Lc8/DWf;->isRunOnUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    new-instance v2, Lc8/IWf;

    invoke-direct {v2, p0, p2, p1, v0}, Lc8/IWf;-><init>(Lc8/JWf;Lc8/DWf;Ljava/lang/Object;[Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lc8/pVf;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 57
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 55
    :cond_0
    invoke-interface {p2, p1, v0}, Lc8/DWf;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
